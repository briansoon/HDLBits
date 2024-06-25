// Exercise 3-1-11: Simple Circuit B
module CktB (
    input x,
    input y,
    output z
);
    // From waveform: z = ~(x ^ y) (XNOR)
    assign z = ~(x ^ y);
endmodule