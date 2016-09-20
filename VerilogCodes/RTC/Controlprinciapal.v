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
module controlprinciapal(reset,CLK,finint,finwt,finct,usuario,iniciar,whileT,CrontUs);
	input reset,CLK,finint,finwt,finct,usuario;
	output iniciar,whileT,CrontUs;
	reg iniciar,whileT,CrontUs;
	reg [2:0] State;
	reg [2:0] NextState;
	//estados
	
	parameter [2:0] inicializar = 2'b00;
	parameter [2:0] Whiletrue = 2'b01;
	parameter [2:0] solicitud = 2'b10;
	parameter [2:0] controlusuario = 2'b11;
	
	always@ (finint or finwt or finct or usuario or State)
	begin
	NextState =0;
	case(State)
	inicializar:
		if(finint)NextState=Whiletrue;
		else NextState=inicializar;
	Whiletrue:
		if(finwt)NextState=solicitud;
		else NextState=Whiletrue;
	solicitud:
		if(usuario)NextState=controlusuario;
		else NextState=Whiletrue;
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
			iniciar<=0;
			whileT<=0;
			CrontUs<=0;
		end
		else
		begin
			State<=NextState;
			case(State)
				inicializar:
				begin
					iniciar<=1;
					whileT<=0;
					CrontUs<=0;
				end
				Whiletrue:
					begin
						CrontUs<=0;
						iniciar<=0;
						whileT<=1;
					end
				controlusuario:
				begin
					iniciar<=0;
					whileT<=0;
					CrontUs<=1;
				end
				default:
				begin
					iniciar<=0;
					whileT<=0;
					CrontUs<=0;
			end
			endcase
		end
	end
endmodule
