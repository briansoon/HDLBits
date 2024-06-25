// Exercise 2-5-2: Reduction Operators
module ParityCheck (
    input [7:0] in,
    output parity
);
    // Bitwise XOR for checking parity
    assign parity = ^in;
endmodule