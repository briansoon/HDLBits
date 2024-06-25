// Exercise 3-1-1-9: Two-bit equality
module TwoBitEqual (
    input [1:0] A,
    input [1:0] B,
    output z
);
    // equality
    assign z = (A == B) ? 1 : 0;
endmodule