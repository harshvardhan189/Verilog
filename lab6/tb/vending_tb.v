module vending_tb();
	reg clk,rst;
	reg [1:0] i;
	wire p,r;
	
	parameter IDLE = 3'b000;
	parameter  S1  = 3'b001;
	parameter  S2  = 3'b010;
	parameter  S3  = 3'b011;
	parameter  S4  = 3'b100;

	vending DUT(clk,rst,i,p,r);

	always #10 clk = ~clk;

	task reset();
	begin
		@(negedge clk)
		rst=1;
		@(negedge clk)
		rst=0;
	end
	endtask

	task ip(input[1:0]a);
	begin
		@(negedge clk)
		i=a;
	end
	endtask

	initial
		begin
		clk=0;
		reset();
		ip(2'd1);
		ip(2'd2);
		ip(2'd2);
		ip(2'd2);
		

	#100 $finish;
	end

endmodule
