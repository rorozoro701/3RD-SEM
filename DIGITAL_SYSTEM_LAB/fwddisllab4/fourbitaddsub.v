module fourbitaddsub(a, b, mode, sum, cout);
	input [3:0] a, b;
	input mode;
	output [3:0] sum;
	output cout;
	
	wire [3:0] b_xor;
	assign b_xor = b^{4{mode}};
	
	assign {cout, sum} = a+b_xor+mode;
endmodule
