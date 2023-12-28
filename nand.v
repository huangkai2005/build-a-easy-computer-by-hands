

module Nand(input a, b, output out);
  nmos n1(o1, 0, b);
  nmos n2(out, o1, a);

  pmos p1(out, 1, a);
  pmos p2(out, 1, b);
endmodule
