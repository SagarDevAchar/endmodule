`timescale 1ns / 1ps

module csa #(parameter width = 64) (
    output [width-1:0] C, S,
    input [width-1:0] x, y, z
    );
    
    genvar i;
    generate for (i = 0 ; i < width ; i = i + 1) begin: csa_fa
        fa u (C[i], S[i], x[i], y[i], z[i]);
    end
    endgenerate
endmodule
