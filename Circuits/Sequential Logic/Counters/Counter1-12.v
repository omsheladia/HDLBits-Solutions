module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //
	initial 
        Q <= 4'b1;
    always @(posedge clk) begin
        if (reset) begin
            Q <= 4'b1;
        end else begin
            Q <= (enable) ? ((Q==4'b1100) ? 4'b1 : Q + 4'b1) : Q;
        end
    end
    assign c_enable = enable;
    assign c_load = (reset | ((Q == 12) & enable));
    assign c_d = c_load ? 4'b1 : 4'b0;
    
    count4 the_counter (clk, c_enable, c_load, c_d /*, ... */ );
    

endmodule
