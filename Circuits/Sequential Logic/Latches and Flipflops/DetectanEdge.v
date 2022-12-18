module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] temp;
    always @(posedge clk) begin
        temp <= in; //Store the value of the input
        pedge = ~temp & in; //Only high when temp is 0 and in is 1. 
    end
endmodule
