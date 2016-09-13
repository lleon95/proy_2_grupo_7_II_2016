`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:18:38 09/13/2016 
// Design Name: 
// Module Name:    VROMs 
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
module VROMs(
		input CLK,
		input [1:0] ChipSelector,
		input [16:0] Address,
		output reg[5:0] DataOutput
	 );
	 
	 // Parametros de la memorias en tamaño escalado
	 parameter DigitosWidth = 20; 
	 parameter DigitosHeight = 300;
	 parameter AMPMWidth = 25;
	 parameter AMPMHeight = 20;
	 parameter CronoWidth = 50;
	 parameter CronoHeight = 20;
	 parameter InterfazWidth = 320;
	 parameter InterfazHeight = 241;
	 parameter MemoriesDepth = 6;

	 /*
			Montar las ROM
	 */
	 
	 // ROM de DIGITOS
	 reg [MemoriesDepth-1:0] Digitos [(DigitosWidth*DigitosHeight)-1:0];
	 initial
      $readmemb("Numeros.png.hex", Digitos);
		
	 // ROM de AMPM
	 reg [MemoriesDepth-1:0] AMPM [(AMPMWidth*AMPMHeight)-1:0];
	 initial
      $readmemb("AMPM.png.hex", AMPM);
		
	 // ROM de INDICADORES
	 reg [MemoriesDepth-1:0] Crono [(CronoWidth*CronoHeight)-1:0];
	 initial
      $readmemb("Indicadores.png.hex", Crono);
		
	 // ROM de INTERFAZ
	 reg [MemoriesDepth-1:0] Interfaz [(InterfazWidth*InterfazHeight)-1:0];
	 initial
      $readmemb("Interfaz.png.hex", Interfaz);

	 // Multiplexar las salidas
	 always @(posedge CLK)
	 begin
		case(ChipSelector)
			// Caso de interfaz
			2'b00 : DataOutput <= Interfaz[Address];
			// Caso de Numeros
			2'b01 : DataOutput <= Digitos[Address[12:0]];
			// Caso de AMPM
			2'b10 : DataOutput <= AMPM[Address[8:0]];
			// Caso de Crono
			2'b11 : DataOutput <= Crono[Address[9:0]];
		endcase
	 end

endmodule
