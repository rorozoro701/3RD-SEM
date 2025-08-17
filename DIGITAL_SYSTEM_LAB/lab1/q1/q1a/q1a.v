module q1a(a,b,c,d,f);
input a,b,c,d;
output f;
and(andab_op,a,b);
or(orc_op,andab_op,c);
not(not_op,orc_op);
and(and_out,not_op,d);
or(or_op,andab_op,d);
and(f,and_out,or_op);
endmodule
