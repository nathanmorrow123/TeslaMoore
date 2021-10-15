`timescale 1ns / 1ps

module InvertedMod(
    input value,
    output out
    );
    assign out = ~value;
endmodule
