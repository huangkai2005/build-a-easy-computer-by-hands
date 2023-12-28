
`include "ram16k.v"

module ram16k_tb;
    reg[15:0] in;
    reg clk,load;
    reg [13:0] address;
    wire[15:0] out;
    RAM16K obj(in, clk, load, address, out);
    parameter dely=10;

    initial begin
        in=16'h0000;
        clk=0;
        load=0;
        #dely in=16'h0000;
        clk=1;
        load=1;
        address=0;
        #dely clk=0;
        #dely in=16'h1000;
        clk=1;
        address=1;
        #dely clk=0;
        #dely in=16'h2000;
        clk=1;
        address=2;
        #dely clk=0;
        #dely in=16'h3000;
        clk=1;
        address=3;
        #dely clk=0;
        #dely in=16'h4000;
        clk=1;
        address=4;
        #dely clk=0;
        #dely in=16'h5000;
        clk=1;
        address=5;
        #dely clk=0;
        #dely in=16'h6000;
        clk=1;
        address=6;
        #dely clk=0;
        #dely in=16'h7000;
        clk=1;
        address=7;
        #dely clk=0;
        #dely in=16'h0016;
        clk=1;
        address=16;
        #dely clk=0;
        #dely in=16'h0017;
        clk=1;
        address=17;
        #dely clk=0;
        #dely in=16'h0027;
        clk=1;
        address=27;
        #dely clk=0;
        #dely in=16'h0035;
        clk=1;
        address=35;
        #dely clk=0;
        #dely in=16'h0058;
        clk=1;
        address=58;
        #dely clk=0;
        #dely in=16'h0063;
        clk=1;
        address=63;
        #dely clk=0;
        #dely in=16'h1111;
        clk=1;
        address=1111;
        #dely clk=0;
        #dely in=16'h2112;
        clk=1;
        address=2112;
        #dely clk=0;
        load=0;
        #dely  address=0;
        #dely address=1;
        #dely address=2;
        #dely address=3;
        #dely address=4;
        #dely address=5;
        #dely address=6;
        #dely address=7;
        #dely address=16;
        #dely address=17;
        #dely address=27;
        #dely address=35;
        #dely address=58;
        #dely address=63;
        #dely address=1111;
        #dely address=2112;
        #dely $finish;
    end

    initial begin
        $monitor($time,,,"in=%x clk=%d address=%d out=%x\n", in, clk, address, out);
    end

endmodule
