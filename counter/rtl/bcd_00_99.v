module bcd(input clk, rst, output reg [3:0]op1,op);
  
  reg [3:0]ip,ip1;
  always@(posedge clk)
    begin
      if(rst)
        begin
          op<=0;
          ip<=0;
          ip1 <=0;
        end
      else if(ip==9)
        begin
        ip1 <= ip1+1;
      	ip<=0;
        end
      else
        ip <=ip+1;
        
              
    end
  always@(posedge clk) 
    begin
    op <= ip;
    op1 <= ip1;
    end
endmodule
