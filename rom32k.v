module ROM32K(input[14:0] address, output[15:0] out);
  reg[15:0] m[0:2**14-1];
	
  assign out = m[address];
endmodule
