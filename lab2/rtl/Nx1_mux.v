module Nx1_mux #(parameter n = 2)(input [(2**n)-1:0]i,
				input [(n-1):0]s,output reg y);

			
		assign y = i[s];	



endmodule
