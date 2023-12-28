`include "nand.v"
`include "not.v"

module not_tb;
    reg in;
    wire out;
    Not obj(in, out);

    initial begin
        in=0;
        #10 in = 1;
    end

    initial begin
        $monitor("in=%d out=%d \n", in, out);
    end

endmodule
