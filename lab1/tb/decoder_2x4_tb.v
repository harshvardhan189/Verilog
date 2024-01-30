module decoder_2x4_tb();
	reg [1:0]i;
	wire [3:0]y;
	integer n;
	decoder_2x4 d1(.i(i),.y(y));
	initial 
		begin 
			for(n=0;n<4;n=n+1)
			begin 
			{i}=n;
			#10;
			end
		end
	initial
	$monitor("i=%b,y=%b",i,y);
endmodule
