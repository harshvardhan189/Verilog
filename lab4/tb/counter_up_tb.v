module counter_up_tb();
	reg clk,rst,load;
	reg [3:0]data_in;
	wire [3:0]q;

	counter_up DUT(.clk(clk),.rst(rst),.load(load),.data_in(data_in),.q(q));
	
	always
		begin
		clk=1'b1;
		#10;
		clk=1'b0;
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

	task ip_ld(input [3:0]m);
		begin
		@(negedge clk)
		load=1;
		data_in=m;
		@(negedge clk)
		load=0;
		end
	endtask

	initial 
		begin
		reset();
		ip_ld(4'b0101);
		#400;
		$finish;
		end


















endmodule	
