`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:16 09/04/2016 
// Design Name: 
// Module Name:    RTC 
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
module ControlRTC(reset,clk,RD,CS,AD,WR,DatAdd,ADDreadreg,datmen,readmen,writedata,selectores, interruptores);
	input reset,clk,readmen;
	input [3:0] ADDreadreg;
	output RD,CS,AD,WR;
	output datmen;
	wire [7:0]datmen;
	output[7:0]  DatAdd;
	input [7:0] writedata;
	wire clonar1,clonar2,iniciar,whileT,CrontUs;
	wire finint,finwt,finct;
	wire esc;
	input [3:0] selectores;
	input [2:0] interruptores;
	wire [1:0] banderas;
	//Addres
	wire [3:0] ADDUsr,ADDwtr,ADDreg;
	wire [7:0] ADDUsr2,ADDint,ADDwt,ADDwrite,ADDread,ADDout,ADDread_out,ADDw;
	//control
	//fin
	wire finesc,finread,finout;
	wire finwht;
	//iniciar
	wire inlec,inwrit,inou,initescu,inwrite,initesci,activa_wr,activa_rd;
	//activacion
	wire solus,escriturareg,escreg,readreg;
	//datos
	wire [7:0] datousr;
	wire [7:0] datoutusr,datoutint,datoutwt,datoinwr,datoutwr;
	or2 Compor1(.dato1(finesc),.dato2(finread),.salida(inou));
	or2 Compor2(.dato1(activa_wr),.dato2(activa_rd),.salida(finwht));
	or3 Compor3(.dato1(initescu),.dato2(initesci),.dato3(inwrite),.salida(inwrite));
	concatenador conc1(.primero(clonar1),.segundo(clonar2),.salida(banderas));
	mux2x7 mux1(.Dato1(ADDint),.Dato2(ADDwt),.selector(iniciar),.salida(ADDread));
	mux2x7 mux2(.Dato1(ADDwrite),.Dato2(ADDread_out),.selector(esc),.salida(ADDout));
	mux2x7 mux3(.Dato1(ADDwt),.Dato2(ADDUsr2),.selector(whileT),.salida(ADDw));
	mux3x7 mux4(.Dato1(datoutinit),.Dato2(datoutwt),.Dato3(datoutusr),.selector(iniciar),.selector2(whileT),.salida(datoinwr));
	controlprinciapal	maquinaprincipal(.reset(reset),.CLK(clk),.finint(finint),.finwt(finwt),.finct(finct),.usuario(solus),.clonar1(clonar1),.clonar2(clonar2),.iniciar(iniciar),.whileT(whileT),.CrontUs(CrontUs));
	controldeususario controldeusuario(.CLK(clk),.reset(reset),.selectores(selectores),.interruptores(interruptores),.fin(finesc),.Maquina_in(CrontUs),.Maquina_out(solus),.ADD(ADDUsr),.ADD2(ADDUsr2),.read(readreg),.Dato_in(datours),.Dato_out(datouturs),.escritura(initescu),.final(finct));
	inicializacion	inicia(.reset(reset),.iniciar(iniciar),.clk(clk),.fin(finesc),.dir(ADDdir),.dato(datooutint),.escritura(initesci),.true(finint));
	while_true WT(.reset(reset),.clk(clk),.iniciar(whileT),.fin(finwht),.dir(ADDwt),.dir_reg(ADDwtr),.dato(datoutwt),.escritura(inwrite),.write(escreg),.lectura(inlec),.final(finwt));
	escritura write(.reset(reset),.clk(clk),.dir(ADDw),.dato(datoinwr),.iniciar(inwrit),.fin(finout),.data_out(datoutwr),.dir_out(ADDwrite),.escribe(esc),.final(finesc),.activa(activa_wr));
	lectura read(.reset(reset),.clk(clk),.dir(ADDread),.dir_reg(ADDwtr),.esc_reg(escreg),.iniciar(inlec),.fin(finout),.final(finread),.activa(activa_rd),.w(escriturareg),.reg_out(ADDreg),.dir_out(ADDread_out));
	control_salida Cront_out(.reset(reset),.direccion(ADDout),.dato(datoutwr),.clk(clk),.iniciar(inou),.escribe(esc),.data_out(DatAdd),.CS(CS),.AD(AD),.RD(RD),.WR(WR),.final(finout));
	memoria_DMULC memoria(.ADD1(ADDreg),.ADD2(ADDreadreg),.ADD3(ADDUsr),.DAT1(writedata),.Dato2(datmen),.Dato3(datours),.flags(banderas),.clk(clk),.reset(reset),.w1(escriturareg),.r2(readmen),.r3(readreg));

endmodule
