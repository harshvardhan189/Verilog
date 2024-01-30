module ripple_cy_tb();
	reg [3:0] a,b;
	reg cin;
	wire [3:0] sum;
	wire carry;
	integer i,j;
	
	ripple_cy r1(.a(a),.b(b),.cin(cin),.carry(carry),.sum(sum));
	initial 
	begin
	
		for(i=0;i<16;i=i+1)
			begin
				a=i; 
				for(j=0;j<32;j=j+1)
			begin
			{cin,b}=j;	
			#10;
			end
		end
	end

endmodule

