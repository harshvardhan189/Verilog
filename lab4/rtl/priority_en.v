module priority_en(input [7:0]i,output reg [2:0]y,output reg valid);

	always@(i)
	begin
		valid=1'b1;
		if(i[7])
		y=3'd7;
		else if(i[6])
		y=3'd6;
		else if(i[5])
		y=3'd5;
		else if(i[4])
		y=3'd4;
		else if(i[3])
		y=3'd3;
		else if(i[2])
		y=3'd2;
		else if(i[1])
		y=3'd1;
		else if(i[0])
		y=3'd0;
	
	else
		begin
		valid=0;
		y=3'bxxx;
		end
	end


endmodule
