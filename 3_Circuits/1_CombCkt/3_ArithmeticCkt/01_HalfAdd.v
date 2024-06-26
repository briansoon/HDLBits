// Exercise 3-1-3-1: Half Adder
module HalfAdd (
    input a, b,
    output cout, sum
);
    assign sum = a ^ b;
    assign cout = a & b;
endmodule