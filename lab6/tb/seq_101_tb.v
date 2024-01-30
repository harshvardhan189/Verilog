module seq_101_tb();
	reg clk,rst_n,i;
	wire q1;
	
	parameter IDLE = 2'b00;
	parameter S1   = 2'b01;
	parameter S2   = 2'b10;
	parameter S3   = 2'b11;

	seq_101 #(IDLE,S1,S2,S3) DUT (clk,rst_n,i,q1);
	

	always #10 clk = ~clk;

	task reset();
	begin
		#20 rst_n = 0;
		#15 rst_n = 1;
	end
	endtask

	task init();
	begin
		clk=0;
	end
	endtask

	task ip(input a);
	begin
		@(negedge clk)
		i=a;
		
	end
	endtask

	initial
	begin
		init();
		reset();
		ip(0);
		ip(1);
		ip(0);
		ip(1);
		ip(0);
		ip(1);
		ip(1);
		ip(0);
		#10 $finish;

	end
endmodule

		



