module priority_enc_tb();
	reg [7:0]i;
	wire [2:0]y;
	wire IDLE;

	integer k;

	priority_enc DUT(i,y,IDLE);


	initial
		begin
			for(k=0;k<256;k=k+1)
			begin 
			i=k;
			#10;
			end
			
		end
endmodule


