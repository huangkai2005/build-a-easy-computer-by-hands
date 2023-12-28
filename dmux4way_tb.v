`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "dmux.v"
`include "dmux4way.v"

module dmux4way_tb;
    wire a, b, c, d;
    reg[1:0] sel;
    reg in;
    DMux4Way obj(in, sel, a, b, c, d);

    initial begin
        in=1;
        sel=0;
        #10 sel=1;
        #10 sel=2;
        #10 sel=3;
        #10 sel=0;
            in=0;
        #10 sel=1;
        #10 sel=2;
        #10 sel=3;
    end

    initial begin
        $monitor("in=%x a=%x b=%x c=%x d=%x sel=%d \n", in, a, b, c, d, sel);
    end

endmodule
