`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:45 09/15/2016 
// Design Name: 
// Module Name:    or2 
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
module or2(dato1,dato2,salida);
	input dato1,dato2;
	output salida;
	reg salida;
	
	always @*
		salida=dato1||dato2;

endmodule
