module real_num(output[63:0]ain);
	real r;
	real r1;

	assign ain =$realtobits(r);
	initial
		begin 
			#10;
			r1=$bitstoreal(ain);
		end
	initial
	$monitor("r=%f,r1%f,ain=%f",r,r1,ain);
endmodule
