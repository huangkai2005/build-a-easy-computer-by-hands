`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "dmux.v"
`include "dmux4way.v"
`include "dmux8way.v"

module dmux8way_tb;
    wire a, b, c, d, e, f, g, h;
    reg[2:0] sel;
    reg in;
    DMux8Way obj(in, sel, a, b, c, d, e, f, g, h);

    initial begin
        in=1;
        sel=0;
        #10 sel=1;
        #10 sel=2;
        #10 sel=3;
        #10 sel=4;
        #10 sel=5;
        #10 sel=6;
        #10 sel=7;
        #10 sel=0;
            in=0;
        #10 sel=1;
        #10 sel=2;
        #10 sel=3;
        #10 sel=4;
        #10 sel=5;
        #10 sel=6;
        #10 sel=7;
    end

    initial begin
        $monitor("in=%x a=%x b=%x c=%x d=%x e=%x f=%x g=%x h=%x sel=%d\n", in, a, b, c, d, e, f, g, h, sel);
    end

endmodule
