`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "mux.v"
`include "mux16.v"
`include "mux4way16.v"
`include "mux8way16.v"

module mux8way16_tb;
    reg[15:0] a, b, c, d, e, f, g, h;
    reg[2:0] sel;
    wire[15:0] out;
    Mux8Way16 obj(a, b, c, d, e, f, g, h, sel, out);

    initial begin
        a=16'h0000;
        b=16'h0000;
        c=16'h0000;
        d=16'h0000;
        e=16'h0000;
        f=16'h0000;
        g=16'h0000;
        h=16'h0000;
        sel=3'b000;
        #10 b=16'h0001;
        c=16'h0010;
        d=16'h1000;
            sel=3'b001;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
        #10 a=16'ha211;
            b=16'h0730;
            sel=3'b010;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
        #10 a=16'h0001;
            b=16'h0003;
        c=16'h0010;
        d=16'h1000;
            sel=3'b011;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
        #10 a=16'h0211;
            b=16'h0090;
sel=3'b100;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
        #10 a=16'h1001;
            b=16'ha211;
sel=3'b101;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
        #10 a=16'h1001;
            b=16'ha211;
sel=3'b110;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
        #10 a=16'h1001;
            b=16'ha211;
sel=3'b111;
        e=16'h1010;
        f=16'ha010;
        g=16'hc080;
        h=16'hb020;
    end

    initial begin
        $monitor("a=%x b=%x c=%x d=%x e=%x f=%x g=%x h=%x sel=%d out=%x \n", a, b, c, d, e, f, g, h, sel, out);
    end

endmodule
