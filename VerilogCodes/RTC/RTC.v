`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:16 09/04/2016 
// Design Name: 
// Module Name:    RTC 
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
module RTC(RD,CS,AD,WR,DatAdd,reset,clk);
	input RD,CS,AD,WR,reset,clk;
	inout[7:0]  DatAdd;
	reg[7:0] dir;
	assign DatAdd = WR?dir:8'bz;
	reg[7:0] registro [0:125];
	
endmodule
