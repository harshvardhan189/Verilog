module dec_parameterize_tb();
	parameter n=3;
	reg [(n-1):0]i;eeee
	wire  [((2**n)-1):0]y;
	

	integer  j;e

	dec_parameterize DUT(i,y);

	initial
		begin
			for(j=0;j<(2**n);j=j+1)
			begin
			{i}=j;
			#5;
			end
		end
endmodule
