module tff_1(input clock,reset,t,output reg Q_out,output Qb_out);
	always@(posedge clock)
		begin
		if(reset)
		Q_out<=1'b0;
		else if(t==0)
		Q_out<=Q_out;
		else 
		Q_out<=~Q_out;
		end
		
endmodule
