`timescale 1ns / 1ps

module Top(
    input CLK100MHZ, reset,
    input [15:0] sw,  //the 4 inputs for each display
    input left,
    input [7:0] JB,
    //input innerLeft,
    //input innerRight,
    input right,
    input outerRight,
    input center,
    input Sensor,
    //output [6:0] JC,   //output to H-Bridge
    output enableA, directionPinAF, directionPinAB,
    output enableB,directionPinBF,directionPinBB,
    
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] an,   // Annodes from the constriants file
    output [15:0] LED
 );

reg [20:0] maxValue = 200000;   //Max counter value
reg [18:0] highSpeed =150000;
reg [18:0] lowSpeed =  90000;

reg [18:0] counter =0;        //Counter for this project

reg [18:0] rightSpeed=150000;
reg [18:0] rightDirection;
reg [18:0] leftSpeed =150000;
reg [18:0] leftDirection;

reg [18:0] slowPwm;
reg [18:0] fastPwm;

reg [1:0] onState=0;
reg [3:0] stopState=0;


reg [1:0] pitState=0;
reg [3:0] breakOut=0;
reg [1:0] previousState=1;
reg [1:0] regularState=1;

reg [1:0] newState=0;
always@(posedge CLK100MHZ)begin //clock
    if (counter <maxValue) //count until 100
        counter <=counter+1; 
    else
        counter <=0; //reset counter    
   
               
   //stopState
 if(JB[7]==0)
    onState=0;
 else
    onState=1;
        
end   

/*
always@(posedge CLK100MHZ)begin 
    switch
              
end  
*/

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
//////////////////////////////////////////////////##################################
//////////////////////////////////////////////////##################################
//////////////////////////////////////////////////##################################
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
//////////////////////////////////////////////////##################################
//////////////////////////////////////////////////##################################
////////////////////////////////////////////////////////////////////////////////////////////////////////
    //left      enable A        Left    enableA     Right       EnableA
    assign enableA = ( (onState==1 &&sw[0]==1) && counter < leftSpeed) ? 1:0;      //JC[4] enableA
    assign LED[15] = (~left )? 1:0;
    assign LED[9] =(~center) ? 1:0;
    assign directionPinAF= (~(leftDirection==1)) ? 1:0;                 //JC[6] forward
    assign directionPinAB= (leftDirection==1) ? 1:0;                  //JC[5] Backward
 
    //right     enable B        right       //enableB  Right enableB   Right
    assign enableB = ( (onState==1 &&sw[0]==1) && counter < rightSpeed) ? 1:0;     //JC[0] //enableB  
    assign LED[3] = (~right )? 1:0; 
    assign LED[0] = (~outerRight )? 1:0;   
    assign directionPinBF= ( ~(rightDirection==1)) ? 1:0;                //JC[1]   Forward
    assign directionPinBB= (rightDirection==1) ? 1:0;                 // JC[2]   Backward
    
    assign LED[10] = (pitState==1 )? 1:0;
    assign LED[11] =(regularState) ? 1:0;
    assign LED[12] =(previousState) ? 1:0;
    assign LED[13] =(breakOut==1) ? 1:0;
endmodule