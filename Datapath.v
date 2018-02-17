module datapath(alu_op,opcode,clk,carry,sel1,sel2,sel3,sel5,sel6,re,wr,reg_wrt,reset,pc_sel,im_select,branch);
input clk;
output carry;
input [1:0]sel2;
input sel1,sel3,sel5,sel6,re,wr;
input reg_wrt;
input reset;
output [3:0]opcode;
input [3:0]alu_op;
input im_select;
input branch,pc_sel;
wire [7:0] shift;
wire [15:0] next_pc;
wire [15:0] next_alu_out,jump_add;
wire [11:0] jump;
and (sel4,branch,zero);
wire [15:0]op3,out;
wire [15:0]pc_out;
wire [3:0]iformat,addA,addB,write_add,out1;
wire [7:0]data_out;
wire [7:0]result;
wire [7:0]regData,aluMux;
wire [7:0] dataA,dataB,xtended,out2,latchout;
Mux2 alu(dataA,8'bx,sel5,aluMux);
PC programcounter(op3,clk,pc_out,pc_sel,reset);
instruction im(pc_out,clk,opcode,jump,addA,addB,write_add,iformat,pc_sel);
Mux1 multi1(addB,write_add,sel1,out1);
Register regfile(reg_wrt,addA,clk,addB,out1,regData,dataA,dataB);
sign xtend(iformat,xtended);
lat latch(xtended,latchout,clk);
Mux2 multi2(dataB,latchout,sel2,out2);
ALU alux(aluMux,out2,alu_op,result,zero);
RAM datamemory(result,clk,dataB,data_out,re,wr);
Mux2 multi3(result,data_out,sel3,regData);
//assign next_pc = pc_out+1'b1;
assign next_alu_out = latchout + pc_out;
assign jump_add = {pc_out[15:12],jump}; 
Mux3 multi4(pc_out,next_alu_out,sel4,out);
Mux3 multi5(jump_add,out,sel6,op3);
endmodule
