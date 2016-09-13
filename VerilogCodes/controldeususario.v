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
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controldeususario(CLK,reset,selectores,interruptores,fin,Maquina_in,Maquina_out,ADD,ADD2,r,Dato_in,Dato_out,escritura);
	input CLK,reset;
	input [3:0]selectores;
	input [2:0]interruptores;
	input fin;
	input Maquina_in;
	output Maquina_out;
	output ADD,ADD2,r;
	input [7:0]Dato_in;
	output Dato_out;
	output escritura;
	reg Dato_out;
	reg Maquina_out,escritura;
	reg [3:0]ADD;
	reg [7:0]ADD2[0:15];
	reg r;
	reg [7:0] cambios[0:15];
	reg [7:0] dir2[0:15];
	reg [3:0] puntero;
	reg [3:0] puntero2;
	always @(posedge CLK)
	begin
		if(reset)
		begin
			r=0;
			ADD=0;
			Maquina_out=0;
			escritura=0;
			puntero=0;
			puntero=0;
		end
		else
		begin
			if(interruptores != 0)
			begin
				//escritura
				if(selectores[3] && puntero !=0)puntero<=puntero-1;
				else if(selectores[1] && puntero !=15) puntero <= puntero +1;
					else begin end
				case (interruptores)
					3'b001:
					begin
						if(puntero > 5) puntero<=1;
						else begin end
					end
					3'b010:
					begin
						if(puntero < 5 || puntero > 9) puntero<=5;
						else begin end
					end
					3'b011:
					begin
						if(puntero > 9) puntero<=1;
						else begin end
					end
					3'b100:
					begin
						if(puntero < 9) puntero=5;
						else begin end
					end
					3'b101:
					begin
						if(puntero < 5 || puntero > 9) begin end
						else puntero<=1;
					end
					3'b110:
					begin
						if(puntero < 5) puntero<=5;
						else begin end
					end
					default if(puntero>11)puntero<=11;
						else begin end
				endcase
				if(selectores[0])cambios[puntero]<=cambios[puntero]-1;
				else if(selectores[2]) cambios[puntero] <= cambios[puntero] +1;
					else begin end
				if(Maquina_in)
					if(puntero2 ==15) Maquina_out=1;
					else
					begin
						if(fin)
						begin
							cambios[puntero2]=0;
							puntero2=puntero2+1;
						end
						else
						begin
							r<=1;
							ADD<=puntero2;
							ADD2<=dir2[puntero2];
							Dato_out<=Dato_in+cambios[puntero2];
							escritura<=1;
						end
					end
				else puntero2=0;
			end
			else Maquina_out =1;
		end
	end

endmodule
