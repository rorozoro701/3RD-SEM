module q2b(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
nand(p,a,b);
xor(f,d,p,c);
nor(g,c,b,d);
endmodule
