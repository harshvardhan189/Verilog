/********************************************************************************************
Copyright 2019 - Maven Silicon Softech Pvt Ltd. 
 
All Rights Reserved.

This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd.

It is not to be shared with or used by any third parties who have not enrolled for our paid training 

courses or received any written authorization from Maven Silicon.


Webpage     :      www.maven-silicon.com

Filename    :	   mux4_1_tb.v   

Description :      Mux 4:1 Testbench

Author Name :      Susmita

Version     :      1.0
*********************************************************************************************/

   //Step1 : Write down the variables required for testbench		
module mux4_1_tb();
	reg [1:0]s;
	reg [3:0]i;
	wire y;
	

   //Step2 : Instantiate the Design 
	mux4x1 DUT(s,i,y);
	

   //Step3 : Declare a task to initialize inputs of DUT to 0 
	task initialize ();
		begin
		{i,s}=1'b0;
		end
	endtask

   //Step4 : Declare  tasks with arguments for driving stimulus to DUT 
	task ip([1:0]l,[3:0]m);
		begin 
		
		s=l;
		i=m;
		end
	endtask

   //Step5 : Call the tasks from procedural process 
	initial
		begin
		initialize();

		ip(2'b00 ,3'b1000);
		#10;

		ip(2'b01,3'b1101);
		#10;

		ip(2'b01,3'b1111);
		#10;
		end
	
   //Step6 : Use $monitor task to display inputs and outputs
	initial

	$monitor("i=%b,s=%b,y=%b",i,s,y);

   //Step7 : Use $finish task to terminate the simulation at 100ns
	initial
	
	#100 $finish;
   
endmodule

