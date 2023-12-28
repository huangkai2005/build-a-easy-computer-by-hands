`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "xor.v"
`include "halfadder.v"
`include "fulladder.v"
`include "dmux.v"
`include "dmux4way.v"
`include "dmux8way.v"
`include "mux4way16.v"
`include "mux.v"
`include "mux16.v"
`include "and16.v"
`include "and15.v"
`include "add16.v"
`include "not16.v"
`include "inc16.v"
`include "or16way.v"
`include "isneg.v"
`include "mux8way16.v"
`include "srff.v"
`include "dff.v"
`include "register.v"
`include "ram8k.v"
`include "ram16k.v"
`include "rom32k.v"
`include "memory.v"
`include "pc.v"
`include "alu.v"
`include "cpu.v"
`include "computer.v"

module main;
reg reset, clock;

Computer c(clock, reset);

integer i;

initial
begin
  $readmemb("mult.o", c.rom.m);
  for (i=0; i < 32; i=i+1) begin
    $display("%4x: %x", i, c.rom.m[i]);
  end
  $monitor("%4dns reset = %d clock=%d pc=%d I=%x A=%4x D=%d M[A]=%d ram[0]=%d ram[1]=%d ram[2]=%d screen[2]=%d"
	, $stime, reset, clock, c.pc, c.I, c.addressM, c.cpu.outDR, c.outM,c.ram.ram16k.m[0],c.ram.ram16k.m[1],c.ram.ram16k.m[2],c.ram.screen.m[2]);
	clock = 0;
	#10 reset=1;
	#30 reset=0;
end

always #5 begin
  clock = clock + 1;
end

initial #1800 $finish;

endmodule
