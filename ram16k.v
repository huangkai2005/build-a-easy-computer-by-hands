

module RAM16K(input[15:0] in, input clock, load, input[13:0] address, output[15:0] out);
  reg[15:0] m[0:2**13-1];
	
  assign out = m[address];
	
  always @(posedge clock) begin
    if (load) m[address] = in;
  end
endmodule
