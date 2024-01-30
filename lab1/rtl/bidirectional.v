module bidirectional(c,a,b);
	inout a,b;
	input c;

	bufif1  b1(b,a,c);
	bufif0  b2(a,b,c);

endmodule
