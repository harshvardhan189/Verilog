
module add_sub_tb();
	reg [3:0] a,b;
	reg cin,add_sub;
	wire [3:0] sum;
	wire carry;
	integer i,j;
	
	add_sub as1(.a(a),.b(b),.cin(cin),.carry(carry),.sum(sum),.add_sub(add_sub));
	initial 
	begin
cin=0;
	add_sub=0;

		for(i=0;i<16;i=i+1)
			begin
				a=i; 
				for(j=0;j<16;j=j+1)
			begin
		b=j;	
		#10;
			end
		end
#10;
	add_sub=1;
		for(i=0;i<16;i=i+1)
			begin
				a=i; 
				for(j=0;j<16;j=j+1)
			begin
		b=j;	
		#10;
			end
		end
	end

endmodule

