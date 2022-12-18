module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 
    //reg [5:0] sec,min;
    reg ena_sec,ena_min;
	always @(posedge clk) begin
        ena_sec <= (ss[3:0] == 4'b1001) ? 1 : 0;
        if (reset) begin
            pm <= 0;
            hr[7:4] <= 4'd1; hr[3:0] <= 4'd2; //setting hh to 12
            mm <= 8'b0;
            ss <= 8'b0;
        end else begin
            ss[3:0] <= (ena) ? ((ss[3:0] == 4'b1001) ? 4'b0 : ss[3:0] + 1) : ss[3:0]; 
            ss[7:4] <= (ena) ? ((ss[7:4] == 4'b0110) ? 4'b0 : (ena_sec) ? ss[7:4] + 1: ss[7:4]) : ss[7:4];
    end
    
endmodule
