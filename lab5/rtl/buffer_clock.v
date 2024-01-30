`timescale 1ns/1ps
module buffer_clock(master_clk,buff_clk);
	input master_clk;
	output buff_clk;

	buf #10 b1(buff_clk,master_clk);

endmodule
