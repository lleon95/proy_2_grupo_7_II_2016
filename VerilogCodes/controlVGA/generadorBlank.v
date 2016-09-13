`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:28 09/10/2016 
// Design Name: 
// Module Name:    generadorBlank 
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
module generadorBlank(
	input wire [9:0] PosY,
	input wire [9:0] PosX,
	output Blank
    );


	assign Blank = !((PosX >= 48  && PosX < 688) && (PosY >= 30 && PosY < 510));


endmodule
