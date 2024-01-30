module one_bit_comp_tb();
	reg a,b;
	wire g,eq,l;
	integer i;

	one_bit_comp c1(.a(a), .b(b), .g(g), .eq(eq), .l(l));
	initial 
		begin
			for(i=0;i<4;i=i+1)
				begin
				{a,b}=i;
				#10;
				end
		end
	initial
	$monitor("a=%b;b=%b;g=%b;eq=%b;l=%b",a,b,g,eq,l);

endmodule
