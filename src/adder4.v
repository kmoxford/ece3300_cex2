`timescale 1ns / 1ps
//
//  Add code inside the adder4 module to implement a four-bit adder, using
//   four instances of the one-bit full adder module "fulladd".
//
//  The github tests will test the output of your code.
//  If it passes, you will see a green check mark at the top of the repository.
//

module adder4(
	      input [3:0]      a,
	      input [3:0]      b,
	      output [4:0] result);
	
	wire [2:0] carry;
   
// add your code here -- you must use four instances of the full adder "fulladd", defined below
	fulladd v1 (a[0], b[0], 1'b0, result[0], carry[0]);
	fulladd v2 (a[1], b[1], carry[0], result[1], carry[1]);
	fulladd v3 (a[2], b[2], carry[1], result[2], carry[2]);
	fulladd v4 (a[3], b[3], carry[2], result[3], result[4]);

endmodule

module fulladd(
	       input  x,
	       input  y,
	       input  cin,
	       output sum,
	       output cout);

   assign sum = x ^ y ^ cin;
   assign cout = (x & y) | (x & cin) | (y & cin);
   
endmodule

