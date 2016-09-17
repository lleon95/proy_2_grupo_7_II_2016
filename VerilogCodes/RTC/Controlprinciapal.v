`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:55 09/15/2016 
// Design Name: 
// Module Name:    controlprinciapal 
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
module controlprinciapal(reset,CLK,finint,finwt,finct,usuario,clonar1,clonar2,iniciar,whileT,CrontUs);
	input reset,CLK,finint,finwt,finct,usuario;
	output clonar1,clonar2,iniciar,whileT,CrontUs;
	reg clonar1,clonar2,iniciar,whileT,CrontUs;
	reg [2:0] State;
	reg [2:0] NextState;
	//estados
	
	parameter [2:0] inicializar = 3'b000;
	parameter [2:0] Whiletrue = 3'b001;
	parameter [2:0] actualizacion1 = 3'b010;
	parameter [2:0] solicitud = 3'b011;
	parameter [2:0] actualizacion2 = 3'b100;
	parameter [2:0] controlusuario = 3'b101;
	
	always@ (finint or finwt or finct or usuario or State)
	begin
	NextState =0;
	case(State)
	inicializar:
		if(finint)NextState=Whiletrue;
		else NextState=inicializar;
	Whiletrue:
		if(finwt)NextState=actualizacion1;
		else NextState=Whiletrue;
	actualizacion1:
		NextState=solicitud;
	solicitud:
		if(usuario)NextState=actualizacion2;
		else NextState=Whiletrue;
	actualizacion2:
		NextState=controlusuario;
	controlusuario:
		if(finct)NextState=Whiletrue;
		else NextState=controlusuario;
	default:
		NextState=inicializar;
	endcase
	end
	
	always @(posedge CLK)
	begin
		if(reset)
		begin
			clonar1<=0;
			clonar2<=0;
			iniciar<=0;
			whileT<=0;
			CrontUs<=0;
		end
		else
		begin
			State<=NextState;
			case(State)
				inicializar:
					iniciar<=1;
				Whiletrue:
					begin
						CrontUs<=0;
						iniciar<=0;
						whileT<=1;
					end
				actualizacion1:
					begin
						whileT<=0;
						clonar1<=1;
					end
				solicitud:
					clonar1<=0;
				actualizacion2:
					clonar2<=1;
				controlusuario:
				begin
					clonar2<=0;
					CrontUs<=1;
				end
				default:
				begin
					clonar1<=0;
					clonar2<=0;
					iniciar<=0;
					whileT<=0;
					CrontUs<=0;
			end
			endcase
		end
	end
endmodule
