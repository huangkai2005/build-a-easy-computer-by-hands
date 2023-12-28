`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "xor.v"
`include "halfadder.v"
`include "fulladder.v"
`include "add16.v"
`include "inc16.v"

module inc16_tb;
    reg[15:0] in;
    wire[15:0] out;
    Inc16 obj(in, out);

    initial begin
        in=16'h0000;
        #10 in=16'h0f01;
        #10 in=16'ha211;
        #10 in=16'ha21f;
        #10 in=16'hefff;
        #10 in=16'hfffe;
        #10 in=16'hffff;
    end

    initial begin
        $monitor("%x + 1 =%x \n", in, out);
    end

endmodule
