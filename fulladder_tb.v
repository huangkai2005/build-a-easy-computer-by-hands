
`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "xor.v"
`include "halfadder.v"
`include "fulladder.v"

module fulladder_tb;
    reg a,b,c;
    wire s, cr;
    FullAdder obj(a, b, c, s, cr);
   
    initial begin
    a=0;
    b=0;
    c=0;
    #10 c=1;
    #10 b=1;
        c=0;
    #10 c=1;
    #10 b=1;
    #10 a=1;
        b=0;
        c=0;
    #10 c=1;
    #10 b=1;
        c=0;
    #10 c=1;
    end
   
    initial begin 
        $monitor("a=%d b=%d c=%d sum=%d carry=%d", a, b, c, s, cr);
    end
endmodule
