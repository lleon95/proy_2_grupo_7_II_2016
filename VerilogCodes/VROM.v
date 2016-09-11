`timescale 1ns / 1ps
/*

	VROM
	
	Descripcion: 

	
	Fecha: 10/Sep/2016
	Implementador: Luis Leon
	
*/
module VROM(
	DataOut,
	Address,
	CLK
    );

   parameter ROM_WIDTH = 12;
   parameter ROM_ADDR_BITS = 20;
	
	input CLK;
	output [ROM_WIDTH-1:0] DataOut;
	input [ROM_ADDR_BITS-1:0] Address;

   reg [ROM_WIDTH-1:0] VROM [(2**ROM_ADDR_BITS)-1:0];
   reg [ROM_WIDTH-1:0] DataOut;


   
   initial
      $readmemh("ROM.txt", VROM, 20'h00000, 20'hfffff);

   always @(posedge CLK)
      DataOut <= VROM[Address];
				
endmodule
