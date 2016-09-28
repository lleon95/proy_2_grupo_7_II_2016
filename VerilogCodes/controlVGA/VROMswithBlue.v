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
module VROMswithBlue(
		input CLK,
		// Para interfaz
		input [18:0] AddrInterfaz,
		output reg [5:0] DataOutputInterfaz,
		// Para digitos
		input [14:0] AddrNumeros,
		output reg [5:0] DataOutputNumeros,
		input RESET
	 );
	 
	 // Parametros de la memorias en tamaño escalado
	 parameter DigitosWidth = 40; 
	 parameter DigitosHeight = 600;
	 parameter InterfazWidth = 640;
	 parameter InterfazHeight = 480;
	 parameter MemoriesDepth = 6;

	 /*
			Montar las ROM
	 */
	 
	 // ROM de DIGITOS
	 reg [MemoriesDepth-1:0] Digitos [(DigitosWidth*DigitosHeight)-1:0];
	 initial
      $readmemb("Numeros.png.hex", Digitos);
		
	 // ROM de INTERFAZ
	 reg [MemoriesDepth-1:0] Interfaz [(InterfazWidth*InterfazHeight)-1:0];
	 initial
      $readmemb("Interfaz.png.hex", Interfaz);

	 always @(posedge CLK)
	 begin
			if(RESET)
				begin
					DataOutputInterfaz <= 6'd0;
					DataOutputNumeros <= 6'd0;
				end
			else
				begin
					DataOutputInterfaz <= Interfaz[AddrInterfaz];
					DataOutputNumeros <= Digitos[AddrNumeros];
				end
	 end

endmodule
