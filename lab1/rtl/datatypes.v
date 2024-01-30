module datatypes(a,b,c,y);
	input a,b,c;
	//output wor y;
	output wand y;
	buf b1(y,a);
	buf b2(y,b);
	buf b3(y,c);

endmodule
