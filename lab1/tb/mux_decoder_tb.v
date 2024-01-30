module mux_decoder_tb();
	reg [1:0]s;
	reg [3:0]i;
	wire x;
	integer k,j;

	mux_decoder dut(.s(s),.i(i),.x(x));
	initial 
		begin 
			for(k=0;k<2;k=k+1)
			begin
				s=k;
				for(j=0;j<4;j=j+1)
				begin 
					i=j;
					#10;
				end
			end
		end
endmodule
