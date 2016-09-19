`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:53 09/15/2016 
// Design Name: 
// Module Name:    Mux2x7 
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
module Mux2x7(Dato1,Dato2,selector,salida);
	input selector;
	input [7:0] Dato1,Dato2;
	output salida;
	reg [7:0]salida;
	//assign salida=(selector)?Dato1:(selector2)?Dato2:Dato3;
	always @ (Dato1 or Dato2 or selector)
	begin
		if(selector) salida=Dato1;
		else salida=Dato2;
	end


endmodule

