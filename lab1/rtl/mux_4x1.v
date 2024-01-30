module mux_4x1(a,b,c,d,s1,s2,y);
	input a,b,c,d,s1,s2;
	output y;
	wire w1,w2;

	mux_2x1 m1(.a(a),.b(b),.s(s1),.y(w1));
	mux_2x1 m2(.a(c),.b(d),.s(s1),.y(w2));
	mux_2x1 m3(.a(w1),.b(w2),.s(s2),.y(y));

endmodule
	
