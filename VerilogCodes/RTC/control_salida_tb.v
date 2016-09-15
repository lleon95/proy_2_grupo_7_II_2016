`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:48:06 09/14/2016
// Design Name:   control_salida
// Module Name:   C:/.Xilinx/fsms_rtc/control_salida_tb.v
// Project Name:  fsms_rtc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_salida
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_salida_tb;

	// Inputs
	reg reset;
	reg [7:0] direccion;
	reg [7:0] dato;
	reg clk;
	reg iniciar;
	reg escribe;

	// Outputs
	wire [7:0] data_out;
	wire CS;
	wire AD;
	wire RD;
	wire WR;
	wire final;
	wire [4:0] contador;

	// Instantiate the Unit Under Test (UUT)
	control_salida uut (
		.reset(reset), 
		.direccion(direccion), 
		.dato(dato), 
		.clk(clk), 
		.iniciar(iniciar), 
		.escribe(escribe), 
		.data_out(data_out), 
		.CS(CS), 
		.AD(AD), 
		.RD(RD), 
		.WR(WR), 
		.final(final), 
		.contador(contador)
	);

	initial begin
		// Initialize Inputs
		reset = 0;
		direccion = 8'h04;
		dato = 8'h04;
		clk = 0;
		iniciar = 0;
		escribe = 1;
		
		#10 reset = 1;
		#10 reset = 0;
		#5 iniciar = 0;
		#10 iniciar = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always
    #5 clk=~clk;	   
endmodule

