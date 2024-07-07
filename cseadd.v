module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    
    wire [15:0] out1,out2;
    
    add16 a1(.a(a[15:0]),.b(b[15:0]), .cin(1'b0), .sum(sum[15:0]),.cout(sel));
    
    add16 a2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(out1[15:0]));
    add16 a3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(out2[15:0]));
    assign sum [31:16] = (sel)? out2:out1;
    
    


    

endmodule

