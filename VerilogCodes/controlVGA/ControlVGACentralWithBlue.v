`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:39 09/13/2016 
// Design Name: 
// Module Name:    ControlVGACentral 
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
module ControlVGACentral_MemoryPointed(
		input CLK,
		input RESET,
		input [7:0] MemDataIN,
		output [3:0] MemAddrOut,
		output [3:0] R,
		output [3:0] G,
		output [3:0] B,
		output HSync,
		output VSync,
		output [9:0] PosX, 
		output [9:0] PosY
    );

	
	wire BLANK;
	wire [9:0] PosX, PosY;
	
	// Vincular Maquina de Sincronia
	SyncCounters SyncMachine(.CLK(CLK),.RESET(RESET),.Blank(BLANK),.HSync(HSync),.VSync(VSync),.PosX(PosX),.PosY(PosY));

	// Vincular la ROM
	wire [5:0] RGB;

	// Vincular Punteros
	PunterosVGA_MemoryPointed Pointers(.MemDataIN(MemDataIN),.PosX(PosX),
								.PosY(PosY),.MemAddrIN(MemAddrOut),.CLK(CLK),.RESET(RESET),
								.OutRGB(RGB));
								
	
	//VROMs Memoryinput(.CLK(CLK),.ChipSelector(ROMCS),.Address(ROMAddr),.DataOutput(RGB));
	
	// Control de Salidda
	ControlSalidaVGA OutputAdapter(.RGB(RGB),.Blank(BLANK),.CLK(CLK),.R(R),.G(G),.B(B));
	
endmodule
