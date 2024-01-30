module mux2x1_cond_tb();
	reg [1:0]i;
	reg s;
	wire y;
	integer j;
	mux2x1_cond DUT(.i(i),.s(s),.y(y));
	

	initial
		begin
			for(j=0;j<4;j=j+1)
			begin 
			{i,s}=j;
			#10;
			end
		end
endmodule

