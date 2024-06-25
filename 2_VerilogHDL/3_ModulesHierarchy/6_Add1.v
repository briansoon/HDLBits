// Exercise 2-3-6: Adder 1
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    // interconnects
    wire cin0, cin1;
    assign cin0 = 1'b0;

    wire [15:0] sum1, sum2;

    // adders
    add16 a1(.a(a[15:0]), .b(b[15:0]), .cin(cin0), .sum(sum1), .cout(cin1)); // upper
    add16 a2(.a(a[31:16]), .b(b[31:16]), .cin(cin1), .sum(sum2), .cout()); // lower
    
    assign sum = {sum2,sum1};
endmodule