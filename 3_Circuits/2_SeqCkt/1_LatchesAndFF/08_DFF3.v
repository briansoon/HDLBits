// Exercise 3-2-1-8: DFF3
module DFF3 (
    input clk,
    input d,
    input ar,   // asynchronous reset
    output q
);
    reg q_r;
    assign q = q_r;

    always @(posedge clk or posedge ar) begin
        if (ar) q_r <= 0;
        else q_r <= d;
    end
endmodule