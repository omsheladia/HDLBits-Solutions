module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
	always @(posedge clk) begin
        if (reset) begin
            q <= 4'b0;
        end else begin
            q <= (q==4'b1001) ? 4'b0 : q + 4'b1;
        end
    end
endmodule
