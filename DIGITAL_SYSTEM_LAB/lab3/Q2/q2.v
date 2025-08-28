module q2(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(~b&~d)|(~a&~b&~c)|(~b&~c&d);
endmodule
