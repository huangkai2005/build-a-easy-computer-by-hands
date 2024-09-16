module ALU(
  input [15:0] x, y,
  input zx, nx, zy, ny, f, no,
  output [15:0] out,
  output zr, ng
);
  wire [15:0] x1, notx1, x2, y1, noty1, y2, andxy, addxy, o1, noto1;
  wire notzr;


  // 十六位控制模块实例化
  // x的输入
      Mux16 m1( x,16'b0, zx,x1);
      Not16 n1( x1,notx1);
      Mux16 m2( x1,notx1, nx,x2);
  // y 
      Mux16 m3( y, 16'b0, zy,y1);
      Not16 n2( y1,noty1);
      Mux16 m4( y1, noty1, ny,y2);
   // 求和与求与  
      Add16 a1(x2,y2,addxy);
      And16 a2(x2,y2,andxy);

  // 多路选择器和输出控制
  Mux16 m5(addxy, andxy, f,o1);
  Not16 n3( o1,noto1);
  Mux16 m6( noto1, o1, no,out);

  // zr 和 ng 计算
  Or16Way o1_or(out,notzr);
  Not n4(notzr,zr);
  IsNeg i1(out,ng);

endmodule

