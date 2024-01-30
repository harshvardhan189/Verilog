`define val_up  3'b101
`define val_down  3'b110
module n_up_down_tb();
	parameter n=3;
	reg clk,rst,load,ud;
	reg [(n-1):0]data_in;
	wire [(n-1):0]q;

	n_up_down  #(.n(n))DUT (.clk(clk),.rst(rst),.ud(ud),.load(load),.data_in(data_in),.q(q));
	
	always
		begin
		clk=1'b1;
		#10;
		clk=1'b0;
		#10;
		end
	task reset();
		begin
		@(negedge clk)
		rst=1'b1;

		@(negedge clk)
		rst=1'b0;
		end
	endtask

	task ip_ld(input [(n-1):0]m,input k);
		begin
		@(negedge clk)
		load=1;
		ud=k;
		data_in=m;
	/*	if(k==1)
			q='b(n**2)-1;
		else
			begin
			q='b0;
			#10;
			end*/
		@(negedge clk)
		load=0;
		end
	endtask

	initial 
		begin
		reset();
		ip_ld(`val_up,1);
		wait(q==((2**n )-1))
		reset();
		ip_ld(`val_down,0);
		
		 wait (q=='b0)

			begin
			#10;
			$finish;
			end
		end
endmodule	
	
