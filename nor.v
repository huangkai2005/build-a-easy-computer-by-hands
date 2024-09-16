
module Nor(input a, b, output out);
  // your code here
   Or o(a,b,o1);
   Not n(o1,out);
endmodule

