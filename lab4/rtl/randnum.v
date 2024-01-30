module rand_num();
	reg[31:0]rand[0:9];
	integer i,j;
	initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		j={$random}%20;
		rand[i]=32'd65+j;
		#10;
		end
		end
endmodule
