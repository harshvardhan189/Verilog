module counter_up(input clk,rst,load,input [3:0]data_in,output reg [3:0]q);
	always@(posedge clk)
	fork
		if(rst)
		q<=4'b0000;
		else if(load==1)
		begin
			if (data_in>4'd11)
			q<=4'b0000;
			else
			q<=data_in;
		end
		else if(q>=4'd11)
		q<=4'b0000;
		else
		q<=q+1;
	join
endmodule
	
