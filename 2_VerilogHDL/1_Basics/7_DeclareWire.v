// Exercise 2-1-7: Declare Wire
`default_nettype 
module DeclareWire (
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
);
    // output of AND gate = input of OR gate
    wire w1, w2;

    // AND gates output
    assign w1 = a & b;
    assign w2 = c & d;

    // final OR gate outputs
    assign out = w1 | w2;
    assign out_n = ~out;

endmodule