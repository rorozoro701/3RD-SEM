module q2(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(~b&d)|(~b&c)|(b&(~c)&~d);
endmodule
