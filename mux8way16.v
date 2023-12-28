/**
 * 8-way 16-bit multiplexor:
 * out = a if sel == 000
 *       b if sel == 001
 *       etc.
 *       h if sel == 111
 */

module Mux8Way16(input[15:0] a,b,c,d,e,f,g,h, input[2:0] sel, output[15:0] out);
  wire [15:0] outad, outeh;
  Mux4Way16 g1(a, b, c, d, sel[1:0], outad);
  Mux4Way16 g2(e, f, g, h, sel[1:0], outeh);
  Mux16     g3(outad, outeh, sel[2], out);
endmodule
