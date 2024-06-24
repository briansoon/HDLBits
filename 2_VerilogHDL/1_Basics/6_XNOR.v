// Exercise 2-1-6: XNOR Gate
module XNOR_gate (
    input a,
    input b,
    output out
);
    assign out = ~(a ^ b);
endmodule