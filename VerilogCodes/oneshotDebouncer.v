`timescale 1ns / 1ps
/*

	Antirrebote y sincronizador - OneShot
	
	Descripcion: 
	Permite sincronizar y quitar rebote a las señales momentaneas
	
	Entradas y salidas:
	CLK
	SignalIn
	SignalOut
	RESET

	Fecha: 10/Sep/2016
	Implementador: Luis Leon
	
*/

module oneshotDebouncer(

	input CLK,
	input SignalIn,
	output SignalOut,
	input RESET
    );

	reg [2:0] contador;

   always @ (posedge CLK)
      if (RESET == 1)
         contador <= 3'b000;
      else
         contador <= {contador[1:0], SignalIn};

   assign SignalOut = contador[0] & contador[1] & !contador[2];
	
	
endmodule
