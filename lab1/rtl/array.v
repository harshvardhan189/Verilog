module mem;
	reg [7:0]mem[0:15];
	integer i;
	initial
		begin
			for(i=0;i<16;i=i+1)
			begin
				mem[i]=i;
				#10;
			end
		end
endmodule
