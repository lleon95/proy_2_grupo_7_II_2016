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
//								5.meses
//								6.aos
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
module memoria_DMULC(ADD1,ADD2,ADD3,DAT1,Dato2,Dato3,clk,reset,w1,puntero);
	input[3:0] puntero;
	input clk,reset,w1;
	input[3:0] ADD1;
	input[3:0] ADD2;
	input[3:0] ADD3;
	input[7:0] DAT1;
	output Dato2,Dato3;/*
	reg [7:0] registroSeg;*/
	reg [7:0] Dato2;
	reg [7:0] Dato3;
	reg [7:0] memoria1[0:15];

	always @(posedge clk)
	begin
		if(reset)
		begin/*
			registroSeg <=30;*/
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
		memoria1[12]<={4'b0,puntero};
		/*if(memoria1[1] == registroSeg)
		begin
			if(registroSeg == 8'd0)
			begin
			 if(memoria1[2] == 8'd59)
			 begin
				memoria1[2]<=8'b0;
				if(memoria1[3]==8'd23)
				begin
				  memoria1[4]<=memoria1[4]+1;
				  memoria1[3]<=0;
				end
				else
				begin
				  memoria1[3]<=memoria1[3]+1;
				end
			 end
			 else
			 begin
				memoria1[2]<=memoria1[2]+1;
			 end
			end
			else
			begin
			end
			if(memoria1[1]==8'b0)
			     registroSeg<=8'd30;
			else if(memoria1[1]==8'd30)
			     registroSeg<=8'b0;
		end*/
		end
endmodule
