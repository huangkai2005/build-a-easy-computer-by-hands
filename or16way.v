/**
 * 16-way Or: 
 * out = (in[0] or in[1] or ... or in[15])
 */

module Or16Way(input[15:0] in,output out);
    // your code here
    wire [7:0] or_intermediate1;
    wire [3:0] or_intermediate2;
    wire [1:0] or_intermediate3;

    // 第一层 OR 门 (16 -> 8)
    Or or0 (.a(in[0]), .b(in[1]), .out(or_intermediate1[0]));
    Or or1 (.a(in[2]), .b(in[3]), .out(or_intermediate1[1]));
    Or or2 (.a(in[4]), .b(in[5]), .out(or_intermediate1[2]));
    Or or3 (.a(in[6]), .b(in[7]), .out(or_intermediate1[3]));
    Or or4 (.a(in[8]), .b(in[9]), .out(or_intermediate1[4]));
    Or or5 (.a(in[10]), .b(in[11]), .out(or_intermediate1[5]));
    Or or6 (.a(in[12]), .b(in[13]), .out(or_intermediate1[6]));
    Or or7 (.a(in[14]), .b(in[15]), .out(or_intermediate1[7]));

    // 第二层 OR 门 (8 -> 4)
    Or or8 (.a(or_intermediate1[0]), .b(or_intermediate1[1]), .out(or_intermediate2[0]));
    Or or9 (.a(or_intermediate1[2]), .b(or_intermediate1[3]), .out(or_intermediate2[1]));
    Or or10 (.a(or_intermediate1[4]), .b(or_intermediate1[5]), .out(or_intermediate2[2]));
    Or or11 (.a(or_intermediate1[6]), .b(or_intermediate1[7]), .out(or_intermediate2[3]));

    // 第三层 OR 门 (4 -> 2)
    Or or12 (.a(or_intermediate2[0]), .b(or_intermediate2[1]), .out(or_intermediate3[0]));
    Or or13 (.a(or_intermediate2[2]), .b(or_intermediate2[3]), .out(or_intermediate3[1]));

    // 最后一层 OR 门 (2 -> 1)
    Or or14 (.a(or_intermediate3[0]), .b(or_intermediate3[1]), .out(out));


endmodule


