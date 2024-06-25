// Exercise 3-1-3: NOR
module NOR (
    input in1,
    input in2,
    output out
);
    // NOR operation
    assign out = ~(in1|in2);
endmodule