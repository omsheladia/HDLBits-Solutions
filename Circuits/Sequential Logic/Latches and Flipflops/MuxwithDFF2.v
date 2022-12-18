module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
	wire mux_1;
    always @(posedge clk) begin
        mux_1 <= E ? w : Q;
        Q <=  L ? R : mux_1;
    end
endmodule
