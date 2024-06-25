// Exercise 2-3-2: Module Instantiation by Position
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out1,
    output out2
);
    // module mod_a ( output, output, input, input, input, input );
    // by position
    mod_a a1(out1, out2, a, b, c, d);
endmodule