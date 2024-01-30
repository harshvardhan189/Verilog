module mux4x1_cond_tb();
	reg [3:0]i;
	reg [1:0]s;
	wire y;
	integer j;

	mux4x1_cond DUT(i,s,y);
	
	initial
		begin
	
				for(j=0;j<64;j=j+1)
				begin
				{i,s}=j;
				#10;
		end
	end
endmodule

