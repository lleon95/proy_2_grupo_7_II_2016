`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:30 09/10/2016 
// Design Name: 
// Module Name:    ControlVGA 
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
module ControlVGA(
		// De control y datos
		input CLK,
		input RESET,
		output reg [3:0] addrOUT,
		input [6:0] dataIN,
		// Señales VGA
		output HSync,
		output VSync,
		output R[3:0],
		output G[3:0],
		output B[3:0]
    );
	 
	 
	 /*
		  Banco de registros temporales
	 */
	 
	reg [6:0] segReloj, minReloj, horReloj, dayReloj, monReloj, yearReloj, segCrono, minCrono, horCrono, ringCrono, actCrono, cursor;
	reg [3:0] contador;
	
	 /*
		  Control de actualizacion de los registros temporales
	 */
	 
	always @(posedge CLK)
	begin
		if(RESET)
			begin
			// Limpiar registros
				segReloj <= 0;
				minReloj <= 0;
				horReloj <= 0;
				dayReloj <= 0;
				monReloj <= 0;
				yearReloj <= 0;
				segCrono <= 0;
				minCrono <= 0;
				horCrono <= 0;
				ringCrono <= 0;
				actCrono <= 0;
				cursor <= 0;
				contador <= 0;
			end
		else
			begin
			// Contador de flujo
				if(contador < 4'd12) contador <= contador + 1;
				else contador <= 0;
			// Actualizacion del banco
				addrOUT = contador + 1;
				case(contador)
					4'd1 : segReloj <= dataIN;
					4'd2 : minReloj <= dataIN;
					4'd3 : horReloj <= dataIN;
					4'd4 : dayReloj <= dataIN;
					4'd5 : monReloj <= dataIN;
					4'd6 : yearReloj <= dataIN;
					4'd7 : segCrono <= dataIN;
					4'd8 : minCrono <= dataIN;
					4'd9 : horCrono <= dataIN;
					4'd10 : ringCrono <= dataIN;
					4'd11 : actCrono <= dataIN;
					4'd12 : cursor <= dataIN;
				endcase
			end
	end
	 
	 /*
		  Contadores y generadores de sincronia
	 */
	 
	 reg [9:0] CntX, CntY;
	 wire YFlag;
	 // Horizontal
	 contadorhorizontal CntH(.Clk(CLK), .Reset(RESET), .cntHorizontal(CntX), .vflag(YFlag));
	 // Vertical
	 contadorvertical CntV(.Clk(CLK), .Reset(RESET), .cntVertical(CntY), .vflag(YFlag));
	 // Sincronia Horizontal
	 generadorHsync SyncH(.cntHorizontal(CntX),.HSync(HSync));
	 // Sincronia Vertical
	 generadorVsync SyncV(.cntVertical(CntY),.VSync(VSync));
	 
	 // Ajuste
	 
    /*
			Generador de Blanking
	 */
	 
	 reg	Blank;
	 generadorBlank BlankGen(.PosY(CntY), .PosX(CntX), .Blank(Blank));
	 
	
	 /*
			Control de Salida
	 */
	 
	 reg [11:0] VideoData;
	 reg [3:0] R, G, B;
	 
	 controlSalidaVGA outputVGA(.DataIN(VideoData), .OE(Blank), .R(R), .G(G), .B(B));
	 

	/*
			Control de direccionamiento
	*/
	
	// Ajuste de desface
	 reg [9:0] PosXcnt, PosYcnt;
	 always @*
	 begin
		if(!Blank)
		begin
			PosXcnt = CntX - 48;
			PosYcnt = CntY - 30;
		end
		else
		begin
			PosXcnt = 0;
			PosYcnt = 0;
		end
	 end
	
	// Constantes del UI
	
	// -- Numbers
	parameter NumberWidth = 37;
	parameter NumberHeight = 59;
	// -- -- Date
	parameter TenDays = {10'd102,10'd109};
	parameter UnitDays = {10'd102,10'd153};
	parameter TenMonths = {10'd102,10'd222};
	parameter UnitMonths = {10'd102,10'd266};
	parameter TenYears = {10'd102,10'd428};
	parameter UnitYears = {10'd102,10'd472};
	// -- -- Clock
	parameter TenHoursCLK = {10'd296,10'd36}; //36,296
	parameter UnitHoursCLK = {10'd296,10d'76}; //76,296
	parameter TenMinsCLK = {10'd296,10'd131}; //131,296
	parameter UnitMinsCLK = {10'd296,10d'171}; //171,296
	parameter TenSecsCLK = {10'd296,10'd225}; //225,296
	parameter UnitSecsCLK = {10'd296,10d'265}; //265,296
	// -- -- Crono
	parameter TenHoursCRM = {10'd296,10'd326}; //326,296
	parameter UnitHoursCRM = {10'd296,10d'366}; 
	parameter TenMinsCRM = {10'd296,10'd421}; 
	parameter UnitMinsCRM = {10'd296,10d'461};
	parameter TenSecsCRM = {10'd296,10'd515}; //225,296
	parameter UnitSecsCRM = {10'd296,10d'555}; //265,296
	// -- Numbers Pointers
	parameter StartN = {10'd699,10'd0}; // Increment spacing by the number
	// -- Signals
	// -- -- Clock
	parameter AMPMWidth = 57;
	parameter AMPMHeight = 24;
	parameter AMPM = {10'd406, 10'd28}; //28,406
	// -- -- Cronometer
	parameter RedSignWidth = 148;
	parameter RedSignHeight = 23;
	parameter Activated = {10'd407, 10'd160};//160,407
	parameter Finished = {10'd407, 10'd322};//322,407
	
	
	// Verificar posicion actual
	reg [9:0] PosXpoint, PosYpoint;
	reg PointingEnable;
	reg [6:0] Value;
	reg [3:0] Tens, Ones;
	
	BCDConverter BCD(.number(Value), .tens(Tens), .ones(Ones));
	
	// Sustituir por puntero
	always @(posedge CLK)
	begin
	
		// Para las decenas de los dias
		if(PosXcnt >= TenDays[9:0] && PosXcnt <= (TenDays[9:0] + NumberWidth) && PosYcnt >= TenDays[19:10] && PosYcnt <= (TenDays[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= dayReloj;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenDays[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenDays[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de los dias
		else if(PosXcnt >= UnitDays[9:0] && PosXcnt <= (UnitDays[9:0] + NumberWidth) && PosYcnt >= UnitDays[19:10] && PosYcnt <= (UnitDays[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= dayReloj;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitDays[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitDays[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de los meses
		else if(PosXcnt >= TenMonths[9:0] && PosXcnt <= (TenMonths[9:0] + NumberWidth) && PosYcnt >= TenMonths[19:10] && PosYcnt <= (TenMonths[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= monReloj;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenMonths[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenMonths[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de los meses
		else if(PosXcnt >= UnitMonths[9:0] && PosXcnt <= (UnitMonths[9:0] + NumberWidth) && PosYcnt >= UnitMonths[19:10] && PosYcnt <= (UnitMonths[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= monReloj;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitMonths[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitMonths[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de los años
		else if(PosXcnt >= TenYears[9:0] && PosXcnt <= (TenYears[9:0] + NumberWidth) && PosYcnt >= TenYears[19:10] && PosYcnt <= (TenYears[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= yearReloj;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenYears[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenYears[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de los años
		else if(PosXcnt >= UnitYears[9:0] && PosXcnt <= (UnitYears[9:0] + NumberWidth) && PosYcnt >= UnitYears[19:10] && PosYcnt <= (UnitYears[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= yearReloj;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitYears[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitYears[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de las horas Reloj
		else if(PosXcnt >= TenHoursCLK[9:0] && PosXcnt <= (TenHoursCLK[9:0] + NumberWidth) && PosYcnt >= TenHoursCLK[19:10] && PosYcnt <= (TenHoursCLK[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= horReloj;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenHoursCLK[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenHoursCLK[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de las horas Reloj
		else if(PosXcnt >= UnitHoursCLK[9:0] && PosXcnt <= (UnitHoursCLK[9:0] + NumberWidth) && PosYcnt >= UnitHoursCLK[19:10] && PosYcnt <= (UnitHoursCLK[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= horReloj;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitHoursCLK[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitHoursCLK[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de las minutos Reloj
		else if(PosXcnt >= TenMinsCLK[9:0] && PosXcnt <= (TenMinsCLK[9:0] + NumberWidth) && PosYcnt >= TenMinsCLK[19:10] && PosYcnt <= (TenMinsCLK[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= minReloj;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenMinsCLK[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenMinsCLK[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de las minutos Reloj
		else if(PosXcnt >= UnitMinsCLK[9:0] && PosXcnt <= (UnitMinsCLK[9:0] + NumberWidth) && PosYcnt >= UnitMinsCLK[19:10] && PosYcnt <= (UnitMinsCLK[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= minReloj;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitMinsCLK[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitMinsCLK[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de las segundos Reloj
		else if(PosXcnt >= TenSecsCLK[9:0] && PosXcnt <= (TenSecsCLK[9:0] + NumberWidth) && PosYcnt >= TenSecsCLK[19:10] && PosYcnt <= (TenSecsCLK[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= segReloj;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenSecsCLK[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenSecsCLK[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de las segundos Reloj
		else if(PosXcnt >= UnitSecsCLK[9:0] && PosXcnt <= (UnitSecsCLK[9:0] + NumberWidth) && PosYcnt >= UnitSecsCLK[19:10] && PosYcnt <= (UnitSecsCLK[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= segReloj;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitSecsCLK[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitSecsCLK[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de las horas Crono
		else if(PosXcnt >= TenHoursCRM[9:0] && PosXcnt <= (TenHoursCRM[9:0] + NumberWidth) && PosYcnt >= TenHoursCRM[19:10] && PosYcnt <= (TenHoursCRM[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= horCrono;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenHoursCRM[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenHoursCRM[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de las horas Crono
		else if(PosXcnt >= UnitHoursCRM[9:0] && PosXcnt <= (UnitHoursCRM[9:0] + NumberWidth) && PosYcnt >= UnitHoursCRM[19:10] && PosYcnt <= (UnitHoursCRM[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= horCrono;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitHoursCRM[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitHoursCRM[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de las minutos Crono
		else if(PosXcnt >= TenMinsCRM[9:0] && PosXcnt <= (TenMinsCRM[9:0] + NumberWidth) && PosYcnt >= TenMinsCRM[19:10] && PosYcnt <= (TenMinsCRM[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= minCrono;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenMinsCRM[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenMinsCRM[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de las minutos Crono
		else if(PosXcnt >= UnitMinsCRM[9:0] && PosXcnt <= (UnitMinsCRM[9:0] + NumberWidth) && PosYcnt >= UnitMinsCRM[19:10] && PosYcnt <= (UnitMinsCRM[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= minCrono;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitMinsCRM[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitMinsCRM[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las decenas de las segundos Crono
		else if(PosXcnt >= TenSecsCRM[9:0] && PosXcnt <= (TenSecsCRM[9:0] + NumberWidth) && PosYcnt >= TenSecsCRM[19:10] && PosYcnt <= (TenSecsCRM[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= segCrono;
				PosXpoint <= (StartN[9:0] + Tens + NumberWidth * Tens) + (PosXcnt - TenSecsCRM[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - TenSecsCRM[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		// Para las unidades de las segundos Crono
		else if(PosXcnt >= UnitSecsCRM[9:0] && PosXcnt <= (UnitSecsCRM[9:0] + NumberWidth) && PosYcnt >= UnitSecsCRM[19:10] && PosYcnt <= (UnitSecsCRM[19:10] + NumberHeight))
			begin
				PointingEnable <= 1;
				Value <= segCrono;
				PosXpoint <= (StartN[9:0] + Ones + NumberWidth * Ones) + (PosXcnt - UnitSecsCRM[9:0]); // Calcular el puntero del numero con base al numero de tamaños, la cantidad de espacios y el desplazamiento
				PosYpoint <= (StartN[19:10]) + (PosYcnt - UnitSecsCRM[19:10]); // Calcular el puntero del numero con base al desplazamiento
			end
		/*
				FALTAN AMPM, ACTIVADO, FINALIZADO y CURSORES
		*/
		else
			PointingEnable <= 0;
	end
	
	
	
	
	 /*
			VROM
	 */
	 
	 
	 // Acceso - Conmutacion
	 wire [19:0] AddressROM;
	 assign AddressROM = PointingEnable ? {PosYpoint, PosXpoint} : {PosYcnt, PosXcnt};
	 
	 // Instanciamiento
	 VROM VideoROM(.DataOut(VideoData),.Address(AddressROM),.CLK(CLK));

	
endmodule
