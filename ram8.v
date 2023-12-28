

module RAM8(input[15:0] in, input clk, load, input[2:0] address, output[15:0] out);
  wire[15:0] o0,o1,o2,o3,o4,o5,o6,o7;
	
  DMux8Way g0(load, address, loadA, loadB, loadC, loadD, loadE, loadF, loadG, loadH);
  
  Register r0(in, clk, loadA, o0);
  Register r1(in, clk, loadB, o1);
  Register r2(in, clk, loadC, o2);
  Register r3(in, clk, loadD, o3);
  Register r4(in, clk, loadE, o4);
  Register r5(in, clk, loadF, o5);
  Register r6(in, clk, loadG, o6);
  Register r7(in, clk, loadH, o7);
  
  Mux8Way16 g1(o0, o1, o2, o3, o4, o5, o6, o7, address, out);
endmodule
