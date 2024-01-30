module fifo(clk,rst,re,we,data_in,data_out,full,empty);
	input clk,rst,we,re;
	input [7:0]data_in;
	output reg[7:0]data_out;
	output full,empty;
	integer i;
	reg [4:0]wrptr,reptr;
	reg [7:0]mem[0:15];
	
	assign empty=(wrptr==5'b0)? ((reptr== 5'b0)? 1'b1:1'b0): 1'b0;
	assign full=(wrptr==5'b10000)? 1'b1 : 1'b0;
 
/////////// write data \\\\\\\\\\\\\\\\
	always@(posedge clk)
	begin
		if(rst)
		begin
			wrptr <=0;
			for(i=0;i<16;i=i+1)
			mem[i]<=0;
		end
		else if(we && !full)
		begin
			mem[wrptr] <= data_in;
			wrptr <= wrptr+1;
		end
		else if(reptr>0)
		wrptr <=0;
	end
///////////// read data \\\\\\\\\\\\
	always@(posedge clk)
begin
		if(rst)
			begin
			data_out <= 0;
			reptr<=0;
			end
		else if(re && !empty)
			begin
			data_out <=mem[reptr];
			reptr <= reptr+1;
			end
		else if(reptr==5'b10000)
			reptr<=0;
	end
endmodule




























	
