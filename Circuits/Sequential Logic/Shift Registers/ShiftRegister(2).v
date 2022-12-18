module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    
    
    
    MUXDFF DFF3 (.clk(KEY[0]), .E(KEY[1]), .w(KEY[3]), .R(SW[3]), .L(KEY[2]), .Q(LEDR[3]));
    MUXDFF DFF2 (KEY[0], KEY[1], LEDR[3], SW[2], KEY[2], LEDR[2]);
    MUXDFF DFF1 (KEY[0], KEY[1], LEDR[2], SW[1], KEY[2], LEDR[1]);
    MUXDFF DFF0 (KEY[0], KEY[1], LEDR[1], SW[0], KEY[2], LEDR[0]);
    
endmodule

module MUXDFF (input clk,
              input E,
              input w,
              input R,
              input L,
              output Q);
    wire i0,i1;
    assign i0 = E ? w : Q;
    assign i1 = L ? R : i0;
    always @(posedge clk) begin
        
        Q <= i1;
    end
        

endmodule
