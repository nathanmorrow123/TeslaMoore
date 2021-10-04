`timescale 1ns / 1ps

module Top(
   
    input CLK100MHZ, reset,
    input [15:0] sw,  //the 4 inputs for each display
    input outerLeft,
    //input innerLeft,
    //input innerRight,
    input outerRight,
    input Sensor,
    output [6:0] JC,   //output to H-Bridge
    output a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
    output [3:0] an,   // Annodes from the constriants file
    output [15:0] LED
 );

reg [17:0] counter =0;        //Counter for this project
reg [17:0] rightPwm;
reg [17:0] leftPwm;
reg [17:0] slowPwm;
reg [17:0] fastPwm;



always@(posedge CLK100MHZ)begin //clock
    if (counter <200000) //count until 100
        counter <=counter+1; 
    else
        counter <=0; //reset counter              
end      
/*
always@(posedge CLK100MHZ)begin //clock
   if(outerLeft == 0 )begin
    slowPwm <= 200000;
   end
   if(outerRight == 0)begin
    slowPwm <= 200000;
   end
                 
end     
*/
////////////////////////////////////////////////////////////////////////////////////////////////////////
    //left      enable A
    assign JC[4] = (Sensor && counter <80000) ? 1:0; //enableA
    not leftLed (LED[14], outerLeft );  //enableA
    not leftBackward (JC[5], ~(outerLeft==1 )); //Backward
    not leftForward (JC[6],LED[15], (outerLeft==1 ));         //forward
    
    //right     enable B
    assign JC[0] = ( Sensor && counter <80000 ) ? 1:0;
    not rightLed (LED[1], outerRight );  //enableA     
    not rightForward (JC[1], (outerRight==1) );         //Backward
    not rightBackward (JC[2],LED[0], ~(outerRight==1)  ); //forward
    
   
endmodule