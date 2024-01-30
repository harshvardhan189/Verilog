module blk_assign();
	reg a,b,c,d;
	initial
		begin
		a=1'b1;
		b=1'b0;
		c=1'b1;
		d=1'b0;
		#5c=#5b;
		d=#5a;
		#5b=d;
		c<=#5b;
		#5d=1'b1;
		#5b<=d;
		end
		
endmodule

