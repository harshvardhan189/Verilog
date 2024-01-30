module dual_port_RAM_tb();		
     	 	                 		
	parameter width = 8;
	parameter depth = 16;
	parameter addr  = 4;

	reg [(width-1):0]wr_data;
	reg [(addr-1):0]wr_addr,rd_addr;
	reg clk_r,clk_w,reset,we,re;

	wire [(width-1):0]rd_data;
	
	dual_port_RAM #(width,depth,addr)DUT(wr_data,wr_addr,rd_addr,clk_r,clk_w,reset,we,re,rd_data);



///////clock wite //////////////
	always #10 clk_w=~clk_w;

////////clock read /////////////
	always #20 clk_r=~clk_r;



////// initialization ///////////	
	task init();
		begin
		{we,re,clk_r,clk_w,reset}=0;
		end
	endtask
//////// reset ////////////////

	task rst();
		begin
		@(negedge clk_r or negedge clk_w)
		reset=1;
		@(negedge clk_r or negedge clk_w)
		reset=0;
		end
	endtask

//////// writing ////////////

	task write(input[(width-1):0]a,input[(addr-1):0]b,input w,r);
		begin
		@(negedge clk_w)
		we = w;
		re = r;
		wr_addr =b;
		wr_data =a;
		end
	endtask

///////// reading ////////////	
	task read(input[(addr-1):0]a,input w,r);
		begin
		@(negedge clk_r)
		we = w;
		re = r;
		rd_addr =a;
		end
	endtask

	initial
		begin
			init;
			rst;
			repeat(10)
			write({$random}%256,{$random}%16,1'b1,1'b0);
			repeat(10)
			read({$random}%16,1'b0,1'b1);
			
			#100 $finish;

		/*fork
			begin 
			init();
			rst();
			repeat(5)
			write({$random}%256,{$random}%16,1'b1,1'b0);
			end
		
			begin
			init();
			rst();
			repeat(5)
			read({$random}%16,1'b0,1'b1);
			end
		join
			#100 $finish;*/





		end
endmodule

     	 	                  
                               		
     	 	                 		
     	 	                 		
     	 	                  
                               		
     	 	                 		
     	 	                 		
     	 	                 		
     	
