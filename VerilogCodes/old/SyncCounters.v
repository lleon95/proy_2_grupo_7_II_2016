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
			output Blank,
			output HSync,
			output VSync,
			output reg [9:0] PosX, PosY
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
		// Generador de sincrona Horizontal
		generadorHsync HS(.cntHorizontal(CntX),.HSync(HSync));
		// Generador de sincrona Vertical
		generadorVsync VS(.cntVertical(CntY),.VSync(VSync));
		// Generador de Blank
		generadorBlank BLK(.PosY(CntY), .PosX(CntX), .Blank(Blank));
		
		/*
			Unificar salidas
		*/
		
		//reg [9:0] PosX, PosY;
		
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
			


	 

endmodule
