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
//								status
//								12.1
//								13.2
//								14.3
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module memoria_DMULC(ADD1,ADD2,DAT1,DAT2,Dato1,Dato2,flags,clk,reset,w1,w2,r1,r2);
	input clk,reset,w1,w2,r1,r2;
	input[3:0] ADD1;
	input[3:0] ADD2;
	input[7:0] DAT1;
	input[7:0] DAT2;
	input[7:0] flags;
	output Dato1,Dato2;
	reg [7:0] Dato1;
	reg [7:0] Dato2;
	reg [7:0] memoria1[0:15];
	reg [7:0] memoria2[0:15];

	always @(posedge clk)
	begin
		if(reset)
		begin
			Dato1=0;
			Dato2=0;
		
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
		end
		else
		begin
			if(flags != 0)
			begin
				if(flags[7] || flags[6] || flags[5] || flags[4])
				begin
					memoria2[0]<=memoria1[0];
					memoria2[1]<=memoria1[1];
					memoria2[2]<=memoria1[2];
					memoria2[3]<=memoria1[3];
					memoria2[4]<=memoria1[4];
					memoria2[5]<=memoria1[5];
					memoria2[6]<=memoria1[6];
					memoria2[7]<=memoria1[7];
					memoria2[8]<=memoria1[8];
					memoria2[9]<=memoria1[9];
					memoria2[10]<=memoria1[10];
					memoria2[11]<=memoria1[11];
					memoria2[12]<=memoria1[12];
					memoria2[13]<=memoria1[13];
					memoria2[14]<=memoria1[14];
					memoria2[15]<=memoria1[15];
				end
				else
					if(flags[3] || flags[2] || flags[1] || flags[0])
					begin
						memoria1[0]<=memoria2[0];
						memoria1[1]<=memoria2[1];
						memoria1[2]<=memoria2[2];
						memoria1[3]<=memoria2[3];
						memoria1[4]<=memoria2[4];
						memoria1[5]<=memoria2[5];
						memoria1[6]<=memoria2[6];
						memoria1[7]<=memoria2[7];
						memoria1[8]<=memoria2[8];
						memoria1[9]<=memoria2[9];
						memoria1[10]<=memoria2[10];
						memoria1[11]<=memoria2[11];
						memoria1[12]<=memoria2[12];
						memoria1[13]<=memoria2[13];
						memoria1[14]<=memoria2[14];
						memoria1[15]<=memoria2[15];
					end
					else
					begin
					end
			end
			else
			begin
				if(w1 || w2)
					if(w1) memoria1[ADD1]=DAT1;
					else	memoria2[ADD2]=DAT2;
				else
					if(r1 || r2)
						if(r1) 
						begin
							Dato1=memoria1[ADD1];
							Dato2=0;
						end
						else	
						begin
							Dato1=0;
							Dato2=memoria2[ADD2];
						end
					else
					begin
						Dato1=0;
						Dato2=0;
					end
			end
		end
	end
endmodule
