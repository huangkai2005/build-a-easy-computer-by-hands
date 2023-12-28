
module And(input a, b, output out);
  Nand g1(a, b, AnandB);
  Nand g2(AnandB, AnandB, out);
endmodule

