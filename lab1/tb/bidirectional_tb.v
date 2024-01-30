module bidirectional_tb();
	wire a,b;
	reg c;
	reg in1,in2;
	integer i;
	
	bidirectional DUT(c,a,b);
	
	assign a= c?in1:1'bz;
	assign b= ~c?in2:1'bz;
	
	initial
		begin
			for(i=0;i<8;i=i+1)
			begin
			{in1,in2,c}=i;
			#10;
			end


			end
endmodule
	

			
			
