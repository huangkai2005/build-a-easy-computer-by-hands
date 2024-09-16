module Add16(
 input [15:0] a, b,
    output [15:0] out
);
    wire [15:0] carry; // 进位信号

    // 实例化16个FullAdder
    FullAdder fa0 (a[0], b[0], 1'b0, out[0], carry[0]); // 第一个加器没有进位输入
    FullAdder fa1 (a[1], b[1], carry[0], out[1], carry[1]);
    FullAdder fa2 (a[2], b[2], carry[1], out[2], carry[2]);
    FullAdder fa3 (a[3], b[3], carry[2], out[3], carry[3]);
    FullAdder fa4 (a[4], b[4], carry[3], out[4], carry[4]);
    FullAdder fa5 (a[5], b[5], carry[4], out[5], carry[5]);
    FullAdder fa6 (a[6], b[6], carry[5], out[6], carry[6]);
    FullAdder fa7 (a[7], b[7], carry[6], out[7], carry[7]);
    FullAdder fa8 (a[8], b[8], carry[7], out[8], carry[8]);
    FullAdder fa9 (a[9], b[9], carry[8], out[9], carry[9]);
    FullAdder fa10 (a[10], b[10], carry[9], out[10], carry[10]);
    FullAdder fa11 (a[11], b[11], carry[10], out[11], carry[11]);
    FullAdder fa12 (a[12], b[12], carry[11], out[12], carry[12]);
    FullAdder fa13 (a[13], b[13], carry[12], out[13], carry[13]);
    FullAdder fa14 (a[14], b[14], carry[13], out[14], carry[14]);
    FullAdder fa15 (a[15], b[15], carry[14], out[15], carry[15]);

endmodule

