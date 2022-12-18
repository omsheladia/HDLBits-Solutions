module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output [7:0] q
);
	
    always @(posedge clk or posedge areset) begin
        if (areset) begin
        	q[7:0] <= 8'b0;
    	end
        else begin
    		q[7:0] <= d[7:0];
    	end    
    end
endmodule
