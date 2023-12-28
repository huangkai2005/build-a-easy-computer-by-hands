`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "and16.v"

module and16_tb;
    reg[15:0] a, b;
    wire[15:0] out;
    And16 obj(a, b, out);

    initial begin
        a=16'h0000;
        b=16'h0000;
        #10 b=16'h0001;
        #10 a=16'ha211;
            b=16'h0730;
        #10 a=16'h0001;
            b=16'h0003;
    end

    initial begin
        $monitor("a=%x b=%x out=%x \n", a, b, out);
    end

endmodule
