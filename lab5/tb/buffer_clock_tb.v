`timescale 1ns/1ps

module buffer_clock_tb();
	
	reg master_clk;
	wire buff_clk;
	real freq;
	time t1,t2,t4,t5;
	real t3;

	buffer_clock DUT(master_clk,buff_clk);

	always #20 master_clk=~master_clk;

	task phase();
	begin
		fork
		@(posedge master_clk)
		t4=$time;
		@(posedge master_clk)
		t5=$time;
		join

		if(t4==t5)
			$display("phase is same");
		else
			$display("phase is not same");

	end
	endtask

	task m1();
	begin
		@(posedge master_clk)
		t1=$time;
		@(posedge master_clk)
		t2=$time;

		t3=t2-t1;
		freq=1/t3;


	end
	endtask

	initial
		begin

		master_clk=0;
		phase();

		m1();
		#100 $finish;
		end

	initial
		$monitor("t1=%f,t2=%f,freq=%f",t1,t2,freq);
endmodule






