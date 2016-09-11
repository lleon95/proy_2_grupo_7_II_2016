`timescale 1ns / 1ps
/*

	Modulo de Control de Usuario
	
	Descripcion: 
	Permite al usuario realizar ajustes al sistema
	
	Entradas y salidas:
	CLK
	RESET
	Up
	Down
	Left
	Right
	Cronometro
	Fecha
	Tiempo

	Fecha: 10/Sep/2016
	Implementador: Luis Leon
	
*/

module ControlUsuario(
    
	 input CLK,
	 input RESET,
	 // Entradas
	 input btnUP,
	 input btnDOWN,
	 input btnLEFT,
	 input btnRIGHT,
	 input swCRONOMETRO,
	 input swFECHA,
	 input swTIEMPO,
	 
	 
	 // Con bus local
	 input [6:0] dataIN,
	 input [3:0] AddressIN
	 
	 );
	 

	
	 /*
			SINCRONIZADOR Y ANTIRREBOTES
	 */
	 
	 reg UP, DOWN, LEFT, RIGHT;
	 reg CRONOMETRO, FECHA, TIEMPO;
	 // Para los botones
	 oneshotDebouncer dbUP(.CLK(CLK), .RESET(RESET), .SignalIn(btnUP), .SignalOut(UP));
	 oneshotDebouncer dbDOWN(.CLK(CLK), .RESET(RESET), .SignalIn(btnDOWN), .SignalOut(DOWN));
	 oneshotDebouncer dbLEFT(.CLK(CLK), .RESET(RESET), .SignalIn(btnLEFT), .SignalOut(LEFT));
	 oneshotDebouncer dbRIGHT(.CLK(CLK), .RESET(RESET), .SignalIn(btnRIGHT), .SignalOut(RIGHT));
	 // Para los selectores
	 stateDebouncer dbCRONOMETRO(.CLK(CLK), .RESET(RESET), .SignalIn(swCRONOMETRO), .SignalOut(CRONOMETRO));
	 stateDebouncer dbFECHA(.CLK(CLK), .RESET(RESET), .SignalIn(swFECHA), .SignalOut(FECHA));
	 stateDebouncer dbTIEMPO(.CLK(CLK), .RESET(RESET), .SignalIn(swTIEMPO), .SignalOut(TIEMPO));
	 
	 /*
			LOGICA COMBINACIONAL
	 */
	 
	 reg [2:0] SELECTOR;
	 always @*
	 begin
		SELECTOR = {TIEMPO, FECHA, CRONOMETRO};
	 end
	
	 
	 /*
			CONTROL
	 */
	 reg updFromExtBank;
	 
	 always @(posedge CLK)
		begin
		// Actualizar de forma externa
			if(SELECTOR == 0) updFromExtBank <= 1;
			else updFromExtBank <= 0;
		
			
		end

	 /*
			CONEXION DE BANCO DE DATOS
	 */
	 wire [6:0] dataBusOutgoing; // Outgoing respecto a este modulo
	 wire [3:0] addrBusOutgoing; 
	 
	// assign assign addrBusOutgoing = updFromExtBank ? dataIN : <input0>;

endmodule
