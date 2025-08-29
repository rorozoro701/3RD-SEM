`include "bcdadder.v"
module q4_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    bcdadder BCD(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("bcdadder.vcd");
        $dumpvars(0, q4_tb);

        a = 4'b1000; b = 4'b0010; cin = 0; #10;  
        a = 4'b0010; b = 4'b0100; cin = 0; #10;  

        $finish;
    end
endmodule

		
