
module Computer(input clock, reset);
  wire[15:0] inM, outM, I;
	wire[14:0] addressM, pc;
	
  Memory ram(inM, clock, writeM, addressM, outM);   //ram
  ROM32K rom(pc, I);				    // rom	
  CPU    cpu(outM, I, clock, reset, inM, writeM, addressM, pc);	// cpu
endmodule
