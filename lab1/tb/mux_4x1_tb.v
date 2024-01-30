module mux_4x1_tb();
	reg a,b,c,d,s1,s2;
	wire y;
	integer i;
	mux_4x1 d1(.a(a),.b(b),.c(c),.d(d),.s1(s1),.s2(s2),.y(y));
	initial begin
		for(i=0;i<16;i=i+1)
		begin
		{a,b,c,d,s1,s2}=i;
		#10;
		end
		end
	initial
	$moniter("a=%b,b=%b,c=%c,d=%d,s1=%s1,s2=%s2,y=%y",a,b,c,d,s1,s2,y);
	endmodule
