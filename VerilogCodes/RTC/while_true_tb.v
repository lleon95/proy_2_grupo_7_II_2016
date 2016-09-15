`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:02:29 09/13/2016
// Design Name:   while_true
// Module Name:   C:/.Xilinx/fsms_rtc/while_true_tb.v
// Project Name:  fsms_rtc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: while_true
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module while_true_tb;

	// Inputs
	reg reset;
	reg clk;
	reg iniciar;
	reg fin;

	// Outputs
	wire [7:0] dir;
	wire [7:0] dir_reg;
	wire [7:0] dato;
	wire read;
	wire write;
	wire escritura;
	wire lectura;
	wire final;

	// Instantiate the Unit Under Test (UUT)
	while_true uut (
		.reset(reset), 
		.clk(clk), 
		.iniciar(iniciar), 
		.fin(fin), 
		.dir(dir), 
		.dir_reg(dir_reg), 
		.dato(dato), 
		.read(read), 
		.write(write), 
		.escritura(escritura), 
		.lectura(lectura), 
		.final(final)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 1;
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

