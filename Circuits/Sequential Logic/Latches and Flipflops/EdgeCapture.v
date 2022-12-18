module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] temp;
    always @(posedge clk) begin
        temp <= in; //Store the value of the input
        out <= (reset) ? 32'b0 : 
        (temp & ~in) | out; 
    end
endmodule
