`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "isneg.v"

module isneg_tb;
    reg[15:0] in;
    wire out;
    IsNeg obj(in, out);

    initial begin
        in=16'h0001;
        #10 in=16'h0020;
        #10 in=16'h7020;
        #10 in=16'h8300;
        #10 in=16'ha000;
    end

    initial begin
        $monitor("in=%x out=%x \n", in, out);
    end

endmodule
