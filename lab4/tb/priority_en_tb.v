
module priority_en_tb();
	reg [7:0]i;
	wire valid;
	wire [2:0]y;
	integer k;

	priority_en DUT(.i(i),.valid(valid),.y(y));

	initial
		begin
		i=8'b10000000;
		#10;
			for(k=0;k<8;k=k+1)
			begin
			i=i>>1;
			#10;
			end
				
		end
endmodule
