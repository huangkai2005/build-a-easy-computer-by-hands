`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "dmux.v"

module dmux_tb;
    reg in, sel;
    wire a, b;
    DMux obj(in, sel, a, b);

    initial begin
        in=0;
        sel=0;
        #10 sel = 1;
        #10 in = 1;
        #10 sel = 0;
            in = 1;
    end

    initial begin
        $monitor("a=%d b=%d sel=%d in=%d \n", a, b, sel, in);
    end

endmodule
