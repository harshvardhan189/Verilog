module dec_parameterize#(parameter n=3)(input[(n-1):0]i,output reg [((2**n)-1):0]y);
	always@(i)
		begin
		y=1'b0;
		y[ie]=1'b1;
		end
endmodule
