module risc(clk,reset);
input clk,reset;
wire [3:0]opcode;
wire [3:0]alu_op;
wire [2:0] alu_sel;
wire [1:0] opb_sel,data_sel;
wire [15:0] outA;
wire carry,reset,reg_wrt,re,wr,Mux1,Mux2,Mux3,branch,im_wrt,sel1,sel2,sel3;
control control_path(alu_op,opcode,clk,carry,reset,reg_wrt,re,wr,sel1,sel2,sel3,sel5,sel6,branch,pc_sel,im_select);
datapath data_path(alu_op,opcode,clk,carry,sel1,sel2,sel3,sel5,sel6,re,wr,reg_wrt,reset,pc_sel,im_select,branch);

endmodule
