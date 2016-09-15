`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:53 09/13/2016
// Design Name:   escritura
// Module Name:   C:/.Xilinx/fsms_rtc/escritura_tb.v
// Project Name:  fsms_rtc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: escritura
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module escritura_tb;

	// Inputs
	reg reset;
	reg clk;
	reg [7:0] dir;
	reg [7:0] dato;
	reg iniciar;
	reg fin;

	// Outputs
	wire [7:0] data_out;
	wire [7:0] dir_out;
	wire escribe;
	wire final;
	wire activa;

	// Instantiate the Unit Under Test (UUT)
	escritura uut (
		.reset(reset), 
		.clk(clk), 
		.dir(dir), 
		.dato(dato), 
		.iniciar(iniciar), 
		.fin(fin), 
		.data_out(data_out), 
		.dir_out(dir_out), 
		.escribe(escribe), 
		.final(final), 
		.activa(activa)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		clk = 1;
		dir = 8'h30;
		dato = 0;
		iniciar = 0;
		fin = 0;
		
		#10 reset = 1;
		#10 reset = 0;
		#5 iniciar = 1;
		#10 fin = 1;
		#10 fin = 0;
		#10 fin = 1;
		#10 fin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
    #2.5 clk=~clk; 
      
endmodule

