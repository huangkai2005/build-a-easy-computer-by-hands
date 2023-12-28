
module RAM64(input [15:0] in, input clk,load, input [5:0] address, output [15:0] out);
    wire[15:0] o1, o2, o3, o4, o5, o6, o7, o8;
    DMux8Way d1(load, address[5:3], loadA, loadB, loadC, loadD, loadE, loadF, loadG, loadH);

    RAM8 r1(in, clk, loadA, address[2:0], o1);
    RAM8 r2(in, clk, loadB, address[2:0], o2);
    RAM8 r3(in, clk, loadC, address[2:0], o3);
    RAM8 r4(in, clk, loadD, address[2:0], o4);
    RAM8 r5(in, clk, loadE, address[2:0], o5);
    RAM8 r6(in, clk, loadF, address[2:0], o6);
    RAM8 r7(in, clk, loadG, address[2:0], o7);
    RAM8 r8(in, clk, loadH, address[2:0], o8);

    Mux8Way16 m1(o1, o2, o3, o4, o5, o6, o7, o8, address[5:3], out);
endmodule
