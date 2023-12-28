/**
 * 8-way demultiplexor:
 * {a, b, c, d, e, f, g, h} = {in, 0, 0, 0, 0, 0, 0, 0} if sel == 000
 *                            {0, in, 0, 0, 0, 0, 0, 0} if sel == 001
 *                            etc.
 *                            {0, 0, 0, 0, 0, 0, 0, in} if sel == 111
 */

module DMux8Way(input in, input[2:0] sel, output a,b,c,d,e,f,g,h);
  Not g1(sel[2], nsel2);
  And g2(in, sel[2], s2h);
  And g3(in, nsel2,  s2l);
  DMux4Way g4(s2h, sel[1:0], e, f, g, h);
  DMux4Way g5(s2l, sel[1:0], a, b, c, d);
endmodule


