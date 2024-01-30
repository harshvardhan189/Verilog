module asyn_dual_port_8x16(wr_clk,we,clr,data_in,wr_addr,rd_clk,re,rd_addr,data_out);
	parameter WIDTH = 16;
	parameter DEPTH = 8;
	parameter ADDR  = 3;

	input wr_clk,we,clr;
	input [WIDTH-1:0] data_in;
	input [ADDR-1:0] wr_addr;
	input rd_clk,re;
	input [ADDR-1:0] rd_addr;
	output reg [WIDTH-1:0] data_out;
	integer i;

	reg [WIDTH-1:0]mem[0:DEPTH-1];

	always@(posedge wr_clk or posedge clr)
		begin
		if(clr)
			begin
				for(i=0;i<8;i=i+1)
				mem[i]<=0;
			end
		else if(we==1)
			mem[wr_addr]<=data_in;
		end
	always@(posedge rd_clk or posedge clr)
		begin
		if(clr)
			data_out<=0;
		else if (re==1)
			data_out <= mem[rd_addr];
		end
endmodule
			

	




