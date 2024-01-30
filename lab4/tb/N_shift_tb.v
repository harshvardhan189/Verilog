module N_shift_tb();
	parameter N=4;
	reg clk,rst,si;
	wire so;


	N_shift DUT(.clk(clk),.rst(rst),.si(si),.so(so));

	always
	begin
	clk=1'b0;
	#10;
	clk=1'b1;
	#10;
	end

	task reset();
	begin
	@(negedge clk)
	rst = 1'b1;
	@(negedge clk)
	rst =1'b0;
	end
	endtask

	task ip_shift(input k);
	begin

	@(negedge clk)
	si=k;
	end
	endtask

	initial
	begin
		rst=0;
		si=0;
		reset();
		ip_shift(1'b0);
		ip_shift(1'b1);
		ip_shift(1'b1);
		ip_shift(1'b0);
		
		
		#100;
		$finish;
	end
	
	
endmodule




	
