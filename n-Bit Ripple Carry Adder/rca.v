module rca #(parameter width = 64) (
    output CARRY,
    output [width-1:0] SUM,
    input [width-1:0] a, b,
    input c
    );
    
    wire [width:0] C;
    
    assign CARRY = C[width];
    assign C[0] = c;
    
    genvar i;
    generate for (i = 0 ; i < width ; i = i + 1) begin: rca_fa
        fa u (CARRY[i+1], SUM[i], a[i], b[i], CARRY[i]);
    end
    endgenerate
    
endmodule
