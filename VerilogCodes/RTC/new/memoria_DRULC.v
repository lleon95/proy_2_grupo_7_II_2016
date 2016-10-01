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
module memoria_DMULC(ADD1,ADD2,ADD3,DAT1,Dato2,Dato3,clk,reset,w1,puntero,whileT,actready,irq);
	input[3:0] puntero;
	input clk,reset,w1,irq;
	input[3:0] ADD1;
	input[3:0] ADD2;
	input[3:0] ADD3;
	input[7:0] DAT1;
	input whileT;
	output actready;
	output Dato2,Dato3;
	
	reg actready;
	reg [7:0] Dato2;
	reg [7:0] Dato3;
	reg [7:0] memoriain[0:15];
	reg [7:0] memoriaout[0:15];
	reg [3:0] contador;
	
	reg [2:0] Status;
	reg [2:0] Next_State;
	
	parameter inicio = 3'b000;
	parameter whileReq = 3'b001;
	parameter escritura = 3'b010;
	parameter actualizacion = 3'b011;
	parameter cont10=3'b100;
	parameter estable = 3'b101;

	always @(whileT or Status)
	begin
	Next_State =0;
	case(Status)
	inicio:
		 Next_State=whileReq;
	whileReq:
	begin
		if(whileT == 1'b1) Next_State=escritura;
		else Next_State=whileReq;
	end
	escritura:
	begin
		if(whileT == 1'b0) Next_State=actualizacion;
		else Next_State=escritura;
	end
	actualizacion:
		Next_State=cont10;
	cont10:
	begin
		if(contador == 4'd10) Next_State=estable;
		else Next_State=actualizacion;
	end
	estable:
	begin
		Next_State=inicio;
	end
	default: Next_State =inicio;
	endcase
	end
	
	always @(posedge clk)
	begin
		if(reset)
		begin
			Status <=inicio;
			contador <=4'b0;
			Dato2<=0;
			Dato3<=0;
			memoriain[0]<=0;
			memoriain[1]<=0;
			memoriain[2]<=0;
			memoriain[3]<=0;
			memoriain[4]<=0;
			memoriain[5]<=0;
			memoriain[6]<=0;
			memoriain[7]<=0;
			memoriain[8]<=0;
			memoriain[9]<=0;
			memoriain[10]<=0;
			memoriain[11]<=0;
			memoriain[12]<=0;
			memoriain[13]<=0;
			memoriain[14]<=0;
			memoriain[15]<=0;
			
			memoriaout[0]<=0;
			memoriaout[1]<=0;
			memoriaout[2]<=0;
			memoriaout[3]<=0;
			memoriaout[4]<=0;
			memoriaout[5]<=0;
			memoriaout[6]<=0;
			memoriaout[7]<=0;
			memoriaout[8]<=0;
			memoriaout[9]<=0;
			memoriaout[10]<=0;
			memoriaout[11]<=0;
			memoriaout[12]<=0;
			memoriaout[13]<=0;
			memoriaout[14]<=0;
			memoriaout[15]<=0;
		end
		else
			begin
			Status<=Next_State;
			case(Status)
			inicio:
			begin
				contador <=4'b0;
				Dato2<=memoriaout[ADD2];
				Dato3<=memoriaout[ADD3];
			end
			whileReq:
			begin
				actready<=0;
				contador <=4'b0;
				memoriain[ADD1]<=DAT1;
				Dato2<=memoriaout[ADD2];
				Dato3<=memoriaout[ADD3];
			end
			escritura:
			begin
				if(w1)
					memoriain[ADD1]<=DAT1;
				else
					begin end
				Dato2<=memoriaout[ADD2];
				Dato3<=memoriaout[ADD3];
			end
			actualizacion:
			begin
				memoriaout[contador]<=memoriain[contador];
				Dato2<=memoriain[ADD2];
				Dato3<=memoriain[ADD3];
			end
			cont10:
			begin
				contador<=contador+1;
				memoriaout[contador]<=memoriain[contador];
				Dato2<=memoriain[ADD2];
				Dato3<=memoriain[ADD3];
			end
			estable:
			begin
				contador<=0;
				actready <= 1'b1;
			end
			default: Status <=inicio;
		endcase
		memoriaout[10]<={7'b0,~irq};
		memoriaout[11]<={7'b0,irq};
		memoriaout[12]<={4'b0,puntero};
		end
	end
endmodule
