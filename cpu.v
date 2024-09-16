module CPU(
    input [15:0] inM,         // M value input (M = contents of RAM[A])
    input [15:0] instruction, // Instruction for execution
    input clock,              // Clock signal
    input reset,              // Reset signal

    output [15:0] outM,       // M value output
    output writeM,            // Write to M?
    output [14:0] addressM,   // Address in data memory (of M)
    output [14:0] pc          // Address of next instruction
);
    wire [15:0] inAR, outAR, outALU, pcOut, outAM, outDR;
    wire isC, isA, isLT, isEQ, isGT, isTjump, isQjump, isjump;
    wire zx, nx, zy, ny, f, no;
    wire isWriteDR, isWriteAR;
    wire zr, ng;  // ALU flags

    // Decode the instruction
    // 取出第15位的信息
    Not n1(instruction[15], isA);
    Not n2(isA, isC);
   // 取出0-	
    And a4(instruction[4], isC, isWriteDR);
    And a2(instruction[2], isC, isLT);
    And a0(instruction[0], isC, isGT);
    And a3(instruction[3], isC, writeM);
    And a1(instruction[1],isC,isEQ);



    // Mux for inAR selection
    Mux16 m1(outALU, instruction, isA, inAR);
    Or o1(isC, isA, isWriteAR);
    Register A(inAR, clock, isWriteAR, outAR);

    // Mux for outAM selection
    Mux16 m3(outAR, inM, instruction[12], outAM);

    // ALU control signals
    And a6(instruction[6], isC, zx);
    And a7(instruction[7], isC, nx);
    And a8(instruction[8], isC, zy);
    And a9(instruction[9], isC, ny);
    And a10(instruction[10], isC, f);
    And a11(instruction[11], isC, no);

    // ALU computation
    ALU alu(outDR, outAM, zx, nx, zy, ny, f, no, outALU, zr, ng);

    // Jump conditions
    Not nn1(ng, notng);
    Not nn2(zr, notzr);
    And ad1(ifLT,ng,isTjump);// Tjump
    And ad4(isEQ, zr, isEQjump);// EQjump
    And ad2(notng,notzr,isQuGt);
    Or o4(isTjump,isEQjump,isjump);// isjump
    And ad5(isQuGt,isGt,isGtjump);// isGTjump

    // PC Update
    Or o3(isjump, isGtjump, jump);
    PC pcm(outAR, !clock, jump, 1'b1, reset, pcOut);
    assign pc = pcOut[14:0];

    // Output assignments
    assign addressM = outAR[14:0];
    assign outM = outALU;
endmodule

