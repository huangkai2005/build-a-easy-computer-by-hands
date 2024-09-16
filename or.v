module Or(input a, b, output out);
  wire not_a, not_b;
  //经过两个非门
  not u1(not_a, a);
  not u2(not_b, b);
  //根据离散数学的知识 ~ (a&b)=~a|~b 也就是说只要将与非门的结果取反就是或门
  nand u3(out,not_a, not_b);
endmodule

