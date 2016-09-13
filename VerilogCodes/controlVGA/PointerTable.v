`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:53:48 09/13/2016 
// Design Name: 
// Module Name:    PointerTable 
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
module PointerTable(
		output reg [9:0] PointY,
		input [3:0] Value,
		output reg [1:0] ChipSelect
    );

	/*
		Tabla:
		
		0-9: Numeros
		10: AM
		11: PM
		12: 24H
		13: Rojo
		14: Verde
	
	*/
	
	always @*
		case(Value)
			4'd0: 
				begin
					PointY = 10'd0;
					ChipSelect = 2'b01;
				end
			4'd1: 
				begin
					PointY = 10'd60;
					ChipSelect = 2'b01;
				end
			4'd2: 
				begin
					PointY = 10'd120;
					ChipSelect = 2'b01;
				end
			4'd3: 
				begin
					PointY = 10'd180;
					ChipSelect = 2'b01;
				end
			4'd4: 
				begin
					PointY = 10'd240;
					ChipSelect = 2'b01;
				end
			4'd5: 
				begin
					PointY = 10'd300;
					ChipSelect = 2'b01;
				end
			4'd6: 
				begin
					PointY = 10'd360;
					ChipSelect = 2'b01;
				end
			4'd7: 
				begin
					PointY = 10'd420;
					ChipSelect = 2'b01;
				end
			4'd8: 
				begin
					PointY = 10'd480;
					ChipSelect = 2'b01;
				end
			4'd9: 
				begin
					
					PointY = 10'd540;
					ChipSelect = 2'b01;
				end
				// AM
			4'd10:
				begin
					PointY = 10'd0;
					ChipSelect = 2'b10;
				end
				//PM
			4'd11:
				begin
					PointY = 10'd20;
					ChipSelect = 2'b10;
				end
				//24H
			4'd12:
				begin
					PointY = 10'd0;
					ChipSelect = 2'b00;
				end
				//Rojo
			4'd13:
				begin
					PointY = 10'd0;
					ChipSelect = 2'b11;
				end
				//Verde
			4'd14:
				begin
					PointY = 10'd20;
					ChipSelect = 2'b11;
				end
			4'd15:
				begin
					PointY = 10'd0;
					ChipSelect = 2'b00;
				end
	
		endcase

endmodule
