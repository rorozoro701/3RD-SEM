`include "halfadder.v"

module multiplier(a, b, product);
    input [1:0] a, b;
    output [3:0] product;
    
    wire p0, p1, p2, p3;
    wire s1, c1, c2;
    
    assign p0 = a[0] & b[0];
    assign p1 = a[1] & b[0];
    assign p2 = a[0] & b[1];
    assign p3 = a[1] & b[1];
    
    halfadder HA1(.a(p1), .b(p2), .sum(s1), .carry(c1));
    halfadder HA2(.a(c1), .b(p3), .sum(product[2]), .carry(c2));
    
    assign product[0] = p0;
    assign product[1] = s1;
    assign product[3] = c2;
    
endmodule

