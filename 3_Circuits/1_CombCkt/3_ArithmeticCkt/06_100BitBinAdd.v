// Exercise 3-1-3-6: 100-Bit Binary Adder
module BinAdd_100Bit (
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum
);
    // Concatenate cout to sum for overflow
    assign {cout,sum} = a + b + cin;     
endmodule
