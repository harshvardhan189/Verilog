module vending(input clk,rst, input [1:0] i, output reg p,r);
	
	parameter IDLE = 3'b000;
	parameter  S1  = 3'b001;
	parameter  S2  = 3'b010;
	parameter  S3  = 3'b011;
	parameter  S4  = 3'b100;

	reg [2:0] state,next_state;

	always@(posedge clk)
              begin
		if(rst)
		state <= IDLE;
		else
		state <= next_state;
              end

	always@(state,i)
	begin
		p = 0;
		r = 0;

		next_state =IDLE;
		case(state)
		IDLE :  
				if(i == 2'd1) 
					next_state = S1; 
				else if (i == 2'd2) 
					next_state = S2;
				else 
					next_state =IDLE;
         S1  :	
				if(i == 2'd1) 
					next_state = S2; 
				else if (i == 2'd2) 
					next_state = S3;
		 		
         S2  :
				if(i == 2'd1) 
					next_state = S3; 
				else if (i == 2'd2) 
					next_state = S4;
         S3  :     begin
					next_state = IDLE; 
					p=1; r=0;
					end
         S4  :      begin
					next_state = IDLE;
					p=1;
					r=1;
					end


		 endcase
	end

endmodule
