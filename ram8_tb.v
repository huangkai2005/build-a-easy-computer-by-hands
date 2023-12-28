`include "nand.v"
`include "not.v"
`include "or.v"
`include "nor.v"
`include "and.v"
`include "and16.v"
`include "dmux.v"
`include "dmux4way.v"
`include "dmux8way.v"
`include "mux4way16.v"
`include "mux.v"
`include "mux16.v"
`include "mux8way16.v"
`include "srff.v"
`include "dff.v"
`include "register.v"
`include "ram8.v"

module ram8_tb;
    reg[15:0] in;
    reg clk,load;
    reg [2:0] address;
    wire[15:0] out;
    RAM8 obj(in, clk, load, address, out);

    always #10 clk=~clk;

    initial begin
        in=16'h0000;
        load=1;
        clk=0;
        address=3'b000;
#10
        #10 in=16'h1000;
        address=3'b001;
#10
        #10 in=16'h2000;
        address=3'b010;
#10
        #10 in=16'h3000;
        address=3'b011;
#10
        #10 in=16'h4000;
        address=3'b100;
#10
        #10 in=16'h5000;
        address=3'b101;
#10
        #10 in=16'h6000;
        address=3'b110;
#10
        #10 in=16'h7000;
        address=3'b111;
#10
 #10       load=0;
        #10  address=3'b000;
        #10 address=3'b001;
        #10 address=3'b010;
        #10 address=3'b011;
        #10 address=3'b100;
        #10 address=3'b101;
        #10 address=3'b110;
        #10 address=3'b111;
        $finish;
    end

    initial begin
        $monitor($time,,,"in=%x clk=%d load=%d address=%d out=%x\n", in, clk, load, address, out);
    end

endmodule
