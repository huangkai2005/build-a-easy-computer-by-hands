
module CPU(
    input[15:0]  inM,         // M value input  (M = contents of RAM[A])
                 instruction, // Instruction for execution
    input clock, reset,       // Signals whether to re-start the current
                              // program (reset==1) or continue executing
                              // the current program (reset==0).

    output[15:0] outM,        // M value output
    output       writeM,      // Write to M? 
    output[14:0] addressM,    // Address in data memory (of M)
                 pc          // address of next instruction
    );
    wire[15:0] inAR, outAR, outALU, pcOut, outAM, outDR;
    // your code here
    // if (instruction[15]==1) set isC=1, else set isA=1


    // instruction[5:3] is dest domin
    //instruction[5]=1 set AR=outALU,instruction[4]=1 set DR=outALU,instruction[3]=1 set M[A]=outALU
    // if (isC&instruction[4]) set isWriteDR=1,outDR=outALU


    // if (isA) set inAR=instruction, or set inAR=outALU
    // if (isA|instruction[5]) set isWriteAR=1



    // check use A or M from instruction[12](a bit)

    // set alu input from instruction[6]/7/8/9/10/11,outDR,outAM








    // if (isC&instruction[3]) set writeM=1, then set outM=outALU
    //assign addressM = outAR[14:0];



    // isLT=instruction[2], if(isLT&&ng) set isLtJump=1


    // isEQ=instruction[1], if(isEQ&&zr) set isEqJump=1


    // if out>0,set isOutGt=1



    // isGT=instruction[0], if(isGT&&isOutGt) set isGtJump=1


    // if(isLtJump|isEqJump|isGtJump) set jump=1


    // set pcOut according to jump,reset,outAR. use PC module

    //assign pc = pcOut[14:0];


endmodule
