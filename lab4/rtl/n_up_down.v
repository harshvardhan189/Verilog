
module n_up_down #(parameter n = 3)(input clk,rst,load,ud,input [(n-1):0]data_in,output reg [(n-1):0]q);
	always@(posedge clk)
	begin 
		if(rst)
		q<=4'd0;
		else if(load==1)
		q<=data_in;
		
		else if (ud==1)
		q<=q+1;
	
		else
		q<=q-1;

		end

endmodule
