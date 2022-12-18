module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
	always @(posedge clk) begin
        if (reset) begin
            q <= 4'b0;
        end else begin
            q <= (slowena) ? ((q==4'b1001) ? 4'b0 : q + 4'b1) : q;
        end
    end
endmodule
