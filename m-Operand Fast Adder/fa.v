`timescale 1ns / 1ps

module fa (
    output C, S,
    input a, b, c
    );
    
    assign S = (a ^ b ^ c);
    assign C = ((a & b) | (b & c) | (c & a));
    
    
endmodule
