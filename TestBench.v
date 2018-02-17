`timescale 1ns / 1ps



////////////////////////////////////////////////////////////////////////////////

// Company: 

// Engineer:

//

// Create Date:   02:38:30 04/03/2017

// Design Name:   risc

// Module Name:   F:/Season 1/RiscPipeline/JIZ.v

// Project Name:  RiscPipeline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: risc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JIZ;

 // Inputs
 reg clk;
 reg reset;

 // Instantiate the Unit Under Test (UUT)
 risc uut (
  .clk(clk), 
  .reset(reset)
 );

 initial begin
  // Initialize Inputs
  clk = 0;
  reset = 0;

  // Wait 100 ns for global reset to finish
  #40$finish;
        
  // Add stimulus here

 end
 always #1 clk = !clk;
      
endmodule
