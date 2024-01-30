module datatypes_tb();
	reg a,b,c;
	wire y;
	 datatypes DUT(a,b,c,y);
	 initial
	 	begin 
		{a,b,c}=3'b110;
		#10;
		{a,b,c}=3'b1x0;
		#10;
		{a,b,c}=3'b1z0;
		#10;
		{a,b,c}=3'b1zx;
		#10;
		
		end
		initial
			$monitor("a=%b,b=%b,c=%b,y=%b",a,b,c,y);
endmodule
