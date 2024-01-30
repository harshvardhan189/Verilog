module asyn_single_port_RAM(data,addr,we,re);
	
	parameter WIDTH   =16;
	parameter DEPTH   =8;
	parameter ADDRESS =3;

	inout [WIDTH-1:0]data;
	input [ADDRESS-1:0]addr;
	input we,re;


	reg [15:0]mem[0:7];


	always@(*)
		begin
		if(we==1 && re==0)
		mem[addr] <= data;
		end

	assign data = (we==1 && re==0)?mem[addr]:1'bz;

endmodule
