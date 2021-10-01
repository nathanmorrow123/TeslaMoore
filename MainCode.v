`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 09/07/2021 10:25:02 PM
// Design Name: 
// Module Name: Pwm4Source
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//this
module Pwm4Source(
input CLK100MHZ,
    input [8:0] sw,
    output [6:0] JC,
    output [15:0] LED
    );
    
reg [17:0] counter =0;
always@(posedge CLK100MHZ)begin

    if (counter <200000) //count until 100
        counter <=counter+1; 
    else
        counter <=0;//reset counter     
            
end        

//new test test
/*
always@(posedge CLK100MHZ)begin

    if (sw[6] ==1 && sw[7]==1) //count until 100
        speed =1; 
    else if(sw[6] ==0 && sw[7]==1)
        speed =1/3;//reset counter      
end    
*/
//output is led, and input is constraint_mode
    //enable A
   // not pinBox1 (JC[0],LED1, ~sw[0]);
    //enable B
    //not pinBox2 (JC[4],LED2, ~sw[1]);
    
    not pinBox3 (JC[1],LED3, ~sw[2]);
 
    not pinBox4 (JC[2],LED4, sw[2]);

    not pinBox5 (JC[5],LED5, ~sw[4]);

    not pinBox6 (JC[6],LED6, sw[4]);
    
    //if (speed ==1) //count until 100
    assign JC[0] = (sw[0]&& ( ((sw[6])&&counter <50000)||((~sw[6]) && counter <150000) ) ) ? 1:0; //back right // minimum speed of 7
    //assign JC[0]=(counter <25000)? 1:0;
    //assign JC[4]=(counter <90000)? 1:0;
    assign JC[4] = (sw[1]&& ((sw[5]&&counter <50000)||(~sw[5] && counter <150000))) ? 1:0;
    //assign JC[4] = (counter <75) ? 1:0; 
    
assign LED [12]=(counter <50000) ? 1:0;         //25%
   
assign LED [13]=(counter <100000) ? 1:0; //50% duty clock

assign LED [14]=(counter <150000) ? 1:0; //75% duty clock
    
assign LED [15]=(counter <200000) ? 1:0; //100% duty clock

endmodule
