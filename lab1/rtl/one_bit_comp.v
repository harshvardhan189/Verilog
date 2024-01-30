module one_bit_comp(a,b,g,eq,l);

	input a,b;
	output g,eq,l;
	assign g=(a&~b);
	assign l=(~a&b);
	assign eq=(~a&~b)|(a&b);
	
endmodule

