`timescale 1ns / 1ps
module Top(
    input CLK100MHZ, reset,
    input [15:0] sw,
    output [15:0] LED
    );
 reg [2:0] AndValue;
 reg [2:0] InvertedValue;
 wire PassThroughVal;
 wire ledWire;
 
 //modulename randomName (input1, input2, Output )
 AndMod mod1(sw[0],sw[1], LED[2]); //outPuts straight to an LED
 
 //Calling the module without creating a new one  
 AndMod(sw[0],sw[1], PassThroughVal); //outputs to a wire variable
 InvertedMod(PassThroughVal,ledWire );     //outputs to a wire variable

assign LED[5]=   ledWire;  //sets LED[5] to the wire variable value

endmodule
