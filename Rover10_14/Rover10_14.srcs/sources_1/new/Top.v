`timescale 1ns / 1ps

module Top(
    input CLK100MHZ, reset,
    input [15:0] sw,  //the 4 inputs for each display
    input left,
    //input innerLeft,
    //input innerRight,
    input right,
    input outerRight,
    input center,
    input Sensor,
    input rgbWave,
    output rgbS0,rgbS1,rgbS2,rgbS3,
    //output [6:0] JC,   //output to H-Bridge
    output enableA, directionPinAF, directionPinAB,
    output enableB,directionPinBF,directionPinBB,
    
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] an,   // Annodes from the constriants file
    output [15:0] LED
 );

reg [20:0] maxValue = 200000;   //Max counter value
reg [18:0] highSpeed = 150000;
reg [18:0] lowSpeed =  90000;
reg [18:0] RFC = 0; //  Red Frequency Counter during Red Filter
reg [18:0] GFC = 0; // Green Frequency Counter during Green Filter
reg [18:0] BFC = 0; // Blue Frequency Counter during Blue Filter
reg [2:0]  rgb = 0; // Output of RGB function 
reg [18:0] counter = 0;        //Counter for this project
reg [18:0] clockCounter = 0;    // For RBG Method
reg [18:0] rightSpeed = 150000;
reg [18:0] rightDirection;
reg [18:0] leftSpeed = 150000;
reg [18:0] leftDirection;

reg [18:0] slowPwm;
reg [18:0] fastPwm;

reg [1:0] pitState = 0;
reg [3:0] breakOut = 0;
reg [1:0] previousState = 1;
reg [1:0] regularState = 1;

reg [1:0] temp0 = 0;
reg [1:0] temp1 = 0;
reg [1:0] temp2 = 0;
reg [1:0] temp3 = 0;


always@(posedge CLK100MHZ)begin //clock
    if (counter <maxValue) //count until 100
        counter <=counter+1; 
    else
        counter <= 0; //reset counter              
end      
/*
always@(posedge CLK100MHZ)begin 
    switch
              
end  
*/
////////////////////////////////////////////////////////////////////////////////////////////////////
/*  S2 S3         ~~ TCS3200 RGB Sensor ~~             // Detecting Red Green Blue//
/*  L  L  RED  
    L  H  BLUE  
    H  L  Clear (no filter)  
    H  H  GREEN */

task setRedFilter(); // Set S2 and S3 to Low
    begin
         temp2 = 0;
         temp3 = 0;
    end
endtask
task setGreenFilter(); // Set S2 and S3 High
    begin
         temp2 = 1;
         temp3 = 1;
    end
endtask
task setBlueFilter(); // Set S2 to Low, S3 to High
    begin
         temp2 = 0;
         temp3 = 1;
    end
endtask
task setScaling(); // Sets Scaling to 100%
    begin
        temp0 = 1;
        temp1  = 1;
    end
endtask
function [2:0] RGB      // Red = 1, Green = 2, Blue = 3
    input [18:0] RFC,GFC,BFC;
    begin
        if(RFC > GFC && RFC > BFC)
            RGB = 1
        else if (GFC > BFC && GFC > RFC)
            RGB = 2
        else 
            RGB = 3
    end
endfunction

always@(posedge CLK100MHZ)
begin
    clockCounter += 1;
    if(clockCounter >= 1500)
        begin
            rgb = RGB (RFC,GFC,BFC);
            assign LED[13] = (rgb == 1 )? 1:0;
            assign LED[14] = (rgb == 2 )? 1:0;
            assign LED[15] = (rgb == 3 )? 1:0;
            clockCounter = 0;
            RFC = 0;
            GFC = 0;
            BFC = 0;
        end
        
    always@(posedge rgbWave )begin 
        if(clockCounter<500)
            begin
                setRedFilter();
                RFC += 1;
            end
        else if(clockCounter < 1000)
            begin
                setGreenFilter();
                GFC += 1;
            end
        else 
            begin
                setBlueFilter();
                BFC +=1;
            end
        
    end
              
end  

task TurnLeft();
    begin
    leftDirection <= 0;
    rightDirection <= 1;
    end
endtask

task TurnRight();
    begin
    leftDirection <= 1;
    rightDirection <= 0;
    end
endtask

task GoStraight();
    begin
    leftDirection <= 1;
    rightDirection <= 1;
    end
endtask

always@(posedge CLK100MHZ)begin //clock
    if(outerRight==0)
        pitState=1;
        
    if(pitState==1)begin   
        if(center != regularState )begin
            regularState= center;
            breakOut=breakOut+1;
        end                
    end    
    if(breakOut==2)begin
        pitState=0;
        breakOut=0;
    end
///////////////////////////////////////////////////////////////////////////////////////////
//create a module for the turns
    if(pitState==0)begin
       if(left == 0 && center ==1 && right==1  )begin           //Turn Left
            TurnLeft();
            newState=0;
            rightSpeed=highSpeed;
            leftSpeed= highSpeed;
       end else if(left == 0 && center ==0 && right==1 ) begin //TurnLeft
            if(newState == 1)begin
                TurnRight();
           end else begin
               TurnLeft(); 
           end   
       end else if(left == 1 && center ==0 && right==0   ) begin //straight
            GoStraight();        
       end else if(left == 1 && center ==1 && right==0   ) begin //Turn Right
            TurnRight();
       end else if(left == 0 && center ==0 && right==0  ) begin //TurnRight 
            TurnRight();  
            newState=1;//change to left state
            rightSpeed=lowSpeed;
            leftSpeed= maxValue;
       end else begin
           GoStraight();
       end     
    end else begin
      TurnRight();
      
    end
              
              
       // leftDirection=1;
        //rightDirection=1;   
end     

////////////////////////////////////////////////////////////////////////////////////////////////////////
    //left      enable A        Left    enableA     Right       EnableA
    assign enableA = ( sw[0]==1 && counter < leftSpeed) ? 1:0;      //JC[4] enableA
    assign LED[15] = (~left )? 1:0;
    assign LED[9] =(~center) ? 1:0;
    assign directionPinAF= (~(leftDirection==1)) ? 1:0;                 //JC[6] forward
    assign directionPinAB= (leftDirection==1) ? 1:0;                  //JC[5] Backward
 
    //right     enable B        right       //enableB  Right enableB   Right
    assign enableB = (  sw[0]==1 && counter < rightSpeed) ? 1:0;     //JC[0] //enableB  
    assign LED[3] = (~right )? 1:0; 
    assign LED[0] = (~outerRight )? 1:0;   
    assign directionPinBF= ( ~(rightDirection==1)) ? 1:0;                //JC[1]   Forward
    assign directionPinBB= (rightDirection==1) ? 1:0;                 // JC[2]   Backward
    
    assign LED[10] = (pitState==1 )? 1:0;
    assign LED[11] =(regularState) ? 1:0;
    assign LED[12] =(previousState) ? 1:0;
    assign LED[13] =(breakOut==1) ? 1:0;
    
    assign rgbS1 = temp1;
    assign rgbS2 = temp2;
    assign rgbS3 = temp3;
    ////////////////////RGBRGBRGB
    
    
endmodule