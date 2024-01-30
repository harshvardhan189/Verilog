module operators;
	reg [7:0]data1;
	reg [7:0]data2;

	initial
		begin

		data1=46;
		data2=9;
		$display("add +=%d",data1+data2);
		$display("sub -=%d",data1-data2);
		$display("mul *=%d",data1*data2);
		$display("div /=%d",data1/data2);
		$display("mod  =%d",data1%data2);
		$display("pow **=%d",data1**2);

		end
endmodule
