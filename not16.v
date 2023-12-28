/**
 * 16-bit Not:
 * for i=0..15: out[i] = not in[i]
 */

module Not16(input[15:0] in, output[15:0] out);
  Not g15(in[15], out[15]);
  Not g14(in[14], out[14]);
  Not g13(in[13], out[13]);
  Not g12(in[12], out[12]);
  Not g11(in[11], out[11]);
  Not g10(in[10], out[10]);
  Not g09(in[9], out[9]);
  Not g08(in[8], out[8]);
  Not g07(in[7], out[7]);
  Not g06(in[6], out[6]);
  Not g05(in[5], out[5]);
  Not g04(in[4], out[4]);
  Not g03(in[3], out[3]);
  Not g02(in[2], out[2]);
  Not g01(in[1], out[1]);
  Not g00(in[0], out[0]);
endmodule


