/**
 * Demultiplexor:
 * if sel == 0, a= in, b = 0;
 * if sel == 1, a= 0, b = in;
 */

module DMux(input in, sel, output a, b);
  Not g1(sel, nsel);
  And g2(nsel, in, a);
  And g3(sel,  in, b);
endmodule



