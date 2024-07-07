module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin1, cin2;
    assign cin1 = 1'b0;

    add16 ad1( .a(a[15:0]), .b(b[15:0]), .cin(cin1), .sum(sum[15:0]), .cout(cin2));
    add16 ad2( .a(a[31:16]), .b(b[31:16]), .cin(cin2), .sum(sum[31:16]));
    
endmodule

