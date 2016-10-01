module controlprinciapal(reset,CLK,finint,finwt,finct,usuario,iniciar,whileT,CrontUs/*,State*/,actready);
	input reset,CLK,finint,finwt,finct,usuario,actready;
	output iniciar,whileT,CrontUs/*,State*/;
	reg iniciar,whileT,CrontUs;
	reg [2:0] State;
	reg [2:0] NextState;
	//estados
	
	parameter [2:0] inicializar = 3'b000;
	parameter [2:0] ceros = 3'b001;
	parameter [2:0] Whiletrue = 3'b010;
	parameter [2:0] estable = 3'b011;
	parameter [2:0] solicitud = 3'b100;
	parameter [2:0] controlusuario = 3'b101;
	
	always@ (finint or finwt or finct or usuario or State or actready)
	begin
	NextState =0;
	case(State)
	inicializar:
		if(finint)NextState=ceros;
		else NextState=inicializar;
	ceros:
		if(finct)NextState=Whiletrue;
		else NextState=ceros;
	Whiletrue:
		if(finwt)NextState=estable;
		else NextState=Whiletrue;
	estable:
		if(actready)NextState=solicitud;
		else NextState=estable;
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
			State <= inicializar;
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
				ceros:
				begin
					CrontUs<=1;
					iniciar<=0;
					whileT<=0;
				end
				Whiletrue:
					begin
						CrontUs<=0;
						iniciar<=0;
						whileT<=1;
					end
				estable:
					begin
						CrontUs<=0;
						iniciar<=0;
						whileT<=0;
					end
				solicitud:
					begin
						CrontUs<=0;
						iniciar<=0;
						whileT<=0;
					end
				controlusuario:
				begin
					CrontUs<=1;
					iniciar<=0;
					whileT<=0;
				end
				default:
				begin
				State <=inicializar;
			end
			endcase
		end
	end
endmodule
