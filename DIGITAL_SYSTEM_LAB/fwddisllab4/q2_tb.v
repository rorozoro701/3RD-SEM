`include "fourbitaddsub.v"

module q2_tb();
    reg [3:0] a, b;
    reg mode;
    wire [3:0] sum;
    wire cout;
    
    fourbitaddsub AS(.a(a), .b(b), .mode(mode), .sum(sum), .cout(cout));
    
    initial begin
        $dumpfile("fourbitaddsub.vcd");
        $dumpvars(0, q2_tb);

        a = 4'b1010; b = 4'b0010; mode = 0; #10;
        a = 4'b1010; b = 4'b0001; mode = 1; #10;
        a = 4'b1000; b = 4'b1011; mode = 1; #10;

        $finish;
    end
endmodule

