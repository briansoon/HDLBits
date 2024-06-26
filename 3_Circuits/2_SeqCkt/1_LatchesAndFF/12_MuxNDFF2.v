// Exercise 3-2-1-12: Mux and DFF 2
module MuxNDFF2 (
    input clk,
    input w, R, E, L,
    output Q
);
    reg Q_r;
    assign Q = Q_r;

    wire d_mux, d_dff;
    assign d_mux = E ? w : Q;
    assign d_dff = L ? R : d_mux;

    // seq
    always @(posedge clk) begin
        Q_r <= d_dff;
    end
endmodule