`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:01 09/10/2016 
// Design Name: 
// Module Name:    controlSalidaVGA 
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
module controlSalidaVGA(
		input [11:0] DataIN,
		input OE,
		output [3:0] R,
		output [3:0] G,
		output [3:0] B
    );

	 assign R = OE ? 3'b000 : DataIN[11:8];
	 assign G = OE ? 3'b000 : DataIN[7:4];
	 assign B = OE ? 3'b000 : DataIN[3:0];
	
endmodule
