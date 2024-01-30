module array;
	reg my_reg[0:5];
	reg arrayb[7:0][0:5];

	initial
		begin 
			my_reg[2]=1'b1;
			#10;
			arrayb[1][0] = 1'b0;
			#10;
		end
endmodule
