module memory;
	reg [7:0]memory[0:15];
	integer i;

	initial
	begin
		for(i=0;i<15;i=i+1)
		begin
			memory[i]=[i];
			#10;
		end
	end
endmodule
