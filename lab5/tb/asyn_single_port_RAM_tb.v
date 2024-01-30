module asyn_single_port_RAM_tb();

	parameter WIDTH   =16;
	parameter DEPTH   =8;
	parameter ADDRESS =3;

	wire [WIDTH-1:0]data;
	reg [ADDRESS-1:0]addr;
	reg we,re;
	reg [WIDTH-1:0]temp;
	integer i;


	 asyn_single_port_RAM #(WIDTH,DEPTH,ADDRESS)DUT(data,addr,we,re);

	assign data = (we && !re)? temp : 'bzz;

////////// initialising \\\\\\\\\\\

	task init();
		begin
		{we,re,temp}=0;
		end
	endtask


	task stimulus();
		begin
		for(i=0;i<8;i=i+1)
		temp=i;
		end
	endtask


	task read();
		begin
		we=0;
		re=1;
		end
	endtask

	task write();
		begin
		we=1;
		re=0;
		data=temp;
		end
	endtask


	initial
		begin
		init;
		#10;
		write;
		for(i=0;i<16;i=i+1)
		begin
			stimulus = i;
			#10;
		end
		read;
		for(i=0;i<16;i=i+1)
			begin
			stimulus =i;
			#10;
			end
		#10;
		$finish;
		end
endmodule


		



	

	 




