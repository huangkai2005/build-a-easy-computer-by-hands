`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "and16.v"
`include "xor.v"
`include "halfadder.v"
`include "fulladder.v"
`include "add16.v"
`include "inc16.v"
`include "dmux.v"
`include "dmux4way.v"
`include "dmux8way.v"
`include "mux4way16.v"
`include "mux.v"
`include "mux16.v"
`include "mux8way16.v"
`include "dff.v"
`include "register.v"
`include "pc.v"

module pc_tb;
reg[15:0] in;
reg load, inc, reset, clock;
wire[15:0] out;

PC pc(in, clock, load, inc, reset, out);

initial
begin
  clock = 0;
  $monitor("%4dns clock=%d in=%d reset=%d inc=%d load=%d out=%d", $stime, clock, in, reset, inc, load, out);
	inc = 0; load = 0; reset=0; in=7;
	#10 reset=1; inc=1; 
	#10 reset=0;
	#10 reset=0;
	#30 inc = 0; load=1;
	#30 load = 0; inc=1;
	#30	$finish;
end

always #2 begin
  clock = clock + 1;
end

endmodule
