module half_sub_tb();
	reg a,b;
	wire diff,borrow;
	integer i;

		half_sub h1(.a(a),.b(b),.diff(diff),.borrow(borrow));
		initial begin
			for(i=0;i<4;i=i+1)
					begin
					{a,b}=i;
					#10;
					end
				end
		initial
		$monitor("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
		initial
		#100 $finish;
	endmodule
		
