/**
 * The ALU (Arithmetic Logic Unit).
 * Computes one of the following functions:
 * x+y, x-y, y-x, 0, 1, -1, x, y, -x, -y, !x, !y,
 * x+1, y+1, x-1, y-1, x&y, x|y on two 16-bit inputs, 
 * according to 6 input bits denoted zx,nx,zy,ny,f,no.
 * In addition, the ALU computes two 1-bit outputs:
 * if the ALU output == 0, zr is set to 1; otherwise zr is set to 0;
 * if the ALU output < 0, ng is set to 1; otherwise ng is set to 0.
 */

// Implementation: the ALU logic manipulates the x and y inputs
// and operates on the resulting values, as follows:
// if (zx == 1) set x = 0        // 16-bit constant
// if (nx == 1) set x = !x       // bitwise not
// if (zy == 1) set y = 0        // 16-bit constant
// if (ny == 1) set y = !y       // bitwise not
// if (f == 1)  set out = x + y  // integer 2's complement addition
// if (f == 0)  set out = x & y  // bitwise and
// if (no == 1) set out = !out   // bitwise not
// if (out == 0) set zr = 1
// if (out < 0) set ng = 1


module ALU(input[15:0] x, y, input zx,nx,zy,ny,f,no, output[15:0] out, output zr, ng);
  wire[15:0] x1, notx1, x2, y1, noty1, y2, andxy, addxy, o1, noto1, o2;
  wire notzr;
  // your code here, use Mux16,Not16,Add16,And16,Or16Way,IsNeg to implement
  // if (zx == 1) set x = 0  

  // if (nx == 1) set x = !x


  // if (zy == 1) set y = 0

  // if (ny == 1) set y = !y


  // addxy = x + y

  // andxy = x & y

  // if (f == 1)  set out = x + y else set out = x & y

  // if (no == 1) set out = !out



  // zr


  // ng

  
endmodule
