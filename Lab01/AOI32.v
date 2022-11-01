//verilog code for AND-OR-INVERT(AOI) gate

module AOI32 (input a,b,c,d,e, output y);

 
  assign y = ~((a & b & c) | (d & e)) ;
  
endmodule 
//end of verilog code
