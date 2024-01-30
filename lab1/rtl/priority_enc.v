/////////////////////////////ENCODER CIRCUIT////////////////////////////

module priority_enc(input [7:0]i, output [2:0]y,output IDLE);
 	wire [7:0]w;

	priority_circuit pc(.i(i),.h(w),.IDLE(IDLE));
	binary_circuit  ec(.i(w),.y(y));



endmodule



module priority_circuit(input [7:0]i,output [7:0]h,output IDLE);

////////////////////////////PRIORITY CIRCUIT//////////////////////////////

	assign h[7] = i[7];
	assign h[6] = i[6]& ~i[7];
	assign h[5] = i[5]& ~i[6]& ~i[7];
	assign h[4] = i[4]& ~i[5]& ~i[6]& ~i[7];
	assign h[3] = i[3]& ~i[4]& ~i[5]& ~i[6]& ~i[7];
	assign h[2] = i[2]& ~i[3]& ~i[4]& ~i[5]& ~i[6]& ~i[7];
	assign h[1] = i[1]& ~i[2]& ~i[3]& ~i[4]& ~i[5]& ~i[6]& ~i[7];
	assign h[0] = i[0]& ~i[1]& ~i[2]& ~i[3]& ~i[4]& ~i[5]& ~i[6]& ~i[7];
	assign IDLE = ~i[0]& ~i[1]& ~i[2]& ~i[3]& ~i[4]& ~i[5]& ~i[6]& ~i[7];

endmodule

////////////////////////////////////BINARY CIRCUIT///////////////////////



module binary_circuit(input [7:0]i,output [2:0]y);



	assign y[0] = i[1] || i[3] || i[5] || i[7];
	assign y[1] = i[2] || i[3] || i[6] || i[7];
	assign y[2] = i[4] || i[5] || i[6] || i[7];

endmodule









