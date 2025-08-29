module bcdadder(
	input [3:0] a, b,
	input cin,
	output [3:0] sum,
	output cout);
	
	wire [4:0] temp_sum;
	assign temp_sum = a+b+cin;
	assign {cout, sum} = (temp_sum>9)?(temp_sum+6):temp_sum;
	
endmodule

