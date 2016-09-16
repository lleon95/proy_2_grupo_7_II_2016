`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:53 09/15/2016 
// Design Name: 
// Module Name:    mux3x7 
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
module mux3x7(Dato1,Dato2,Dato3,selector,selector2,salida);
	input selector,selector2;
	input [7:0] Dato1,Dato2,Dato3;
	output salida;
	wire [7:0]salida;
	assign salida=(selector)?Dato1:(selector2)?Dato2:Dato3;


endmodule
