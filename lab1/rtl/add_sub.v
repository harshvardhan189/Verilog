
module add_sub(a,b,cin,sum,carry,add_sub);
	input [3:0] a,b;
	input cin,add_sub;
	output [3:0] sum;
	output carry;
	wire c1,c2,c3,b0,b1,b2,b3;
	
	xor x0(b0,b[0],add_sub);
	xor x1(b1,b[1],add_sub);
	xor x2(b2,b[2],add_sub);
	xor x3(b3,b[3],add_sub);

	full_adder f1(.a(a[0]),.b(b0),.cin(add_sub),.sum(sum[0]), .carry(c1));
	full_adder f2(.a(a[1]),.b(b1),.cin(c1),.sum(sum[1]), .carry(c2));
	full_adder f3(.a(a[2]),.b(b2),.cin(c2),.sum(sum[2]), .carry(c3));
	full_adder f4(.a(a[3]),.b(b3),.cin(c3),.sum(sum[3]), .carry(carry));
	endmodule


