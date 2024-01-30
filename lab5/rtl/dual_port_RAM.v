module dual_port_RAM (wr_data,wr_addr,rd_addr,clk_r,clk_w,reset,we,re,rd_data);
	

	parameter width = 8;
	parameter depth = 16;
	parameter addr  = 4;

	input [(width-1):0]wr_data;
	input [(addr-1):0]wr_addr,rd_addr;
	input clk_r,clk_w,reset,we,re;

	output reg [(width-1):0]rd_data;
	reg [(width-1):0]mem[(depth-1):0];
	
	integer i;

/*	always@(posedge clk)
		begin
		
		if(reset)
			begin
			rd_data <= 0;
			for(i=0;i<depth;i=i+1)
			mem[i] <= 0;
			end
		else
			begin
			if(we)
			mem[wr_addr] <= wr_data;
			if(re)
			rd_data <= mem[rd_addr];
			end
		end */

////////////read data ////////////
	always@(posedge clk_r)
		begin
		if(reset)
			begin
			rd_data <= 0;
			end
		else if(re)
			begin
			rd_data <= mem[rd_addr];
			end
		end

///////////write data ////////////

	always@(posedge clk_w)
		begin
			if(reset)
			begin
				for(i=0;i<depth;i=i+1)
				mem[i] <= 0;
			end

			else if(we)
			mem[wr_addr] <= wr_data;

		end
	
endmodule









