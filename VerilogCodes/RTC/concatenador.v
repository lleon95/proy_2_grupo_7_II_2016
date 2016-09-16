`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:48:51 09/15/2016 
// Design Name: 
// Module Name:    concatenador 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module concatenador(primero,segundo,salida);
	input primero,segundo;
	output salida;
	wire[1:0] salida;
	assign salida={segundo,primero};

endmodule
