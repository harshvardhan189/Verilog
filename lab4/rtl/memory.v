module memory;
	reg [7:0]mem1;
	reg [7:0]mem2[0:3];
	integer i;
	initial
		begin
		mem1=8'ha9;
		$display("memory =%0h",mem1);
		mem2[0] = 8'haa;
		mem2[1] = 8'hbb;
		$monitor("mem2[3] =%0h",mem2[3]);
		mem2[2] = 8'hcc;
		mem2[3] = 8'hdd;
		for(i=0;i<4;i=i+1)
		$display("mem2[%0d] =%0h",i,mem2[i]);
		end
endmodule



