`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:45:54 09/13/2016
// Design Name:   inicializacion
// Module Name:   C:/.Xilinx/fsms_rtc/inicializacion_tb.v
// Project Name:  fsms_rtc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inicializacion
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inicializacion_tb;

	// Inputs
	reg reset;
	reg iniciar;
	reg clk;
	reg fin;

	// Outputs
	wire [7:0] dir;
	wire [7:0] dato;
	wire escritura;
	wire write_reg;
	wire true;

	// Instantiate the Unit Under Test (UUT)
	inicializacion uut (
		.reset(reset), 
		.iniciar(iniciar), 
		.clk(clk), 
		.fin(fin), 
		.dir(dir), 
		.dato(dato), 
		.escritura(escritura), 
		.write_reg(write_reg), 
		.true(true)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		iniciar = 0;
		clk = 1;
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

