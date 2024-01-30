module clk_gen;
	reg clk;
	time t1,t2,t3;

	initial 
		begin 
		clk = 1'b0;
		forever
			begin 
			#10 clk=~clk;
			end
		end

	initial
		begin
		@(posedge clk)
		t1=$time;
		
		@(posedge clk)
		t2=$time;
		t3=t2-t1;
		$monitor("t1=%d,t2=%d,t3=%d,clk=%d",t1,t2,t3,clk);
	end	
	endmodule
