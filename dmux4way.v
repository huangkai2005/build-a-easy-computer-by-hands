/**
 * 4-way demultiplexor:
 * {a, b, c, d} = {in, 0, 0, 0} if sel == 00
 *                {0, in, 0, 0} if sel == 01
 *                {0, 0, in, 0} if sel == 10
 *                {0, 0, 0, in} if sel == 11
 */

module DMux4Way(input in, input[1:0] sel, output a,b,c,d);
  Not  g1(sel[1], nsel1);
  Not  g2(sel[0], nsel0);
  And  g3(nsel1,  nsel0,  sel00);
  And  g4(nsel1,  sel[0], sel01);
  And  g5(sel[1], nsel0,  sel10);
  And  g6(sel[1], sel[0], sel11);
  DMux g7(in, sel00, d0, a);
  DMux g8(in, sel01, d1, b);
  DMux g9(in, sel11, d2, d);
  DMux g10(in, sel10, d3, c);
endmodule
