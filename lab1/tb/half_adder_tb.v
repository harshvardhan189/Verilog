
module half_adder_tb();
	reg a,b;
	wire s,c;
	half_adder h1(.a(a),.b(b),.s(s),.c(c));
	initial begin
	a=0; b=0;
	#10;
	a=0; b=1;
	#10;
	a=1; b=0;
	#10;
	a=1; b=1;

	end

	

endmodule
