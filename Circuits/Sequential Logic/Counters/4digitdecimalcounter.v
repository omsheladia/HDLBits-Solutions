module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
	always @(posedge clk) begin
        ena[1] <= (q[3:0]==4'b1000) ? 1 : 0;
        ena[2] <= (q[7:4]==4'b1001) & q[3:0]==4'b1000 ? 1 : 0;
        ena[3] <= (q[11:8]==4'b1001) & (q[7:4]==4'b1001) &(q[3:0]==4'b1000)  ? 1 : 0;
        
        if (reset) begin
            q <= 16'b0;
            ena <= 3'b0;
        end else begin
            q[3:0] <= (q[3:0] == 4'b1001) ? 4'b0 : q[3:0] + 4'b1;
            q[7:4] <= (q[7:4] == 4'b1001 & q[3:0] == 4'b1001) ? 4'b0 : (ena[1] ? q[7:4] + 4'b1 : q[7:4]);
            q[11:8] <= (q[11:8] == 4'b1001 & q[7:4]==4'b1001 & q[3:0] == 4'b1001) ? 4'b0 : (ena[2] ? q[11:8] + 4'b1 : q[11:8]);
            q[15:12] <= (q[15:12] == 4'b1001 & q[11:8]==4'b1001& q[7:4]==4'b1001 & q[3:0] == 4'b1001 ) ? 4'b0 : (ena[3] ? q[15:12] + 4'b1 : q[15:12]);
        end
    end
endmodule
