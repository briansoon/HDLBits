// Exercise 3-1-12: Combine Circuits A and B
module AnB (
    input x,
    input y,
    input z
);
    // output from submodules
    wire or1, or2, and1, and2;

    // input for final output
    wire o_or, o_and;

    // submodules
    CktA A1(.x(x), .y(y), .z(or1));
    CktB B1(.x(x), .y(y), .z(or2));
    CktA A2(.x(x), .y(y), .z(and1));
    CktB B2(.x(x), .y(y), .z(and2));

    // circuit
    assign o_or = or1 | or2;
    assign o_and = and1 & and2;
    assign z = o_or ^ o_and;
endmodule

module CktA (input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module CktB (input x, input y, output z);
    // From waveform: z = ~(x ^ y) (XNOR)
    assign z = ~(x ^ y);
endmodule