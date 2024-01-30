module t_ff(input clock,reset,t,output Q_out,output Qb_out);
wire w1;

xor r1(w1,Q_out,t);

d_ff d1(.clock(clock),.reset(reset),.d_in(w1),.Q_out(Q_out),.Qb_out(Qb_out));

endmodule

