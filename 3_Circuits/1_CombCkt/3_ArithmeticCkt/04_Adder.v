// Exercise 3-1-3-4: Adder
module FA_4Bit (
    input [3:0] x,
    input [3:0] y,
    output [4:0] sum
);
    // for internal cin cout
    wire [2:0] cinout;

    FA add [3:0] (
        .x(x),
        .y(y),
        .cin({cinout,1'b0}),
        .cout({sum[4],cinout}),
        .sum(sum[3:0])
    );

    // Or just do this
    // Carry out is automatically added to MSB 
    // assign sum = x + y;
endmodule

module FA (
    input x, y, cin,
    output cout, sum
);
    assign sum = x ^ y ^ cin;
    assign cout = (x & y) | cin & (x ^ y);
endmodule