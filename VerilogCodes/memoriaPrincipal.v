`timescale 1ns / 1ps

/*

	Memoria Principal
	
	Descripcion: 
	Se almacenaran los valores pertinentes del proyecto, del cronometro y el reloj
	Tiene 16 campos de memoria de 7 bits cada uno
	
	Entradas y salidas:
	ADDRIN, ADDROUT
	DATAIN, DATAOUT
	WRITE/READ
	
	RAM NAME: Principal
	
	Nota: La memoria necesitará ser inicializada
	
	Fecha: 10/Sep/2016
	Implementador: Luis Leon
	
*/
module memoriaPrincipal(
	
	output reg [6:0] DataOut,
	input WR,
	input [6:0] DataIn,
	input [3:0] AddressIn,
	input [3:0] AddressOut,
	input CLK
	
	);

	// Configuracion de la memoria
	parameter RAM_WIDTH = 7; // 7 bits de datos
   parameter RAM_ADDR_BITS = 4; // 4 bits de direcciones
	
	// Definir el bloque de RAM y el ancho de los registros de salida	
	(* RAM_STYLE="BLOCK" *)
   reg [RAM_WIDTH-1:0] Principal [(2**RAM_ADDR_BITS)-1:0];

	// Proceso de lectura/escritura
	always @(posedge CLK) begin
      if (WR)
         Principal[AddressIn] <= DataIn;
      DataOut <= Principal[AddressOut];
   end

endmodule

