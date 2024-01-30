module sr_latch(s,r,q,qb);
	input s,r;
	output q,qb;

	nor l1(q,r,qb);
	nor l2(qb,s,q);

	endmodule
