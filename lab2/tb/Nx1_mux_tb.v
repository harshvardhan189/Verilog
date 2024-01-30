module Nx1_mux_tb();
parameter n = 2;
	reg [(2**n)-1:0]i;
	reg [(n-1):0]s;
	wire y;

	integer k;

	Nx1_mux DUT(.i(i),.s(s),.y(y));

	

	initial
		begin
			for(k=0;k<(2**((2**n)+n));k=k+1)
			begin
			{i,s}=k;
			#10;
		end
	end
endmodule
