module controlprinciapal(reset,CLK,finint,finwt,finct,usuario,iniciar,whileT,CrontUs,State);
	input reset,CLK,finint,finwt,finct,usuario;
	output iniciar,whileT,CrontUs,State;
	reg iniciar,whileT,CrontUs;
	reg [1:0] State;
	reg [1:0] NextState;
	//estados
	
	parameter [1:0] inicializar = 2'b00;
	parameter [1:0] Whiletrue = 2'b01;
	parameter [1:0] solicitud = 2'b10;
	parameter [1:0] controlusuario = 2'b11;
	
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
