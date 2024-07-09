module top_module( 
    input [99:0] in,
    output [99:0] out
);
    int n= 0;
    always @(*) begin
        for (n=0; n<=99; n=n+1)begin 
            out[n] = in[99-n];
        end

    end 
endmodule

