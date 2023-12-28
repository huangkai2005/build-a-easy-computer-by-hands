`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "mux.v"
`include "srff.v"
`include "dff.v"

module dff_tb;
    reg in, clk,load;
    wire out,out1;
    DFF obj(in, clk, load, out);
    always #20 clk=~clk;

    initial begin
        clk=0;
        in=1;
        load=1;
        #10
        #10
        #10
        in=0;
        #10
        #10
        #10
        #10
        load=0;
        #10
        in=1;
        #10
        #10 $finish;
    end

    initial begin
        $monitor($time,,,"in=%d clk=%d load=%d out=%d\n", in, clk, load, out);
    end

endmodule
