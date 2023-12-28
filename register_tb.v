`include "nand.v"
`include "not.v"
`include "or.v"
`include "and.v"
`include "nor.v"
`include "mux.v"
`include "srff.v"
`include "dff.v"
`include "register.v"

module register_tb;
    reg[15:0] in;
    reg clk,load;
    wire[15:0] out;
    Register obj(in, clk, load, out);

    always #20 clk=~clk;

    initial begin
        in=16'h0000;
        clk=0;
        load=0;
        #10 load=1;in=16'ha000;
        #10 in=16'h0a00;
        load=1;
        #10 in=16'h000f;
        load=1;
        #10 in=16'h000c;
        #10 in=16'h0d00;
        load=0;
        #10 in=16'he000;
        #10 load=1;in=16'h0030;
        #10 in=16'h2000;
        #10 in=16'h0070;
        #10 $finish;
    end

    initial begin
        $monitor($time,,,"in=%x clk=%d load=%d out=%x\n", in, clk, load, out);
    end

endmodule
