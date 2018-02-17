module PC(in,clk,out,pc_sel,reset);
input [15:0]in;
input clk,reset,pc_sel;
output reg[15:0]out;
initial 
out = 0;
always @(posedge clk)begin
if(reset==1)
out <= 16'bx;
else if(pc_sel==1 && in<50)
out <= in+1;
else if(pc_sel==0)
out <= in;
end

endmodule
