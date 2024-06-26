// Exercise 3-1-3-2: Full Adder
module FullAdd (
    input a, b, cin,
    output cout, sum
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | cin & (a ^ b);
endmodule