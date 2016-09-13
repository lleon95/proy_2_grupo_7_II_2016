`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:02:45 09/13/2016 
// Design Name: 
// Module Name:    ControlSalidaVGA 
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
module ControlSalidaVGA(
		input [5:0] RGB,
		input Blank,
		input CLK,
		output reg [3:0] R,
		output reg [3:0] G,
		output reg [3:0] B
	 );

	reg LSBRed, LSBBlue, LSBGreen;
	// Determinar bits menos significativos - Negedge para evitar metaestabilidad
	always @(negedge CLK)
	begin
		// Agregar LSB al RED
		if(RGB[5:4] == 2'b11 || RGB[5:4] == 2'b01)
			LSBRed <= 1;
		else
			LSBRed <= 0;
		// Agregar LSB al GREEN
		if(RGB[3:2] == 2'b11 || RGB[3:2] == 2'b01)
			LSBGreen <= 1;
		else
			LSBGreen <= 0;
		// Agregar LSB al BLUE
		if(RGB[1:0] == 2'b11 || RGB[1:0] == 2'b01)
			LSBBlue <= 1;
		else
			LSBBlue <= 0;
	end
	
	// Determinar el Blank
	always @(posedge CLK)
	begin
		if(Blank)
			begin
				R <= 4'd0;
				G <= 4'd0;
				B <= 4'd0;
			end
		else
			begin
				R <= {RGB[5:4],LSBRed,LSBRed};
				G <= {RGB[3:2],LSBGreen,LSBGreen};
				B <= {RGB[1:0],LSBBlue,LSBBlue};
			end
	end
	

endmodule
