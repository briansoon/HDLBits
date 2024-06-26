// Exercise 3-1-3-7: 4-Digit BCD Adder
module BCDAdd_4Bit (
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum
);
    /*
    module bcd_fadd (
        input [3:0] a,
        input [3:0] b,
        input     cin,
        output   cout,
        output [3:0] sum );
    */
    wire [2:0] cinout; // innterconnect

    // as per requirement
    bcd_fadd B1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cinout[0]), .sum(sum[3:0]));
    bcd_fadd B2 (.a(a[7:4]), .b(b[7:4]), .cin(cinout[0]), .cout(cinout[1]), .sum(sum[7:4]));
    bcd_fadd B3 (.a(a[11:8]), .b(b[11:8]), .cin(cinout[1]), .cout(cinout[2]), .sum(sum[11:8]));
    bcd_fadd B4 (.a(a[15:12]), .b(b[15:12]), .cin(cinout[2]), .cout(cout), .sum(sum[15:12]));

    // alternative: array instantiation
    /*bcd_fadd B [3:0] (
        .a(a),
        .b(b),
        .cin({cinout,cin}),
        .cout({cout,cinout}),
        .sum(sum)
    );*/

endmodule