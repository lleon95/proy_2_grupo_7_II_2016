`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:59 09/03/2016 
// Design Name: 
// Module Name:    memoria_DMULC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//					memoria:
//								1.segundos
//								2.minutos
//								3.horas
//								4.dias
//								alarma
//								5.segundos
//								6.minutos
//								7.horas
//								8.dias
//								cronometro
//								9.segundos
//								10.minutos
//								11.horas
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module memoria_DMULC(ADD1,ADD2,ADD3,DAT1,Dato2,Dato3,clk,reset,w1);
	input clk,reset,w1;
	input[3:0] ADD1;
	input[3:0] ADD2;
	input[3:0] ADD3;
	input[7:0] DAT1;
	output Dato2,Dato3;
	reg [7:0] Dato2;
	reg [7:0] Dato3;
	reg [7:0] memoria1[0:15];
	reg [7:0] memoria2[0:31];

	always @(posedge clk)
	begin
		if(reset)
		begin
			Dato2<=0;
			Dato3<=0;
			memoria1[0]<=0;
			memoria1[1]<=0;
			memoria1[2]<=0;
			memoria1[3]<=0;
			memoria1[4]<=0;
			memoria1[5]<=0;
			memoria1[6]<=0;
			memoria1[7]<=0;
			memoria1[8]<=0;
			memoria1[9]<=0;
			memoria1[10]<=0;
			memoria1[11]<=0;
			memoria1[12]<=0;
			memoria1[13]<=0;
			memoria1[14]<=0;
			memoria1[15]<=0;
		end
		else
			begin
				if(w1) memoria1[ADD1]<=DAT1;
				else begin end
				Dato2<=memoria1[ADD2];
				Dato3<=memoria1[ADD3];
			end
		end
endmodule
