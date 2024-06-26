// Exercise 3-1-3-3: 3-Bit Binary Adder
module BinAdd_3Bit (
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum
);
    FullAdd FA0 [2:0] (
        .a(a),
        .b(b),
        .cin({cout[1:0],cin}),
        .cout(cout),
        .sum(sum)
    );
endmodule

module FullAdd (
    input a, b, cin,
    output cout, sum
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | cin & (a ^ b);
endmodule