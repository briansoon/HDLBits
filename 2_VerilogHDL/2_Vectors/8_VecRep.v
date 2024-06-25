// Exercise 2-2-8: Replication Operator
module VecRep (
    input [7:0] in,
    output [31:0] out
);
    // assign out = { replicate-sign-bit , the-input };
    // Repeat MSB (in[7]) 24 times
    // and concatenate with the original input
    assign out = {{24{in[7]}},in};
endmodule