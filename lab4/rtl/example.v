module example;
	reg[3:0]a=4'b110x;
	reg[1:0]y;
	wire[1:0]z;
	initial
		begin
		if(a==4'b110)
			y=2'b10;
			else
			y=2'b11;
		end
	assign z=(a==4'b1100)?2'b10:2'b11;
	initial
	$monitor($time,"y=%b,z=%b",y,z);
endmodule
