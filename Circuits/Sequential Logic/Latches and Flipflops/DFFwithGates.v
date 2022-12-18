module top_module (
    input clk,
    input x,
    output z
); 
	wire xorgt,andgt,orgt;
    wire q0,q1,q2;
    wire qn1,qn2;
   	assign qn1 = !(q1);
    assign qn2 = !(q2);
    assign xorgt = x ^ q0;
    assign andgt = x & qn1;
    assign orgt = x | qn2;
        
       
    always @(posedge clk) begin
        
        q0 <= xorgt;
        q1 <= andgt;
        q2 <=orgt;
    end
    assign z = ~(q0 || q1 || q2);
endmodule
