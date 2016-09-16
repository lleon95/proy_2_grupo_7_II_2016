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
//								10.dias
//								cronometro
//								11.segundos
//								12.minutos
//								13.horas
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controldeususario(CLK,reset,selectores,interruptores,fin,Maquina_in,Maquina_out,ADD,ADD2,read,Dato_in,Dato_out,escritura,final);
	input CLK,reset;
	input [3:0]selectores;
	input [2:0]interruptores;
	input fin;
	input Maquina_in;
	output Maquina_out;
	output ADD,ADD2;
	output read;
	input [7:0]Dato_in;
	output Dato_out;
	output escritura;
	output final;
	reg [7:0] Dato_out;
	reg Maquina_out,escritura;
	reg [3:0]ADD;
	reg [7:0]ADD2;
	reg read;
	reg final;
	reg [7:0] cambiospos[0:15];
	reg [7:0] cambiosneg[0:15];
	reg [7:0] dir2[0:15];
	reg [3:0] puntero;
	reg [3:0] puntero2;
	always @(posedge CLK)
	begin
		if(reset)
		begin
			final <=0;
			read<=0;
			ADD<=0;
			ADD2<=0;
			Maquina_out<=0;
			escritura<=0;
			puntero<=1;
			puntero2<=0;
			Dato_out <=0;
			dir2[0]<=80;
			dir2[1]<=32;
			dir2[2]<=33;
			dir2[3]<=34;
			dir2[4]<=35;
			dir2[5]<=36;
			dir2[6]<=38;
			dir2[7]<=49;
			dir2[8]<=50;
			dir2[9]<=51;
			dir2[10]<=52;
			dir2[11]<=65;
			dir2[12]<=65;
			dir2[13]<=67;
			dir2[14]<=0;
			dir2[15]<=0;
			cambiospos[0]<=0;
			cambiospos[1]<=0;
			cambiospos[2]<=0;
			cambiospos[3]<=0;
			cambiospos[4]<=0;
			cambiospos[5]<=0;
			cambiospos[6]<=0;
			cambiospos[7]<=0;
			cambiospos[8]<=0;
			cambiospos[9]<=0;
			cambiospos[10]<=0;
			cambiospos[11]<=0;
			cambiospos[12]<=0;
			cambiospos[13]<=0;
			cambiospos[14]<=0;
			cambiospos[15]<=0;
			cambiosneg[0]<=0;
			cambiosneg[1]<=0;
			cambiosneg[2]<=0;
			cambiosneg[3]<=0;
			cambiosneg[4]<=0;
			cambiosneg[5]<=0;
			cambiosneg[6]<=0;
			cambiosneg[7]<=0;
			cambiosneg[8]<=0;
			cambiosneg[9]<=0;
			cambiosneg[10]<=0;
			cambiosneg[11]<=0;
			cambiosneg[12]<=0;
			cambiosneg[13]<=0;
			cambiosneg[14]<=0;
			cambiosneg[15]<=0;
		end
		else
		begin
			if(interruptores != 0)
			begin
				Maquina_out<=1;
				//escritura
				if(selectores[3] && puntero !=0)puntero<=puntero-1;
				else if(selectores[1] && puntero !=13) puntero <= puntero +1;
					else begin end
				case (interruptores)
					3'b001:
					begin
						if(puntero > 6) puntero<=1;
						else begin end
					end
					3'b010:
					begin
						if(puntero < 6 || puntero > 10) puntero<=7;
						else begin end
					end
					3'b011:
					begin
						if(puntero > 10) puntero<=1;
						else begin end
					end
					3'b100:
					begin
						if(puntero < 10) puntero<=11;
						else begin end
					end
					3'b101:
					begin
						if(puntero < 6 || puntero > 10) begin end
						else puntero<=1;
					end
					3'b110:
					begin
						if(puntero < 6) puntero<=7;
						else begin end
					end
					default if(puntero>13)puntero<=13;
						else begin end
				endcase
				if(selectores[0])cambiosneg[puntero]<=cambiosneg[puntero]+1;
				else if(selectores[2]) cambiospos[puntero] <= cambiospos[puntero] +1;
					else begin end
				if(puntero2 == 0) final<=0;
				else begin end
				if(Maquina_in)
					if(puntero2 ==12) 
					begin
						puntero2<=0;
						final<=1;
					end
					else
					begin
						if(fin)
						begin
							cambiospos[puntero2]<=0;
							cambiosneg[puntero2]<=0;
							puntero2<=puntero2+1;
						end
						else
						begin
							final<=0;
							read<=1;
							ADD<=puntero2;
							ADD2<=dir2[puntero2];
							Dato_out<=Dato_in+cambiospos[puntero2]-cambiosneg[puntero2];
							escritura<=1;
						end
					end
				else puntero2<=0;
			end
			else Maquina_out<=0;
		end
	end

endmodule
