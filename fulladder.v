module FullAdder(
    input a,
    input b,
    input c,
    output sum,
    output carry
);
    wire s1, c1, c2;

    // Instantiate two half-adders
    HalfAdder HA1 (
        .a(a),
        .b(b),
        .sum(s1),
        .carry(c1)
    );

    HalfAdder HA2 (
        .a(s1),
        .b(c),
        .sum(sum),
        .carry(c2)
    );

    // Carry output is the OR of the two carry outputs from the half-adders
	or o(carry,c1,c2);
endmodule

