`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:58 09/15/2016 
// Design Name: 
// Module Name:    or3 
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
module or3(dato1,dato2,dato3,salida);
	input dato1,dato2,dato3;
	output salida;
	reg salida;
	
	always @*
		salida=dato1||dato2||dato3;


endmodule
