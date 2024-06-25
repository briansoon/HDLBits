// Exercise 3-1-1-5: Two Gates
module TwoGates (
    input in1,
    input in2,
    input in3,
    output out
);
    // output of XNOR = input of XOR
    wire out1;

    // connection
    assign out1 = ~(in1^in2);
    assign out = out1 ^ in3;
endmodule