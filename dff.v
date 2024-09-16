
module DFF(input in, clock, load, output out);
  wire in1, q1, q2;
  wire clock_not, in_not,out_dot;

  // 反转 clock 信号
  not n1(clock_not, clock);
  // 反转输入信号
  not n2(in_not, in);

  // 多路选择器：根据 load 信号选择 in 或 out 作为 SRFF 的输入
  Mux m(out,in, load, in1);

  // 第一个 SRFF
  SRFF srff1(in1, clock_not, in_not, q1, q2);

  // 第二个 SRFF
  SRFF srff2(q1, clock, q2, out,out_dot );
endmodule

