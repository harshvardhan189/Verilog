module sr_latch_tb();
	reg s,r;
	wire q,qb;
	integer i;

	sr_latch DUT(s,r,q,qb);

	task ip_sr(input k,l);
		begin
		r=k;
		s=l;
		end
	endtask


	initial
		begin
		ip_sr(0,0);	
		#10;
		ip_sr(1,0);	
		#10;
		ip_sr(0,0);	
		#10;
		ip_sr(0,1);	
		#10;
		ip_sr(0,0);	
		#10;
		ip_sr(1,1);	
		#10;
		ip_sr(0,0);	
		#10;
		ip_sr(1,0);	
		#10;
		ip_sr(0,1);	
		#10;
		end
endmodule
	
