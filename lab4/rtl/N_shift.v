module N_shift(clk,rst,si,so);
	
	parameter N=4;
	input si,clk,rst;
	output  so;

	reg [(N-1):0] t;


	always@(posedge clk)
		begin

		if(rst)
		t<=0;
		else
		t <= {si,t[(N-1):1]};

		end
	assign so = t[0];

endmodule

	
