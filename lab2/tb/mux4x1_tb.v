module mux4x1_tb();
	reg [1:0]s;
	reg [3:0]i;
	wire y;
	integer j;

	mux4x1 DUT(s,i,y);


	task ip();
		begin 
			for(j=0;j<64;j=j+1)
				begin
				{i,s}=j;
				#10;
				end
		end
	endtask
	
	initial
		begin
			ip;
			#1000;
			ip;
		end
endmodule
