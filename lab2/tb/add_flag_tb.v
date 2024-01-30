module add_flag_tb();
	reg [3:0] a,b;
	wire[4:0] y;
	wire flag;

	add_flag DUT(a,b,y,flag);

	initial
		begin
		a=4'b1000; b=4'1010;
		#10;
		a=4'b0011; b=4'1110;
		#10;
		a=4'0000; b=4'b0000;
		#10;

		end
endmodule
