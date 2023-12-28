/**
 * 16-bit multiplexor: 
 * for i = 0..15 out[i] = a[i] if sel == 0 
 *                        b[i] if sel == 1
 */

module Mux16(input[15:0] a, b, input sel, output[15:0] out);
  Mux g15(a[15], b[15], sel, out[15]);
  Mux g14(a[14], b[14], sel, out[14]);
  Mux g13(a[13], b[13], sel, out[13]);
  Mux g12(a[12], b[12], sel, out[12]);
  Mux g11(a[11], b[11], sel, out[11]);
  Mux g10(a[10], b[10], sel, out[10]);
  Mux g09(a[9],  b[9],  sel, out[9]);
  Mux g08(a[8],  b[8],  sel, out[8]);
  Mux g07(a[7],  b[7],  sel, out[7]);
  Mux g06(a[6],  b[6],  sel, out[6]);
  Mux g05(a[5],  b[5],  sel, out[5]);
  Mux g04(a[4],  b[4],  sel, out[4]);
  Mux g03(a[3],  b[3],  sel, out[3]);
  Mux g02(a[2],  b[2],  sel, out[2]);
  Mux g01(a[1],  b[1],  sel, out[1]);
  Mux g00(a[0],  b[0],  sel, out[0]);
endmodule

