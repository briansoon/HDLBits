// Exercise 3-2-1-13: DFFs and Gates 2
module DFFnGate2 (
    input clk,
    input x,
    output z
);
    // output of DFFs
    wire [2:0] Q;

    // seq
    always @(posedge clk) begin
        Q[0] <= x ^ Q[0];
        Q[1] <= x & ~Q[1]; // immediate inversion
        Q[2] <= x | ~Q[2]; // immediate inversion
    end

    assign z = ~(|Q);

endmodule