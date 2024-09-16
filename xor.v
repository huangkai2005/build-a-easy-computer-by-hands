module Xor(input a, b, output out);
 //wire声明变量(学软件的就不用把什么电路什么信号学的这么底层了)
  wire A_or_B, Y;
 
  or (A_or_B, a, b);
  nand (Y, a, b);
  and (out, A_or_B, Y);
endmodule

