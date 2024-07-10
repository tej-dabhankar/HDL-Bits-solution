module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
	
    integer range;
    wire [7:0]con1; 
    
    always @ (*) begin
        range = sel;
 
        out  = in[sel*4 +:4]; //vector[LSB+:width]
        
    end
endmodule
