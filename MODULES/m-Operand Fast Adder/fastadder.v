`timescale 1ns / 1ps

module fastadder #(m = 5, n = 64) (
    output C,
    output [n-1:0] S,
    input [(m * n)-1:0] x,
    input c
    );
    
    wire [((m - 2) * n)-1:0] CARRY, SUM;
    
    genvar i;
    generate
        csa u1 (CARRY[n-1:0], SUM[n-1:0], x[n-1:0], x[n+:n], x[(2*n)+:n]);
        
        for (i = 1 ; i <= m - 3 ; i = i + 1) begin: cascade_csa
            csa #(n) u2 (CARRY[(n*i)+:n], SUM[(n*i)+:n], {CARRY[(n*(i-1))+:(n-1)], 1'b0}, SUM[(n*(i-1))+:n], x[(n*(i+2))+:n]);
        end
        
        cpa #(n) u3 (C, S, {CARRY[(n*(m-3))+:(n-1)], 1'b0}, SUM[(n*(m-3))+:n], c);
    endgenerate
endmodule
