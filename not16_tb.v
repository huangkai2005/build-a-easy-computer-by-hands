`include "nand.v"
`include "not.v"
`include "or.v"
`include "and.v"
`include "not16.v"

module not16_tb;
    reg[15:0] in;
    wire[15:0] out;
    Not16 obj(in, out);

    initial begin
        in=16'h0000;
        #10 in=16'h0001;
        #10 in=16'ha211;
        #10 in=16'h0001;
    end

    initial begin
        $monitor("in=%x out=%x \n", in, out);
    end

endmodule
