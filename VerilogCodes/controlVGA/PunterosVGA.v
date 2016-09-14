`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:29:16 09/13/2016 
// Design Name: 
// Module Name:    PunterosVGA 
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
module PunterosVGA(
		input [7:0] MemDataIN,
		input [9:0] PosX,
		input [9:0] PosY,
		output reg [3:0] MemAddrIN,
		output [16:0] ROMAddrOut,
		output [1:0] ROMCS,
		//input [5:0] ROMDataIN,
		input CLK,
		input RESET
    );

	/*
		  Banco de registros temporales
	*/
	reg [7:0] segReloj, minReloj, horReloj, dayReloj, monReloj, yearReloj, segCrono, minCrono, horCrono, Cursor;
	reg [3:0] contador, ringCrono, actCrono;
	wire [7:0] BCDBuffer;
	
	/*
		  Control de actualizacion de los registros temporales
	*/
	
	//	Vincular el convertidor de BCD BCDConverter(number, tens, ones)
	BCDConverter BCD(MemDataIN[6:0], BCDBuffer[7:4], BCDBuffer[3:0]);
	
	// Proceso de actualizacion
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
				Cursor <= 0;
				contador <= 0;
			end
		else
			begin
			// Contador de flujo
				if(contador < 4'd12) contador <= contador + 4'd1;
				else contador <= 0;
			// Actualizacion del banco
				MemAddrIN <= contador + 4'd1;				
				case(contador)
					4'd1 : segReloj <= BCDBuffer;
					4'd2 : minReloj <= BCDBuffer;
					4'd3 : horReloj <= BCDBuffer;
					4'd4 : dayReloj <= BCDBuffer;
					4'd5 : monReloj <= BCDBuffer;
					4'd6 : yearReloj <= BCDBuffer;
					4'd7 : segCrono <= BCDBuffer;
					4'd8 : minCrono <= BCDBuffer;
					4'd9 : horCrono <= BCDBuffer;
					4'd10 : ringCrono <= MemDataIN[3:0];
					4'd11 : actCrono <= MemDataIN[3:0];
					4'd12 : Cursor <= MemDataIN;
				endcase
			end
	end
	
	/*
		HASTA ACÁ: TENGO LOS DATOS CONVERTIDOS A BCD
	*/
	
	// Cambiar Numeros BCD por Punteros
	wire [9:0] PointerY;
	wire [1:0] ChipSelect;
	reg [3:0] Value;
	PointerTable PT(.PointY(PointerY),.Value(Value),.ChipSelect(ChipSelect));
	
	// Value es el valor a cambbiar por puntero
	/*
			Ya tengo cada direccion que debo desplazar
			Tengo los numeros en BCD
			Falta: Hacer condiciones de posicion
	*/
	
	/*
		Parametros de punteros
	*/
	
	// Parametros en X
	parameter DDayX = 132;
	parameter UDayX = 174;
	parameter DMonthX = 232;
	parameter UMonthX = 274;
	parameter DYearX = 416;
	parameter UYearX = 458;
	parameter DRHourX = 38;
	parameter URHourX = 80;
	parameter DRMinuteX = 128;
	parameter URMinuteX = 170;
	parameter DRSecondX = 218;
	parameter URSecondX = 260;
	parameter DCHourX = 339;
	parameter UCHourX = 381;
	parameter DCMinuteX = 429;
	parameter UCMinuteX = 471;
	parameter DCSecondX = 519;
	parameter UCSecondX = 561;
	//parameter AMPMX = 250;
	parameter ActivadoX = 338;
	parameter FinalizadoX = 500;

	// Parametros en Y
	parameter FechaY = 290;
	parameter HoraY = 132; 
	//parameter AMPMY = 200;
	parameter IndicadoresY = 90;

	// Parametros de tamaño
	parameter DigitosWidth = 40;
	parameter DigitosHeight = 60;
	parameter AMPMWidth = 50;
	parameter AMPMHeight = 20;
	parameter CronoWidth = 100;
	parameter CronoHeight = 20;

	// Buffer de posicion
	reg [16:0] Pixel;
	assign ROMCS = ChipSelect;
	assign ROMAddrOut = Pixel;
	
	// Condiciones
	always @(posedge CLK)
	begin
		if(PosY >= FechaY && PosY <= (FechaY + DigitosHeight))
		// Para Fechas
		begin
			// Cursor es 4
			if(PosX >= DDayX && PosX <= (DDayX + DigitosWidth) && !(Cursor == 4 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					Value <= dayReloj[7:4];
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:1] - DDayX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - FechaY[9:1] + PointerY[9:1]);
				end
			else if(PosX >= UDayX && PosX <= (UDayX + DigitosWidth) && !(Cursor == 4 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					Value <= dayReloj[3:0];
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:1] - UDayX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - FechaY[9:1] + PointerY[9:1]);
				end
			else if(PosX >= DMonthX && PosX <= (DMonthX + DigitosWidth) && !(Cursor == 5 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					Value <= monReloj[7:4];
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:1] - DMonthX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - FechaY[9:1] + PointerY[9:1]);
				end
			else if(PosX >= UMonthX && PosX <= (UMonthX + DigitosWidth) && !(Cursor == 5 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					Value <= monReloj[3:0];
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:1] - UMonthX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - FechaY[9:1] + PointerY[9:1]);
				end
			else if(PosX >= DYearX && PosX <= (DYearX + DigitosWidth) && !(Cursor == 6 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					Value <= yearReloj[7:4];
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:1] - DYearX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - FechaY[9:1] + PointerY[9:1]);
				end
			else if(PosX >= UYearX && PosX <= (UYearX + DigitosWidth) && !(Cursor == 6 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					Value <= yearReloj[3:0];
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:1] - UYearX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - FechaY[9:1] + PointerY[9:1]);
				end	
			// Caso no cursor ni puntero
			else
				begin
					// Deshabilitar el CS
					Value <= 4'd15;
					// Sin desfase
					Pixel <= PosX[9:1] + 17'd320 * PosY[9:1];
				end
		end
		else if(PosY >= HoraY && PosY <= (HoraY + DigitosHeight))
			begin
				if(PosX >= DRHourX && PosX <= (DRHourX + DigitosWidth) && !(Cursor == 3 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= horReloj[7:4];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - DRHourX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= URHourX && PosX <= (URHourX + DigitosWidth) && !(Cursor == 3 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= horReloj[3:0];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - URHourX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= DRMinuteX && PosX <= (DRMinuteX + DigitosWidth) && !(Cursor == 2 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= minReloj[7:4];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - DRMinuteX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= URMinuteX && PosX <= (URMinuteX + DigitosWidth) && !(Cursor == 2 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= minReloj[3:0];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - URMinuteX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= DRSecondX && PosX <= (DRSecondX + DigitosWidth) && !(Cursor == 1 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= segReloj[7:4];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - DRSecondX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= URSecondX && PosX <= (URSecondX + DigitosWidth) && !(Cursor == 1 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= segReloj[3:0];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - URSecondX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= DCHourX && PosX <= (DCHourX + DigitosWidth) && !(Cursor == 9 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= horCrono[7:4];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - DCHourX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= UCHourX && PosX <= (UCHourX + DigitosWidth) && !(Cursor == 9 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= horCrono[3:0];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - UCHourX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= DCMinuteX && PosX <= (DCMinuteX + DigitosWidth) && !(Cursor == 8 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= minCrono[7:4];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - DCMinuteX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= UCMinuteX && PosX <= (UCMinuteX + DigitosWidth) && !(Cursor == 8 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= minCrono[3:0];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - UCMinuteX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= DCSecondX && PosX <= (DCSecondX + DigitosWidth) && !(Cursor == 7 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= segCrono[7:4];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - DCSecondX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= UCSecondX && PosX <= (UCSecondX + DigitosWidth) && !(Cursor == 7 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						Value <= segCrono[3:0];
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - UCSecondX[9:1]) + DigitosWidth[17:1] * (PosY[9:1] - HoraY[9:1] + PointerY[9:1]);
					end
				// Caso no cursor ni puntero
				else
					begin
						// Deshabilitar el CS
						Value <= 4'd15;
						// Sin desfase
						Pixel <= PosX[9:1] + 17'd320 * PosY[9:1];
					end
			end
		/*
		else if(PosY >= AMPMY && PosY <= (AMPMY + AMPMHeight))
			begin
				
			end
		*/
		else if(PosY >= IndicadoresY && PosY <= (IndicadoresY + CronoHeight))
			begin
				if(PosX >= ActivadoX && PosX <= (ActivadoX + CronoWidth))
					begin
						// Poner el puntero
						Value <= ringCrono[3:0] + 4'd13;
						// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - ActivadoX[9:1]) + CronoWidth[17:1] * (PosY[9:1] - IndicadoresY[9:1] + PointerY[9:1]);
					end
				else if(PosX >= FinalizadoX && PosX <= (FinalizadoX + CronoWidth))
					begin
						// Poner el puntero
						Value <= actCrono[3:0] + 4'd13;
						// Calcular el pixel de puntero
						Pixel <= (PosX[9:1] - FinalizadoX[9:1]) + CronoWidth[17:1] * (PosY[9:1] - IndicadoresY[9:1] + PointerY[9:1]);
					end
				// Caso no cursor ni puntero
				else
					begin
						// Deshabilitar el CS
						Value <= 4'd15;
						// Sin desfase
						Pixel <= PosX[9:1] + 17'd320 * PosY[9:1];
					end
			end
		// Caso no cursor ni puntero
		else
			begin
				// Deshabilitar el CS
				Value <= 4'd15;
				// Sin desfase
				Pixel <= PosX[9:1] + 17'd320 * PosY[9:1];
			end
		
	end
	
	
	//assign Pixel = PosX + 10'd640 * PosY;

endmodule
