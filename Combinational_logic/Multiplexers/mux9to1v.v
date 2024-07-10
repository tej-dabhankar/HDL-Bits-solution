module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    
    always @(*) begin
        case(sel)
            4'h00 : out =a;
            4'h01 : out =b;
			4'h02 : out =c;
			4'h03 : out =d;
			4'h04 : out =e;
			4'h05 : out =f;
			4'h06 : out =g;
			4'h07 : out =h;
			4'h08 : out =i;
			default : out =16'hffff;
        endcase
    end

endmodule

