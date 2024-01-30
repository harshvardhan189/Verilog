module asyn_dual_port_8x16_tb();
	parameter WIDTH = 16;
	parameter DEPTH = 8;
	parameter ADDR  = 3;

	reg wr_clk,we,clr;
	reg [WIDTH-1:0] data_in;
	reg [ADDR-1:0] wr_addr;
	reg rd_clk,re;
	reg [ADDR-1:0] rd_addr;
	wire[WIDTH-1:0] data_out;

asyn_dual_port_8x16 /*#(WIDTH,DEPTH,ADDR)*/ DUT(wr_clk,we,clr,data_in,wr_addr,rd_clk,re,rd_addr,data_out);

	

///////// clock\\\\\\\\\\\\\\
	always #5  wr_clk=~wr_clk;
	always #10 rd_clk=~rd_clk;

//////// clear \\\\\\\\\\\\

	task clear();
		begin
		@(negedge wr_clk or negedge rd_clk)
		clr=1;
		@(negedge wr_clk or negedge rd_clk)
		clr=0;
		end
	endtask


/////////initlization \\\\\\\\\\\\
	task init();
		begin
		{we,re,wr_clk,rd_clk}=0;
		end
	endtask

////////// write \\\\\\\\\\\\\\\

	task write( input [WIDTH-1:0] d_in,input [ADDR-1:0]wa,input w,r);
	begin
		@(negedge wr_clk)
		we=w;
		re=r;
		data_in=d_in;
		wr_addr=wa;
	end
	endtask

/////////// read \\\\\\\\\\\\\
	task read(input [ADDR-1:0]ra,input w,r);
		begin
			@(negedge rd_clk)
			we=w;
			re=r;
			rd_addr = ra;
		end
	endtask

	initial 
		begin
		init();
		clear();
		
		repeat(10)
		write({$random}%(2**(16)),{$random}%8,1,0);
		repeat(10)
		read ({$random}%8,0,1);


		#500 $finish;
		end
endmodule


	
	
	





