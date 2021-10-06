`timescale 1ns / 1ps

module Top(
   input CLK100MHZ, reset,
    input [15:0] sw,  //the 4 inputs for each display
    input outerLeft,
    //input innerLeft,
    //input innerRight,
    input outerRight,
    input Sensor,
    //output [6:0] JC,   //output to H-Bridge
    output enableA, directionPinAF, directionPinAB,
    output enableB,directionPinBF,directionPinBB,
    
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] an,   // Annodes from the constriants file
    output [15:0] LED
 );

reg [20:0] maxValue = 150000;   //Max counter value
reg [18:0] lowSpeed = 90000;

reg [18:0] counter =0;        //Counter for this project

reg [18:0] rightPWM;
reg [18:0] rightDirection;
reg [18:0] leftPWM;
reg [18:0] leftDirection;

reg [18:0] slowPwm;
reg [18:0] fastPwm;


always@(posedge CLK100MHZ)begin //clock
    if (counter <maxValue) //count until 100
        counter <=counter+1; 
    else
        counter <=0; //reset counter              
end      
/*
always@(posedge CLK100MHZ)begin 
    switch
              
end  
*/
always@(posedge CLK100MHZ)begin //clock

   if(outerLeft == 0 && outerRight==1)begin
       // leftPWM <= 200000;
        leftDirection <= 0;
        rightDirection <= 1;
   end else if(outerLeft == 1 && outerRight==0) begin
       leftDirection <= 1;
        rightDirection <= 0;
   end else begin
        leftDirection=1;
        rightDirection=1; 
   end
              
       // leftDirection=1;
        //rightDirection=1;   
end     

////////////////////////////////////////////////////////////////////////////////////////////////////////
    //left      enable A        Left
    assign enableA = ( counter < lowSpeed) ? 1:0;      //JC[4] enableA
    //not leftLed (LED[14], outerLeft );                          //enableA
    assign LED[14] = (~outerLeft )? 1:0;
    
    assign directionPinAF= (~(leftDirection==1)) ? 1:0;                 //JC[6] forward
    assign directionPinAB= (leftDirection==1) ? 1:0;                  //JC[5] Backward
    
 
    //right     enable B        right
    assign enableB = ( counter < lowSpeed) ? 1:0;     //JC[0]
    //not rightLed (LED[1], outerRight );                         //enableB  
    assign LED[1] = (~outerRight )? 1:0;   
    assign directionPinBF= ( ~(rightDirection==1)) ? 1:0;                //JC[1]   Forward
    assign directionPinBB= (rightDirection==1) ? 1:0;                 // JC[2]   Backward
    
endmodule