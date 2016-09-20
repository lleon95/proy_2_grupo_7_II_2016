`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:47 09/19/2016
// Design Name:   escritura
// Module Name:   C:/Users/User/Documents/proy_2_grupo_7_II_2016/VerilogCodes/escritura_tb.v
// Project Name:  VGA
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
	initial forever #5 clk=~clk;
	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		dir = 0;
		dato = 0;
		iniciar = 0;
		fin = 0;
		#10 reset=0;
		#10 dir=8'h14;
		#10 dato=8'hf4;
		#10 iniciar=1;
		#10 iniciar=0;
		while(~final)
		begin
			#5 fin=~fin;
		end
		$finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

