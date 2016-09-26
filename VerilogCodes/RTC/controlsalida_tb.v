`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:30:48 09/26/2016
// Design Name:   control_salida
// Module Name:   C:/Users/User/Documents/proy_2_grupo_7_II_2016/VerilogCodes/RTC/controlsalida_tb.v
// Project Name:  VGA
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

module controlsalida_tb;

	// Inputs
	reg reset;
	reg [7:0] direccion;
	reg [7:0] dato;
	reg clk;
	reg iniciar;
	reg escribe;
	reg esc;

	// Outputs
	wire [7:0] data_out;
	wire CS;
	wire AD;
	wire RD;
	wire WR;
	wire final;
	wire escreg;

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
		.esc(esc), 
		.escreg(escreg)
	);
	initial forever #5 clk =~clk;
	initial begin
		// Initialize Inputs
		reset = 1;
		direccion = 8'hff;
		dato = 0;
		clk = 0;
		iniciar = 0;
		escribe = 0;
		esc = 1;
		#10;
		reset=0;
		iniciar=1;
		@(posedge final);
		iniciar=0;
		#10;
		iniciar=1;
		escribe=1;
		@(posedge final);
		$finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

