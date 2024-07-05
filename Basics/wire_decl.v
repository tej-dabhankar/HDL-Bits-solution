`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire m,n,p;
    
    and (m,a,b);
    and (n,c,d);
    or (p,m,n);
    
    assign out = p;
    assign out_n = ~p;

endmodule
