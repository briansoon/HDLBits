// Exercise 2-3-7: Adder 2 (Full Adder)
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

module add1 ( input a, input b, input cin,   output sum, output cout );
    // Full adder module here
    assign {cout,sum} = {( a&b | a&cin | b&cin),(a^b^cin)};

endmodule