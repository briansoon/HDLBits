// Exercise 2-3-3: Module Instantiation by Name
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out1,
    output out2
);
    // module mod_a ( output out1, output out2, input in1, input in2, input in3, input in4);
    // by name
    mod_a a2 (
        .out1(out1),
        .out2(out2),
        .in1(a),
        .in2(b),
        .in3(c),
        .in4(d)
    );
endmodule