// Exercise 3-2-1-14: Create Circuit from Truth Table
module JKFF (
    input clk,
    input j,
    input k,
    output Q
);
    reg Q_r, Q_old;
    assign Q = Q_r;

    // seq
    always @(posedge clk) begin
        Q_r <= Q_old;
    end

    // comb
    always @(*) begin
        case ({j,k})
            2'b00 : Q_old = Q_r;
            2'b01 : Q_old = 0;
            2'b10 : Q_old = 1;
            2'b11 : Q_old = ~Q_r;
        endcase
    end
endmodule