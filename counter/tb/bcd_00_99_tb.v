module tb;
  reg clk =0;
  reg rst;
  //reg [3:0]ip,ip1;
  wire [3:0]op1 ,op;
  
  bcd DUT(clk, rst,op1,op);
  
  always #5 clk = !clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      @(negedge clk)
      rst = 1;
      @(negedge clk)
      rst = 0;
      
      //@(negedge clk)
     // ip1 =0;
      //ip = 0;
      
      
      $monitor("time %t, count = %0d%0d",$time,op1,op);
  	#1000 $finish; 
  end
endmodule
