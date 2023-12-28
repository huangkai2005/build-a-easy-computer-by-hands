`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "xor.v"
`include "halfadder.v"
`include "fulladder.v"
`include "add16.v"

module add16_tb;
    reg signed [15:0] a, b;
    wire signed [15:0] out;
    Add16 obj(a, b, out);

    initial begin
        a=16'h0001;
        b=16'h1080;
        #10 b=16'h0001;
        #10 a=16'ha211;
            b=16'h0730;
        #10 a=16'h8001;
            b=16'h8003;
        #10 a=1;
            b=-5;
    end

    initial begin
        $monitor("%x + %x =%x , %d + %d =%d\n", a, b, out, a, b, out);
    end

endmodule
