module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
	reg [7:0] temp;
    always @(posedge clk) begin
        temp <= in; //Store the value of the input
        anyedge <= temp ^ in; //High only when both of them are different
    end
endmodule
