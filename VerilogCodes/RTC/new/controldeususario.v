`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:52 09/12/2016 
// Design Name: 
// Module Name:    controldeususario 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//					memoria:
//								1.segundos
//								2.minutos
//								3.horas
//								4.dias
//								5.mes
//								6.año
//								alarma
//								7.segundos
//								8.minutos
//								9.horas
//								luis
//								10.finalizado
//								11.activado
//								12.cursor
//								Status
//								13.status1
//								14.status2
//								15.status3
//								
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controldeususario(CLK,reset,Up,Down,Left,interruptores,fin,Maquina_in,ADD,ADD2,Dato_in,Dato_out,escritura,final,punteroOut);
	input CLK,reset,interruptores,fin;
	input Up,Down,Left;
	input Maquina_in;
	output [7:0]ADD2;
	output [3:0]ADD;
	input [7:0] Dato_in;
	output [7:0] Dato_out;
	output escritura;
	output final;
	output [3:0]punteroOut;
	
	wire [3:0] dirmemo;
	wire [3:0] dircontrolup, dircontroldown;
	wire [7:0] datoup,datodown;
	punteros punt(.interr(interruptores),.derecha(Left),.clk(CLK),.reset(reset),.dir2(dirmemo),.punteroOut(punteroOut));
	memoria_up memup(.addr(dirmemo),.up(Up),.addrm(dircontrolup),.erase(erase),.reset(reset),.clk(CLK),.dato_up(datoup));
	memoria_down memdown(.addr(dirmemo),.addrm(dircontroldown),.down(Down),.erase(erase),.reset(reset),.clk(CLK),.dato_down(datodown));
	maquina_usuario StateUs(.erase(erase),.iniciar(Maquina_in),.fin(fin),.reset(reset),.clk(CLK),.dato(Dato_in),.dato_up(datoup),.dato_down(datodown),.addr(ADD),.addr_up(dircontrolup),.final(final),.addr_down(dircontroldown),.dato_out(Dato_out),.escribe(escritura),.dir_out(ADD2));


endmodule
