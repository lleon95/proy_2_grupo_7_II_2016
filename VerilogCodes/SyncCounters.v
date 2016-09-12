`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:05 09/12/2016 
// Design Name: 
// Module Name:    SyncCounters 
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
module SyncCounters(
			input CLK,
			input RESET,
			output BLANK,
			output HSync,
			output VSync,
			output [18:0] Pixel
		);
		
		/*
			Vincular contadores y generadores de frecuencia
		*/
		
		wire [9:0] CntX, CntY;
		wire YFlag;
		
		// Contador horizontal
		contadorhorizontal cntH(.Clk(CLK), .Reset(RESET), .cntHorizontal(CntX), .vflag(YFlag));
		// Contador vertical
		contadorvertical cntV(.Clk(CLK), .Reset(RESET), .cntVertical(CntY), .vflag(YFlag));
		// Generador de sincronía Horizontal
		generadorHsync HS(.cntHorizontal(CntX),.HSync(HSync));
		// Generador de sincronía Vertical
		generadorVsync VS(.cntVertical(CntY),.VSync(VSync));
		// Generador de Blank
		generadorBlank BLK(.PosY(CntY), .PosX(CntX), .Blank(Blank));
		
		/*
			Unificar salidas
		*/
		
		reg [9:0] PosX, PosY;
		
		// Ajustar desfase de Blank
		always @*
			begin
				if(!Blank)
					begin
						PosX = CntX - 10'd48;
						PosY = CntY - 10'd30;
					end
				else
					begin
						PosX = 10'd0;
						PosY = 10'd0;
					end
			end
			
		// Unificar - Formula: PxPos = h + 640v 
		assign Pixel = PosX + 10'd640 * PosY;

	 

endmodule
