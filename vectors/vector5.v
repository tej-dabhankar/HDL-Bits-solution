module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    wire [24:0] out1,out2;

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    assign out1 = {{5{~a}},{5{~b}},{5{~c}},{5{~d}},{5{~e}}};
        assign out2 = { {5{a,b,c,d,e}}};
    	assign out = out1 ^ out2;

endmodule

