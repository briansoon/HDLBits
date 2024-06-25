// Exercise 2-5-7: Generate For-Loop: 100-digit BCD Adder
module top_module (
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);
    /*
    module bcd_fadd (
        input [3:0] a,
        input [3:0] b,
        input     cin,
        output   cout,
        output [3:0] sum );
    */

    // array instantiate
    // wire to store in between cin/cout
    wire [98:0] cinout;

    // instantiate 100 copies of bcd_fadd
    bcd_fadd bcd [99:0](
        .a(a),
        .b(b),
        .cin({cinout,cin}),
        .cout({cout,cinout}),
        .sum(sum)
    );
endmodule