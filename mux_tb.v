`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "mux.v"

module mux_tb;
    reg a, b, sel;
    wire out;
    Mux obj(a, b, sel, out);

    initial begin
        a=0;
        b=0;
        sel=0;
        #10 sel = 1;
        #10 b = 1;
            sel = 0;
        #10 sel = 1;
        #10 a = 1;
            b = 0;
            sel = 0;
        #10 sel=1;
        #10 b=1;
            sel=0;
        #10 sel=1;
    end

    initial begin
        $monitor("a=%d b=%d sel=%d out=%d \n", a, b, sel, out);
    end

endmodule
