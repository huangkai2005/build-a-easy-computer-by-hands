`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "mux.v"
`include "mux16.v"
`include "mux4way16.v"

module mux4way16_tb;
    reg[15:0] a, b, c, d;
    reg[1:0] sel;
    wire[15:0] out;
    Mux4Way16 obj(a, b, c, d, sel, out);

    initial begin
        a=16'h0000;
        b=16'h0000;
        c=16'h0000;
        d=16'h0000;
        sel=2'b00;
        #10 b=16'h0001;
        c=16'h0010;
        d=16'h1000;
            sel=2'b01;
        #10 a=16'ha211;
            b=16'h0730;
            sel=2'b10;
        #10 a=16'h0001;
            b=16'h0003;
        c=16'h0010;
        d=16'h1000;
            sel=2'b11;
        #10 a=16'h0211;
            b=16'h0090;
            sel=2'b00;
        #10 a=16'h1001;
            b=16'ha211;
            sel=2'b11;
    end

    initial begin
        $monitor("a=%x b=%x c=%x d=%x sel=%d out=%x \n", a, b, c, d, sel, out);
    end

endmodule
