// Exercise 2-1-5: NOR Gate
module NOR_gate (
    input a,
    input b,
    output out
);
    assign out = ~(a | b);
endmodule