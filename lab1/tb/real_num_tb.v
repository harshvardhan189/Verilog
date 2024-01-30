module real_num_tb();
	wire [63:0] ain;
	real_num DUT(ain);
	initial
		begin 
		DUT.r=14.34; //real number
		#20;
		end
endmodule

