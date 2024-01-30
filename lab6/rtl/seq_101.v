module seq_101(input clk,rst_n,i ,output q1);

	parameter IDLE = 2'b00;
	parameter S1   = 2'b01;
	parameter S2   = 2'b10;
	parameter S3   = 2'b11;


	reg [1:0] state,next_state;

	always@(posedge clk or negedge rst_n)
		if(!rst_n)
		state <= IDLE;
		else
		state <= next_state;

	always@(*)
	begin
		//next_state = IDLE;									
		case(state)

		IDLE : if(i==1)  next_state = S1;
			   else 	  next_state = IDLE;
		S1   : if(i==0)  next_state = S2;
			   else 	  next_state = S1;
		S2   : if(i==1)  next_state = S3;
			   else 	  next_state = IDLE;
		S3   : if(i==1)  next_state = S1;
			   else 	  next_state = S2;
		default : next_state = IDLE;

		endcase
	end


	assign q1 = (state == S3)? 1'b1:1'b0;
endmodule


