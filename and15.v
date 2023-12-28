/**
 * 15-bit bitwise And:
 * for i = 0..14: out[i] = (a[i] and b[i])
 */
module And15(input[14:0] a, b, output[14:0] out);
  And g14(a[14], b[14], out[14]);
  And g13(a[13], b[13], out[13]);
  And g12(a[12], b[12], out[12]);
  And g11(a[11], b[11], out[11]);
  And g10(a[10], b[10], out[10]);
  And g09(a[9], b[9], out[9]);
  And g08(a[8], b[8], out[8]);
  And g07(a[7], b[7], out[7]);
  And g06(a[6], b[6], out[6]);
  And g05(a[5], b[5], out[5]);
  And g04(a[4], b[4], out[4]);
  And g03(a[3], b[3], out[3]);
  And g02(a[2], b[2], out[2]);
  And g01(a[1], b[1], out[1]);
  And g00(a[0], b[0], out[0]);
endmodule


