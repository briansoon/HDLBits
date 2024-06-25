// Exercise 2-3-9: Adder-Subtractor
module top_module (
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    // interconnect
    wire cout;
    wire [15:0] sum1, sum2;
    wire [31:0] b_inv;
    
    // b inverse
    assign b_inv = b ^ {32{sub}};

    // adders
    add16 a1(.a(a[15:0]), .b(b_inv[15:0]), .cin(sub), .sum(sum1), .cout(cout)); // upper
    add16 a2(.a(a[31:16]), .b(b_inv[31:16]), .cin(cout), .sum(sum2), .cout()); // lower

    // final output
    assign sum = {sum2,sum1};
endmodule