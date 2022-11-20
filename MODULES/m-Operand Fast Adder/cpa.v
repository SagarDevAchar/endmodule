`timescale 1ns / 1ps

module cpa #(parameter width = 64) (
    output C,
    output [width-1:0] S,
    input [width-1:0] a, b,
    input c
    );
    
    wire [width:0] CARRY;
    
    assign C = CARRY[width];
    assign CARRY[0] = c;
    
    genvar i;
    generate for (i = 0 ; i < width ; i = i + 1) begin: rca_fa
        fa u (CARRY[i+1], S[i], a[i], b[i], CARRY[i]);
    end
    endgenerate
endmodule
