module mux_2x1(s,a,b,y);
	input a,b,s;
	output y;
	assign y=(~s&a)|(s&b);
endmodule
