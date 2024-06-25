// Exercise 2-5-4: Combinational For-Loop: Vector Reversal 2
module VecRev2 (
    input [99:0] in,
    output [99:0] out
);
    reg [99:0] out_r;
    assign out = out_r;

    // for loop for reversing large vectors
    integer i;
    always @(*) begin
        for (i = 0; i < 100; i = i + 1) begin
            out_r[i] = in[99-i];
        end
    end
endmodule