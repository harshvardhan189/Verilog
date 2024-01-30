module counter_up(input clk,rst,load,input [3:0]data_in,output reg [3:0]q);
	always@(posedge clk)
	begin 
		if(rst)
		q<=4'b0000;
		else if(load==1)
		q<=data_in;
		else
		q<=q+1;
	end
endmodule
	
