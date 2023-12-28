`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "srff.v"

module d_latch_tb;
    reg R, clk,S;
    wire Q,Q_dot;
    SRFF obj(R, clk, S, Q, Q_dot);

    always #10 clk=~clk;

    initial begin
        clk=0;
        R=0;
        S=1;
        #10
        R=0;
        S=1;
        #10
        S=0;
        R=1;
        #10
        R=0;
        S=1;
        #10
        R=0;
        S=1;
        #10
        R=1;
        S=0;
        #10
        R=0;
        S=1;
        #10
        R=0;
        S=1;
        #10 $finish;
    end

    initial begin
        $monitor($time,,,"R=%d clk=%d S=%d Q=%d Q_dot=%d\n", R, clk, S, Q, Q_dot);
    end

endmodule
