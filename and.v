
module And(input a, b, output out);
  Nand g(a, b, AnandB);
  not p(out,AnandB);
endmodule

