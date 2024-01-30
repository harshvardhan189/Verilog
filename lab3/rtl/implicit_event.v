module implicit_event;
	reg [1:0]a=2;
	reg [1:0]b=3;
	reg [2:0]c;
	task t;
		begin
		c=a+b;
		$display("value of c=%d",c);
		end
	endtask

	/*always@(a,b)
	begin
		$display("&&&&&&&");
		t;
		end*/
		initial
			begin
				t;
			end
				
endmodule
