`timescale 1ns / 1ps


module AndModule(
    input CLK100MHZ,
    input a,
    input b,
    output out
    );
    assign out = a&b ;
    
endmodule
