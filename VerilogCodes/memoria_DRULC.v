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
module memoria_DMULC(ADD1,ADD2,ADD3,DAT1,Dato2,Dato3,flags,clk,reset,w1);
	input clk,reset,w1;
	input[3:0] ADD1;
	input[3:0] ADD2;
	input[3:0] ADD3;
	input[7:0] DAT1;
	input[1:0] flags;
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
			
			memoria2[0]<=0;
			memoria2[1]<=0;
			memoria2[2]<=0;
			memoria2[3]<=0;
			memoria2[4]<=0;
			memoria2[5]<=0;
			memoria2[6]<=0;
			memoria2[7]<=0;
			memoria2[8]<=0;
			memoria2[9]<=0;
			memoria2[10]<=0;
			memoria2[11]<=0;
			memoria2[12]<=0;
			memoria2[13]<=0;
			memoria2[14]<=0;
			memoria2[15]<=0;
			memoria2[16]<=0;
			memoria2[17]<=0;
			memoria2[18]<=0;
			memoria2[19]<=0;
			memoria2[20]<=0;
			memoria2[21]<=0;
			memoria2[22]<=0;
			memoria2[23]<=0;
			memoria2[24]<=0;
			memoria2[25]<=0;
			memoria2[26]<=0;
			memoria2[27]<=0;
			memoria2[28]<=0;
			memoria2[29]<=0;
			memoria2[30]<=0;
			memoria2[31]<=0;
		end
		else
		begin
			if(flags != 0)
			begin
				if(flags[1])
				begin
					memoria2[16]<=memoria1[0];
					memoria2[17]<=memoria1[1];
					memoria2[18]<=memoria1[2];
					memoria2[19]<=memoria1[3];
					memoria2[20]<=memoria1[4];
					memoria2[21]<=memoria1[5];
					memoria2[22]<=memoria1[6];
					memoria2[23]<=memoria1[7];
					memoria2[24]<=memoria1[8];
					memoria2[25]<=memoria1[9];
					memoria2[26]<=memoria1[10];
					memoria2[27]<=memoria1[11];
					memoria2[28]<=memoria1[12];
					memoria2[29]<=memoria1[13];
					memoria2[30]<=memoria1[14];
					memoria2[31]<=memoria1[15];
				end
					else
					begin
						if(flags[0])
					begin
						memoria2[0]<=memoria2[0];
						memoria2[1]<=memoria2[1];
						memoria2[2]<=memoria2[2];
						memoria2[3]<=memoria2[3];
						memoria2[4]<=memoria2[4];
						memoria2[5]<=memoria2[5];
						memoria2[6]<=memoria2[6];
						memoria2[7]<=memoria2[7];
						memoria2[8]<=memoria2[8];
						memoria2[9]<=memoria2[9];
						memoria2[10]<=memoria2[10];
						memoria2[11]<=memoria2[11];
						memoria2[12]<=memoria2[12];
						memoria2[13]<=memoria2[13];
						memoria2[14]<=memoria2[14];
						memoria1[15]<=memoria2[15];
					end
					else begin end
					end
			end
			else
			begin
				if(w1) memoria1[ADD1]<=DAT1;
				else begin end
				Dato2<=memoria2[ADD2];
				Dato3<=memoria2[ADD3+16];
			end
		end
	end
endmodule
