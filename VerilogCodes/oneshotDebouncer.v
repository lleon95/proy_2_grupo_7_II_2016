`timescale 1ns / 1ps
/*

	Antirrebote y sincronizador - OneShot
	
	Descripcion: 
	Permite sincronizar y quitar rebote a las seales momentaneas
	
	Entradas y salidas:
	CLK
	SignalIn
	SignalOut
	RESET

	Fecha: 10/Sep/2016
	Implementador: Luis Leon
	
*/

module debouncer(

	input Clk,
	input signalInput,
	output signalOutput,
	input Reset
    );

	reg [2:0] contador;

   always @ (posedge Clk)
      if (Reset == 1)
         contador <= 3'b000;
      else
         contador <= {contador[1:0], signalInput};

   assign signalOutput = contador[0] & contador[1] & !contador[2];
	
	
endmodule
