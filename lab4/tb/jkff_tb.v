module jkff_tb();
	reg j,k,clk,rst;
	wire q,qb;

	jkff DUT(j,k,clk,rst,q,qb);

	always
		begin
		clk =1'b0;
		#10 clk =1'b1;
		#10;
		end
	
	task reset();
		begin
		@(negedge clk)
		rst=1'b1;
		@(negedge clk)
		rst=1'b0;
		end
	endtask

	task ip_jk(input a,b);
		begin
		@(negedge clk)
		j=a;
		k=b;
		end
	endtask

	initial
		begin
		rst =1'b0;
		j=0;k=0;
		reset();
		ip_jk(0,0);
		ip_jk(0,1);
		ip_jk(1,0);
		ip_jk(1,1);
		ip_jk(0,0);
		ip_jk(1,0);
		ip_jk(0,1);
		#10;
		
	$finish;

	end
endmodule


























