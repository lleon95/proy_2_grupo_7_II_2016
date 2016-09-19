module controlprinciapal(reset,CLK,finint,finwt,finct,usuario,iniciar,whileT,CrontUs);
	input reset,CLK,finint,finwt,finct,usuario;
	output iniciar,whileT,CrontUs;
	reg iniciar,whileT,CrontUs;
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
					end
				controlusuario:
				begin
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
