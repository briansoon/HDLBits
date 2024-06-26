// Exercise 3-2-1-10: DFFs and Gates
module DFFnGate (
    input clk,
    input in,
    output out
);
    reg out_r;
    assign out = out_r;

    always @(posedge clk) begin
        out_r <= out_r ^ in;
    end
endmodule