module top_module (
  input  logic [31:0] a, b,
  output logic [31:0] sum );
  // Define internal logic
  logic cout_low;
  logic [15:0] sum_high, sum_low;
    
  // Module instantiations
  add16 add16_low_i (
    .a    (a[15:0]),
    .b    (b[15:0]),
    .cin  ('0),
    .sum  (sum_low),
    .cout (cout_low) );
  add16 add16_high_i (
    .a    (a[31:16]),
    .b    (b[31:16]),
    .cin  (cout_low),
    .sum  (sum_high),
    .cout () );
  // Assign output logic
  assign sum = {sum_high, sum_low};
    
endmodule : top_module

module add1 ( 
  input  logic a, b, 
  input  logic cin,   
  output logic sum, 
  output logic cout );
  // Full adder module here
  assign sum  = a ^ b ^ cin;
  assign cout = ( a & b ) | ( a & cin ) | ( b & cin );
endmodule : add1
