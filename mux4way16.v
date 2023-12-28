/**
 * 4-way 16-bit multiplexor:
 * out = a if sel == 00
 *       b if sel == 01
 *       c if sel == 10
 *       d if sel == 11
 */

module Mux4Way16(input[15:0] a,b,c,d, input[1:0] sel, output[15:0] out);
  wire [15:0] outab, outcd;
  Mux16 g1(a, b, sel[0], outab);
  Mux16 g2(c, d, sel[0], outcd);
  Mux16 g3(outab, outcd, sel[1], out);
endmodule
