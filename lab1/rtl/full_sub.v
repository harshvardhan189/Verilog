module full_sub(a,b,bin,diff,borrow);
	input a,b,bin;
	output diff,borrow;
	wire w1,w2,w3;

	half_sub h1(.a(a),.b(b),.diff(w1),.borrow(w2));
	half_sub h2(.a(w1),.b(bin),.diff(diff),.borrow(w3));
	or b1(borrow,w2,w3);

endmodule
