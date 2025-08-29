`include "fulladder.v"

module q1_tb();
	reg a, b, cin;
	wire sum, cout;
	
	fulladder fa(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
	
	initial begin
		$dumpfile("fulladder.vcd");
		$dumpvars(0, q1_tb);
		
		a=0;b=0;cin=0;#10;
		a=0;b=0;cin=1;#10;
		a=0;b=1;cin=0;#10;
		a=0;b=1;cin=1;#10;
		a=1;b=0;cin=0;#10;
		a=1;b=0;cin=1;#10;
		a=1;b=1;cin=0;#10;
		a=1;b=1;cin=1;#10;
		
	end
endmodule
