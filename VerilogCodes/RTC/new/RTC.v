module ControlRTC(reset,clk,RD,CS,AD,WR,DatAdd,ADDreadreg,datamemoria/*,writedata*/,selectores, interruptores,State);
	output [1:0] State;
	input reset,clk;
	input [3:0] ADDreadreg;
	input [3:0] selectores;
	input [2:0] interruptores;
	
	// START LLEON 
	
		//input [7:0] writedata;
		//output[7:0]  DatAdd;
		inout [7:0] DatAdd;
	
	// END LLEON
	output RD,CS,AD,WR;
	output[7:0] datamemoria;
	//wire [7:0] data_out;
	//activacion
	//control principal
	wire inwt,inint,inus,solocitudus;
	//escritura y lectura
	wire activawtesc,activawtlec,activaintesc,activausesc,activainesc;
	//control de salida
	wire activaoutesc,activaoutlec,activainout;
	//final
	//maquina principal
	wire finwt,finint,finct;
	//escritura y lectura
	wire finesc,finlec,fininwt;
	//control de salida
	wire finout;
	//ADD
	//registros
	//jerarquia 1
	wire [3:0] ADDregwt,ADDregurs;
	//jerarquia 2
	wire [3:0] ADDreglect;
	//completa
	//jerarquia 1
	wire [7:0] ADDwt,ADDin,ADDusr,ADDinesc;
	//jerarquia 2
	wire [7:0] ADDoutlec,ADDoutesc,ADDinout;
	//datos
	//jerarquia 1
	wire [7:0] DATwt,DATint,DATusr,DATinesc;
	//jerarquia 2
	wire [7:0] DATinout;
	//memoria
	wire [7:0] DATmen;
	//bitextras
	//escritura
	wire signalesc;
	//escritura en registro
	wire regesc,escriturareg;
	//puntero
	wire [3:0] puntero;
	//salida de datos
	
	// START LLEON
		reg [7:0] writedata, writeRTC;
		wire [7:0] readdata;
		//reg writeMEM;
		wire escreg;
		assign DatAdd = escreg ? 8'bzz : writeRTC;
		
		always @(posedge clk)
      if (reset) begin
         writedata  <= 1'b0;
         writeRTC <= 1'b0;
         //writeMEM <= 1'b0;
      end else begin
			if(escreg) writedata  <= DatAdd;
         writeRTC <= readdata;
         //writeMEM <= escreg;
      end
	// END LLEON
	
	or2 Compor1(.dato1(activaoutesc),.dato2(activaoutlec),.salida(activainout));
	or2 Compor2(.dato1(finesc),.dato2(finlec),.salida(fininwt));
	or3 Compor3(.dato1(activawtesc),.dato2(activaintesc),.dato3(activausesc),.salida(activainesc));
	Mux2x7 mux1(.Dato1(ADDoutesc),.Dato2(ADDoutlec),.selector(signalesc),.salida(ADDinout));
	mux3x7 mux2(.Dato1(ADDwt),.Dato2(ADDin),.Dato3(ADDusr),.selector(inwt),.selector2(inint),.salida(ADDinesc));
	mux3x7 mux3(.Dato1(DATwt),.Dato2(DATint),.Dato3(DATusr),.selector(inwt),.selector2(inint),.salida(DATinesc));
	controlprinciapal maquinaprincipal(.reset(reset),.CLK(clk),.finint(finint),.finwt(finwt),.finct(finct),.usuario(solocitudus),.iniciar(inint),.whileT(inwt),.CrontUs(inus),.State(State));
	controldeususario controldeusuario(.CLK(clk),.reset(reset),.selectores(selectores),.interruptores(interruptores),.fin(finesc),.Maquina_in(inus),.Maquina_out(solocitudus),.ADD(ADDregurs),.ADD2(ADDusr),.Dato_in(DATmen),.Dato_out(DATusr),.escritura(activausesc),.final(finct),.punteroOut(puntero));
	inicializacion	inicia(.reset(reset),.iniciar(inint),.clk(clk),.fin(finesc),.dirout(ADDin),.datoout(DATint),.escritura(activaintesc),.true(finint));
	while_true WT(.reset(reset),.clk(clk),.iniciar(inwt),.fin(fininwt),.dirout(ADDwt),.dir_reg(ADDregwt),.dato(DATwt),.escritura(activawtesc),.write(regesc),.lectura(activawtlec),.final(finwt));
	escritura write(.reset(reset),.clk(clk),.dir(ADDinesc),.dato(DATinesc),.iniciar(activainesc),.fin(finout),.data_out(DATinout),.dir_out(ADDoutesc),.escribe(signalesc),.final(finesc),.activa(activaoutesc));
	lectura read(.reset(reset),.clk(clk),.dir(ADDwt),.dir_reg(ADDregwt),.esc_reg(regesc),.iniciar(activawtlec),.fin(finout),.final(finlec),.activa(activaoutlec),.w(escriturareg),.reg_out(ADDreglect),.dir_out(ADDoutlec));
	control_salida Cront_out(.reset(reset),.direccion(ADDinout),.dato(DATinout),.clk(clk),.iniciar(activainout),.escribe(signalesc),.data_out(readdata),.CS(CS),.AD(AD),.RD(RD),.WR(WR),.final(finout),.esc(escriturareg),.escreg(escreg));
	memoria_DMULC memoria(.ADD1(ADDreglect),.ADD2(ADDreadreg),.ADD3(ADDregurs),.DAT1(writedata),.Dato2(datamemoria),.Dato3(DATmen),.clk(clk),.reset(reset),.w1(escreg),.puntero(puntero));

endmodule
