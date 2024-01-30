////////////////////////// HARSHVARDHAN THAKOR //////////////////////////////

/////////////////////////////////////////////////////////////////////////////


//////////////////////////////  OPERATOR  ///////////////////////////////////


module logical_bitwise();
	reg [2:0] a,b,c;
	reg x1,x2,x3,y1,y2,y3,z1,z2,z3;
	reg [2:0]x4,x5,x6,y4,y5,y6,z4,z5,z6;
	
	initial
		begin
		a=3'd5; b=3'b111; c='bx;

		$display ("value of a=3'd5,b=3'b111,c='bx");
///////////////////////////// LOGICAL OPERATORS ////////////////////////////////


		//// AND////
	
		x1= a&&b;
		y1= a&&c;
		z1= b&&0;
		$display("LOGICAL AND x1=%b,y1=%b,z1=%b",x1,y1,z1);

		//// OR ////

		x2= a||b;
		y2= a||c;
		z2= b||0;
		$display("LOGICAL OR x2=%b,y2=%b,z2=%b",x2,y2,z2);

		//// NOT ////

		x3= !b;
		y3= !c;
		z3= !0;


		$display("LOGICAL NOT x3=%b,y3=%b,z3=%b",x3,y3,z3);

//////////////////////////////// BITWISE OPERATORS /////////////////////////////////		



		
		//// AND////
	
		x4= a&b;
		y4= a&c;
		z4= b&0;
		$display("BITWISE AND x4=%b,y4=%b,z4=%b",x4,y4,z4);

		//// OR ////

		x5= a|b;
		y5= a|c;
		z5= b|0;
		$display("BITWISE OR x5=%b,y5=%b,z5=%b",x5,y5,z5);

		//// NOT ////

		x6= ~b;
		y6= ~c;
		z6= ~0;


		$display("BITWISE NOT x6=%b,y6=%b,z6=%b",x6,y6,z6);

		
		end
endmodule

//////////////////////// REDUCTION OPERATORS ///////////////////////////


module reduction_op();
	reg [3:0]a,b;
	reg y,z;

	initial
		begin 

		a=4'b0110; b=4'b1000;
		y=~&b;
		z=^a;
		$display("Reduction y=%b,z=%b",y,z);
		end
endmodule



////////////////////// SHIFT OPERATORS //////////////////////////////


module shift_op();
	reg [3:0]a,b,x,y,z;

	initial
		begin
			a=4'b0110; b=4'b1100;


			x=a<<1;  //// LOGICAL SHIFT OPERATOR //////
			y=b>>2;  //// ARITHMETIC SHIFT OPERATOR ///////

			z=a>>>1;


		$display("Shift operator y=%b,z=%b",y,z);
		end
endmodule


//////////////////////// CONCATENATION OPERATORS ////////////////////////

module concat_op();
	reg a;
	reg [2:0]b,c;
	reg [7:0] x,y,z;

	initial
		begin
		a=1'b1; b=3'b100; c=3'b110;
		x={a,b,c};
		y={b,2'b01,a};
		z={x[1:0],b[2:1],c};

		
		$display("Concatenation x=%b,y=%b,z=%b",x,y,z);
		end
endmodule

////////////////////////// CONCATENATION REPLICATION OPERATORS////////////////


module concat_rep_op();
	reg a;
	reg [2:0]b,c;
	reg [10:0] x;

	initial
		begin
		a=1'b1; b=3'b100; c=3'b110;
		x={{2{a}},b,{2{c}}};

		$display("Concatenation Replication x=%b",x);
		end
endmodule



/////////////////////// RELATION OPERATORS ////////////////////////////////


module relation_op();
	reg a,b;
	reg [3:0]x,y,z;
	reg l,m,n,o,p;
	
	initial
		begin
			a=4;b=3;
			x=4'b1000;y=4'b1100;z=4'b1x1x;
			
			l= a>b;
			m= a<b;
			n= x<=y;
			o= x>=y;
			p= x>=z;
			$display("relational l=%b,m=%b,n=%b,o=%b,p=%b",l,m,n,o,p);
			

		end

endmodule


/////////////////// EQUALITY OPERATOR //////////////////////

module equality_op();
	reg a,b,x,y,z,w;

	initial 
		begin
			a=4'b1x0z;  b=4'b1x0z;


			x= a==b;  //logical equality
			y= a!=b;


			z= a===b;  //case equality
			w= a!==b;


			$display("Equality operator x=%b,y=%b,z=%b,w=%b",x,y,z,w);
			
		end
endmodule

//////////////// CONDITIONAL OPERATORS //////////////////////

module conditional_op();
	reg [3:0] a,b,c,y,z;

	initial
		begin
		
			a=4'b1010;  b=4'b0010;  c=4'b1110;


			y=(&c)?a:b;
			z=c?a:b;

			$display("Conditional operators y=%b,z=%b",y,z);
		end
endmodule

//////////////////// ARITHMETIC OPERATOR ////////////////////


module arith_op();
	reg [3:0] a,b,c;
	integer d,e;
	reg [3:0] x,y,z;
	integer k,l,m,n;

	initial

		begin
			a=4'b0010; b=4'b0011; c=4'b101x; d=3; e=8;
			x=a*b;
			y=a+b;
			z=b-a;
			l=e/d;
			m=e%d;
			n=c*a;
			#10;
			$display("Arithmetic operator x=%b,y=%b,z=%b,l=%b,m=%b,n=%b",x,y,z,l,m,n);
		end
endmodule

























































