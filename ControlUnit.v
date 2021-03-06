module control(alu_op,opcode,clk,carry,reset,reg_wrt,re,wr,Mux1,Mux2,Mux3,MuxAlu,Mux5,branch,pc_sel,im_select);
input clk,carry,reset;
input [3:0] opcode;
output reg[3:0]alu_op;
output reg reg_wrt,re,wr,Mux1,Mux3,MuxAlu,Mux5,branch,pc_sel,im_select;
output reg[1:0]Mux2;
reg [3:0]pstate,nstate;
parameter s0 = 4'b0000,s1 = 4'b0001, s2=4'b0010, s3=4'b0011, s4=4'b0100, s5=4'b0101, s6=4'b0110, s7=4'b0111, s11=4'b1000;
initial
pstate = s0;
always @(posedge clk)begin
case(pstate)
//*********************************************************************************************************************
s0:begin  //DO NOT MODIFY INSTRUCTION FETCH  //
reg_wrt<=1'b0;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b0;
Mux2<=1'b1;
Mux3<=1'b0;
Mux3<=1'b1;
Mux5<=1'b1;
alu_op<=4'bxxxx;
MuxAlu<=1'b1;
branch<=1'b0;
pc_sel<=1'b1;
im_select<=1'b1;
pstate<=s1;
end
//*********************************************************************************************************************
s1:begin  // DO NOT MODIFY DECODE STAGE  //
case(opcode)
4'b0000:begin
alu_op<=4'b0;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=1'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0001:begin  /* DO NOT MODIFY R-FORMAT STARTS HERE */
alu_op<=4'b0001;    
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0010:begin
alu_op<=4'b0010;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0011:begin
alu_op<=4'b0011;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0100:begin
alu_op<=4'b0100;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0101:begin
alu_op<=4'b0101;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0110:begin
alu_op<=4'b0110;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b0111:begin
alu_op<=4'b0111;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//*********************************************************************************************************************
4'b1000:begin
alu_op<=4'b1000;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b0;
pstate<=s0;
end
//*********************************************************************************************************************
4'b1001:begin
alu_op<=4'b1001;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b0;
pstate<=s0;
end
//*********************************************************************************************************************
4'b1010:begin
alu_op<=4'b1010;
reg_wrt<=1'b1;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b0;
pstate<=s0;
end      /* DO NOT MODIFY R-FORMAT ENDS HERE */
//*********************************************************************************************************************
4'b1011:begin /*DO NOT MODIFY--I FORMAT STARTS HERE--LOAD*/
alu_op<=4'b0;
reg_wrt<=1'b1;
re<=1'b1;
wr<=1'b0;
Mux1<=1'b0;
Mux2<=2'b01;
Mux3<=1'b1;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end
//********************************************************************************************************************
4'b1100:begin /*DO NOT MODIFY--I FORMAT--STORE*/
alu_op<=4'b0;
reg_wrt<=1'b0;
re<=1'b0;
wr<=1'b1;
Mux1<=1'b1;
Mux2<=2'b01;
Mux3<=1'b1;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end      /* DO NOT MODIFY--I FORMAT ENDS HERE  */
//********************************************************************************************************************
4'b1101:begin /* DO NOT MODIFY -- BEQ  */
alu_op<=4'b0001;
reg_wrt<=1'b0;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b0;
Mux3<=1'b0;
Mux5<=1'b1;
MuxAlu<=1'b0;
branch<=1'b1;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end   /* DO NOT MODIFY -- BEQ */
//*******************************************************************************************************************
4'b1110:begin /* DO NOT MODIFY -- JMP  */
alu_op<=4'b1110;
reg_wrt<=1'b0;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=2'b10;
Mux3<=1'b0;
Mux5<=1'b0;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b1;
pstate<=s0;
end   
endcase
end
s2:begin
reg_wrt<=1'b0;
re<=1'b0;
wr<=1'b0;
Mux1<=1'b0;
Mux2<=1'b0;
Mux3<=1'b0;
alu_op<=4'bxxxx;
MuxAlu<=1'b0;
branch<=1'b1;
pc_sel<=1'b0;
im_select<=1'b0;
pstate<=s0;
end
s3:begin
reg_wrt<=1'b1;
re<=1'bx;
wr<=1'b0;
Mux1<=1'b1;
Mux2<=1'b1;
Mux3<=1'b1;
alu_op<=4'bxxxx;
MuxAlu<=1'b0;
branch<=1'b0;
pc_sel<=1'b0;
im_select<=1'b0;
pstate<=s0;
end
endcase
end
endmodule
