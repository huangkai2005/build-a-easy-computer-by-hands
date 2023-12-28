`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "or16way.v"

module or16way_tb;
    reg[15:0] in;
    wire out;
    Or16Way obj(in, out);

    initial begin
        in=16'h0000;
        #10 in=16'h0001;
        #10 in=16'ha211;
        #10 in=16'h0001;
        #10 in=16'h0100;
    end

    initial begin
        $monitor("in=%x out=%x \n", in, out);
    end

endmodule
