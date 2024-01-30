module practice(din,c,w1,w);
	input din,c;
	output w1;
	reg w;


	always@(posedge c)
	begin
	w<=din+1'b1;
	w1<=w;
	end
endmodule
