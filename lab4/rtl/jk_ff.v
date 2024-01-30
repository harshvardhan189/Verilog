`include "state_defination.v"

module jk_ff(input j,k,clk,rst,output reg q,output qb);

/*	parameter HOLD=2'b00;
	parameter SET=2'b10;
	parameter RESET=2'b01;
	parameter TOGGLE=2'b11;*/

	always@(posedge clk)
		begin
		if(rst)
		begin
			q=1'b0;
		end

		else
			case({j,k})
			

			`HOLD   : q <=q;
			`SET    : q <=1'b1;
			`RESET  : q <=1'b0;
			`TOGGLE : q <=~q;
			default: q <=1'bz;
			
			endcase
		
		end
	assign qb=~q;
endmodule
