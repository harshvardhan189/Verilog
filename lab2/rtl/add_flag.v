module add_flag(a,b,y,flag);
	input[3:0]a,b;
	output [4:0]y;
	output flag;

	assign y = a+b;
	assign flag = ~|y;
endmodule
