// Exercise 3-1-4: Another Gate
module AnotherGate(
    input in1,
    input in2,
    output out
);
    // AND gate with one inverted input
    assign out = in1 & ~in2;
endmodule