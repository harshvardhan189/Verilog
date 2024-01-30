module mux_decoder(i,s,x);
	input [1:0]s;
	input [3:0]i;
	output wor x;
	wire [3:0]w;
	
	decoder_2x4 d1(.i(s),.y(w));

	bufif1 (x,i[0],w[0]);
	bufif1 (x,i[1],w[1]);
	bufif1 (x,i[2],w[2]);
	bufif1 (x,i[3],w[3]);
	
	
endmodule

