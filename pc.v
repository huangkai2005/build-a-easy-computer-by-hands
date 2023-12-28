/**
 * A 16-bit counter with jump and reset control bits.
 * if      (reset[t] == 1) out[t+1] = 0
 * else if (jump[t] == 1)  out[t+1] = in[t]
 * else if (inc[t] == 1)   out[t+1] = out[t] + 1  (integer addition)
 * else                    out[t+1] = out[t]
 */

module PC(input[15:0] in, input clock, jump, inc, reset, output[15:0] out);
  wire[15:0] if1, if2, if3, oInc, o;
	
  Or g1(jump, inc, jumpInc);
  Or g2(jumpInc, reset, jumpIncReset);

  Inc16 inc1(o, oInc);
  And16 g3(o, o, out);
  
  Mux16 g4(o,   oInc,  inc,   if1);
  Mux16 g5(if1, in,    jump,  if2);
  Mux16 g6(if2, 16'b0, reset, if3);

  Register reg1(if3, clock, jumpIncReset, o);
endmodule
