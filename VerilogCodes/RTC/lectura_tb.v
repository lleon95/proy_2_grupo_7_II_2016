`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:52 09/14/2016
// Design Name:   lectura
// Module Name:   C:/.Xilinx/fsms_rtc/lectura_tb.v
// Project Name:  fsms_rtc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lectura
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lectura_tb;

	// Inputs
	reg reset;
	reg clk;
	reg [7:0] dir;
	reg [7:0] dir_reg;
	reg esc_reg;
	reg iniciar;
	reg fin;

	// Outputs
	wire final;
	wire activa;
	wire w;
	wire [7:0] reg_out;
	wire [7:0] dir_out;

	// Instantiate the Unit Under Test (UUT)
	lectura uut (
		.reset(reset), 
		.clk(clk), 
		.dir(dir), 
		.dir_reg(dir_reg), 
		.esc_reg(esc_reg), 
		.iniciar(iniciar), 
		.fin(fin), 
		.final(final), 
		.activa(activa), 
		.w(w), 
		.reg_out(reg_out), 
		.dir_out(dir_out)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 1;
		dir = 0;
		dir_reg = 8'h03;
		esc_reg = 8'h04;
		iniciar = 0;
		fin = 0;
		
		#10 reset = 1;
		#10 reset = 0;
		#5 iniciar = 1;
		#10 fin = 1;
		#10 fin = 0;
		#10 fin = 1;
		#10 fin = 0;
		#10 fin = 1;
		#10 fin = 0;
		#10 fin = 1;
		#10 fin = 0;
		#10 fin = 1;
		#10 fin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always
    #5 clk=~clk;   
endmodule

