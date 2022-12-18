module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
    reg [7:0] Q;       
	always @(posedge clk) begin
        if(enable) 
            Q <= {Q[6:0],S};
        else
            Q <= Q;
    end
    assign Z = Q[{A,B,C}];    
                
endmodule
