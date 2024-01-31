module multiply();
  
  integer mult =0;
  integer a = 156;
  integer b = 586;
  
  integer i;
  
  initial begin
    for(i=1; i<=b; i = i+ 1)
      mult = mult + a;
    
    $display("a * b = Result");
    $display("%0d * %0d = %0d",a,b,mult);
  end
  
endmodule
