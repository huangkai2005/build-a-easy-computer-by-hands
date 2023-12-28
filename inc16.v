/**
 * 16-bit incrementer:
 * out = in + 1 (arithmetic addition)
 */

module Inc16(input[15:0] in, output[15:0] out);
  Add16 g1(in, 16'h1, out);
endmodule
