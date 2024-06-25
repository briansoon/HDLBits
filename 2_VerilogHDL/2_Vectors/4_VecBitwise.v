// Exercise 2-2-4: Bitwise Operators
module VecBitwise (
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    // Bitwise OR
    assign out_or_bitwise = a | b;

    // Logical OR
    assign out_or_logical = a || b;

    // Bitwise NOT
    assign out_not = ~{b,a};
endmodule