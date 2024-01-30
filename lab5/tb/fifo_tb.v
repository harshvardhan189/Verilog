
module fifo_tb();
	reg clk,rst,we,re;
	reg [7:0]data_in;
	wire [7:0]data_out;
	wire full,empty;

	fifo DUT(clk,rst,re,we,data_in,data_out,full,empty);
////////// clock \\\\\\\\\\\\\	
	
	always #10 clk=~clk;

///////// reset \\\\\\\\\\\\\\

	task reset();
		begin 
		@(negedge clk)
		rst=1'b1;
		@(negedge clk)
		rst =1'b0;
		end
	endtask

/////// init \\\\\\\\\\\\\\

	task init();
		begin
		{clk,we,re}=0;
		end
	endtask


////// write \\\\\\\\\\\\\

	task write(input [7:0]a,input w);
		begin
		@(negedge clk)
		data_in = a;
		we=w;
		end
	endtask


///////// read \\\\\\\\\\\
	task read(input r);
		begin
		@(negedge clk)
		re=r;
		end
	endtask
	

///////// procedural \\\\\\\\\\
	
	initial
	begin
		init();
		reset();
		repeat(16)
		write({$random}%256,1);
		write({$random}%256,0);
		repeat(16)
		read(1);
		read(0);
		#500 $finish;
	end
endmodule


		





















