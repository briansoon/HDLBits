// Exercise 2-5-3: Reduction: Even Wider Gates
module ReduceWideGate (
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    // Perform bitwise operations
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
endmodule