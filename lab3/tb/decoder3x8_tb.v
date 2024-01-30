module decoder3x8_tb();
	reg [2:0]i;
	wire [7:0]y;
	
	decoder3x8 DUT(i,y);

	task ip(input[2:0]k);
		begin
		i=k;
		#10;
		end
	endtask

	initial
		begin

		ip(3'b001);
		#100;

		ip(3'b101);
		#100;

		end
endmodule

	
