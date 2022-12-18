module top_module (
    input clk,
    input [7:0] d,
    output [7:0] q
);
	always @(posedge clk) begin
        q[7:0] <= d[7:0];
    end
endmodule
