module mem();
	reg a,b;
	reg [1:0]mem[0:3];
	integer i;

	initial begin
	$readmemb("input.txt",mem);
	end

	initial
		begin
		for(i=0;i<4;i=i+1)
		begin
		{a,b}=mem[i];
		#10;
		end
		end
endmodule
