
module HalfAdder(input a,b, output sum, carry);
  // your code here
	xor p1(sum,a,b);
	and  p2(carry,a,b);	
endmodule

