	module full_sub_tb();
	reg a,b,bin;
	wire diff,borrow;
	integer i;
	full_sub f1(.a(a),.b(b),.bin(bin),.diff(diff),.borrow(borrow));

	initial
		begin
		for(i=0;i<8;i=i+1)
			begin
			{a,b,bin}=i;
			#10;
			end
		end
	initial
		
		$monitor("a=%b,b=%b,diff=%b,borrow=%b,.bin=%b",bin,a,b,diff,borrow);
endmodule

