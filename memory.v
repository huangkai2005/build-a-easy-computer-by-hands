

module Memory(input[15:0] in, input clock, write, input[14:0] address, output[15:0] out);
  wire[15:0] outRam, outS, outK;

  // select ram/screen/keyboard according to address[14:13], 00/01 is RAM, 10 is screen, 11 is keyboard
  DMux4Way g1(write, address[14:13], writeA, writeB, writeS, writeKK);

  And a1(1'b1, address[14], k1);
  And a2(1'b1, address[13], k2);
  And a3(k1, k2, writeK);

  // 00|01 
  Or g2(writeA, writeB, writeRam);
    
  RAM16K ram16k(in, clock, writeRam, address[13:0], outRam);
  RAM8K screen(in, clock, writeS, address[12:0], outS);
  Register keyboard(16'h0005, clock, writeK, outK);

  Mux4Way16 g6(outRam, outRam, outS, outK, address[14:13], out);

endmodule
