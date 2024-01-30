module mux_2x1_tb();
	reg a,b,s;
	wire y;
	integer i;
	mux_2x1 m1(.a(a),.b(b),.s(s),.y(y));
	initial
		begin
		for(i=0;i<8;i=i+1)
			begin
			{a,b,s}=i;
			#10;
			end
		end
	initial
	$monitor("a=%b,b=%b,s=%b,y=%b",a,b,s,y);
endmodule
