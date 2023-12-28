`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "mux.v"
`include "mux16.v"

module mux16_tb;
    reg[15:0] a, b;
    reg sel;
    wire[15:0] out;
    Mux16 obj(a, b, sel, out);

    initial begin
        a=16'h0000;
        b=16'h0000;
        sel=0;
        #10 b=16'h0001;
            sel = 1;
        #10 a=16'ha211;
            b=16'h0730;
            sel = 0;
        #10 a=16'h0001;
            b=16'h0003;
            sel = 1;
        #10 a=16'h0211;
            b=16'h0090;
            sel = 0;
        #10 a=16'h1001;
            b=16'ha211;
            sel = 1;
    end

    initial begin
        $monitor("a=%x b=%x sel=%d out=%x \n", a, b, sel, out);
    end

endmodule
