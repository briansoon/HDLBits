// Exercise 2-3-8: Carry-Select Adder
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    // cin and cout
    wire cin0, cin1, cout;
    assign {cin1,cin0} = {2'b10};

    // sums
    wire [15:0] sum1, sum2_1, sum2_2, sum2;

    // adders
    add16 a1(.a(a[15:0]), .b(b[15:0]), .cin(cin0), .sum(sum1), .cout(cout));
    add16 a2_1(.a(a[31:16]), .b(b[31:16]), .cin(cin0), .sum(sum2_1), .cout());
    add16 a2_2(.a(a[31:16]), .b(b[31:16]), .cin(cin1), .sum(sum2_2), .cout());

    // mux
    assign sum2 = cout ? sum2_2 : sum2_1;

    // final out
    assign sum = {sum2,sum1};
    
endmodule