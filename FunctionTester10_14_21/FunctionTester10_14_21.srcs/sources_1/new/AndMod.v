`timescale 1ns / 1ps


module AndMod(
    input valOne, 
    input valTwo,
    output out
    );
    
    assign out = valOne &valTwo ;
endmodule
