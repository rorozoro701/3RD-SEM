module q3(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(a&b&d)|(b&c&d)|(a&c&d)|(a&b&c);
endmodule
