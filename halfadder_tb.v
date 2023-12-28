`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "xor.v"
`include "halfadder.v"

module halfadder_tb;
    reg a, b;
    wire sum, carry;
    HalfAdder obj(a, b, sum, carry);

    initial begin
        a=0;
        b=0;
        #10 b = 1;
        #10 a = 1;
            b = 0;
        #10 a = 1;
            b = 1;
    end

    initial begin
        $monitor("a=%d b=%d sum=%d carry=%d \n", a, b, sum, carry);
    end

endmodule
