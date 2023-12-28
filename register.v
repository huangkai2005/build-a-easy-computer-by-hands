/**
 * 16-bit register:
 * If clk[t] == 1 then out[t+1] = in[t]
 * else out does not change
 */

module Register(input[15:0] in, input clock, load, output[15:0] out);
  DFF g01(in[15], clock, load, out[15]);
  DFF g02(in[14], clock, load, out[14]);
  DFF g03(in[13], clock, load, out[13]);
  DFF g04(in[12], clock, load, out[12]);
  DFF g05(in[11], clock, load, out[11]);
  DFF g06(in[10], clock, load, out[10]);
  DFF g07(in[9],  clock, load, out[9]);
  DFF g08(in[8],  clock, load, out[8]);
  DFF g09(in[7],  clock, load, out[7]);
  DFF g10(in[6],  clock, load, out[6]);
  DFF g11(in[5],  clock, load, out[5]);
  DFF g12(in[4],  clock, load, out[4]);
  DFF g13(in[3],  clock, load, out[3]);
  DFF g14(in[2],  clock, load, out[2]);
  DFF g15(in[1],  clock, load, out[1]);
  DFF g16(in[0],  clock, load, out[0]);
endmodule
