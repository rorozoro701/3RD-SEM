`include "multiplier.v"
module q3_tb;
    reg [1:0] a, b;
    wire [3:0] product;

    multiplier M(.a(a), .b(b), .product(product));

    initial begin
        $dumpfile("multiplier.vcd");       
        $dumpvars(0, q3_tb);         

        a = 2'b10; b = 2'b11; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b11; b = 2'b11; #10;
        a = 2'b01; b = 2'b10; #10;

        $finish;
    end
endmodule


