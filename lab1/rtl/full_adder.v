module full_adder(a,b,cin,carry,sum);
	input a,b,cin;
	output sum,carry;
	wire w1,w2,w3;

	//	assign sum=a^b^cin;
	//	assign carry=a&b|(c&(a^b))


	half_adder h1(.a(a), .b(b), .s(w1), .c(w2));
	half_adder h2(.a(w1), .b(cin), .s(sum), .c(w3));
	or c1(carry,w2,w3);
endmodule
