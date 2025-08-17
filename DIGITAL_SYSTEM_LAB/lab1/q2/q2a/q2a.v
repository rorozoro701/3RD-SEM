module q2a(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
assign f=(~(a&b)^d^c);
assign g=(~(d|b|c));
endmodule
