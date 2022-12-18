module top_module (
    input clk,
    input j,
    input k,
    output Q); 
	wire Qn;
    wire and1,and2,or1;
    assign Qn = ~Q;
    assign and1 = j & Qn;
    assign and2 = ~k & Q;
    assign or1 = and1 | and2;
    always @(posedge clk) begin
        Q <= or1;
    end
endmodule
