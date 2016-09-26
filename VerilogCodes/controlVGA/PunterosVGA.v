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
		output [18:0] ROMAddrOut,
		output [1:0] ROMCS,
		//input [5:0] ROMDataIN,
		input CLK,
		input RESET
    );

	/*
		  Banco de registros temporales
	*/
	
	reg [19:0] segReloj, minReloj, horReloj, dayReloj, monReloj, yearReloj, segCrono, minCrono, horCrono; // 2 Bit CS, 10 Bit D, 10 Bit U
	reg [3:0] contador;
	reg ringCrono, actCrono;
	wire [7:0] BCDBuffer;
	reg [7:0] Cursor;
	
	/*
		  Control de actualizacion de los registros temporales
	*/
	
	//	Vincular el convertidor de BCD BCDConverter(number, tens, ones)
	BCDConverter BCD(MemDataIN[6:0], BCDBuffer[7:4], BCDBuffer[3:0]);

	// Cambiar Numeros BCD por Punteros
	wire [9:0] PointerYD, PointerYU;
	//reg [3:0] Value;
	
	PointerTable PT1(.PointY(PointerYD),.Value(BCDBuffer[7:4]));
	PointerTable PT2(.PointY(PointerYU),.Value(BCDBuffer[3:0]));
	
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
		else if(!RESET && PosX == 0 && PosY == 0)
			begin
			// Contador de flujo
				MemAddrIN <= contador;
				
				case(contador)
					4'd0 : segReloj <= {PointerYD, PointerYU};
					4'd1 : minReloj <= {PointerYD, PointerYU};
					4'd2 : horReloj <= {PointerYD, PointerYU};
					4'd3 : dayReloj <= {PointerYD, PointerYU};
					4'd4 : monReloj <= {PointerYD, PointerYU};
					4'd5 : yearReloj <= {PointerYD, PointerYU};
					4'd6 : segCrono <= {PointerYD, PointerYU};
					4'd7 : minCrono <= {PointerYD, PointerYU};
					4'd8 : horCrono <= {PointerYD, PointerYU};
					4'd9 : ringCrono <= MemDataIN[0];
					4'd10 : actCrono <= MemDataIN[0];
					4'd11 : Cursor <= MemDataIN;
				endcase
				// Actualizacion del banco
				if(contador < 4'd11) contador <= contador + 4'd1;
				else contador <= 0;
			end
	end
	
	
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
	parameter FechaY = 130; //132
	parameter HoraY = 288; 
	//parameter AMPMY = 200;
	parameter IndicadoresY = 370;

	// Parametros de tamaño
	parameter DigitosWidth = 40;
	parameter DigitosHeight = 60;
	parameter AMPMWidth = 50;
	parameter AMPMHeight = 20;
	parameter CronoWidth = 100;
	parameter CronoHeight = 18;

	// Buffer de posicion
	reg [1:0] ChipSelector;
	reg [18:0] Pixel;
	assign ROMCS = ChipSelector;
	assign ROMAddrOut = Pixel;
	reg [9:0] PointerYIndicador;
	/*
			Instead 0 = PointerY[9:1]
	*/
	
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
					ChipSelector <= 2'b01;
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:0] - DDayX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - FechaY[9:0] + dayReloj[19:10]);
				end
			else if(PosX >= UDayX && PosX <= (UDayX + DigitosWidth) && !(Cursor == 4 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					ChipSelector <= 2'b01;
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:0] - UDayX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - FechaY[9:0] + dayReloj[9:0]);
				end
			else if(PosX >= DMonthX && PosX <= (DMonthX + DigitosWidth) && !(Cursor == 5 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					ChipSelector <= 2'b01;
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:0] - DMonthX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - FechaY[9:0] + monReloj[19:10]);
				end
			else if(PosX >= UMonthX && PosX <= (UMonthX + DigitosWidth) && !(Cursor == 5 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					ChipSelector <= 2'b01;
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:0] - UMonthX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - FechaY[9:0] + monReloj[9:0]);
				end
			else if(PosX >= DYearX && PosX <= (DYearX + DigitosWidth) && !(Cursor == 6 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					ChipSelector <= 2'b01;
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:0] - DYearX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - FechaY[9:0] + yearReloj[19:10]);
				end
			else if(PosX >= UYearX && PosX <= (UYearX + DigitosWidth) && !(Cursor == 6 && PosY >= (FechaY + DigitosHeight - 5)))
				begin
				// Poner el puntero
					ChipSelector <= 2'b01;
				// Calcular el pixel de puntero
					Pixel <= (PosX[9:0] - UYearX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - FechaY[9:0] + yearReloj[9:0]);
				end	
			// Caso no cursor ni puntero
			else
				begin
					// Deshabilitar el CS
					ChipSelector <= 2'b00;
					// Sin desfase
					Pixel <= PosX[9:0] + 18'd640 * PosY[9:0];
				end
		end
		else if(PosY >= HoraY && PosY <= (HoraY + DigitosHeight))
			begin
				if(PosX >= DRHourX && PosX <= (DRHourX + DigitosWidth) && !(Cursor == 3 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - DRHourX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + horReloj[19:10]);
					end
				else if(PosX >= URHourX && PosX <= (URHourX + DigitosWidth) && !(Cursor == 3 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - URHourX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + horReloj[9:0]);
					end
				else if(PosX >= DRMinuteX && PosX <= (DRMinuteX + DigitosWidth) && !(Cursor == 2 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - DRMinuteX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + minReloj[19:10]);
					end
				else if(PosX >= URMinuteX && PosX <= (URMinuteX + DigitosWidth) && !(Cursor == 2 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - URMinuteX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + minReloj[9:0]);
					end
				else if(PosX >= DRSecondX && PosX <= (DRSecondX + DigitosWidth) && !(Cursor == 1 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - DRSecondX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + segReloj[19:10]);
					end
				else if(PosX >= URSecondX && PosX <= (URSecondX + DigitosWidth) && !(Cursor == 1 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - URSecondX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + segReloj[9:0]);
					end
				else if(PosX >= DCHourX && PosX <= (DCHourX + DigitosWidth) && !(Cursor == 9 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - DCHourX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + horCrono[19:10]);
					end
				else if(PosX >= UCHourX && PosX <= (UCHourX + DigitosWidth) && !(Cursor == 9 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - UCHourX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + horCrono[9:0]);
					end
				else if(PosX >= DCMinuteX && PosX <= (DCMinuteX + DigitosWidth) && !(Cursor == 8 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - DCMinuteX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + minCrono[19:10]);
					end
				else if(PosX >= UCMinuteX && PosX <= (UCMinuteX + DigitosWidth) && !(Cursor == 8 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - UCMinuteX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + minCrono[9:0]);
					end
				else if(PosX >= DCSecondX && PosX <= (DCSecondX + DigitosWidth) && !(Cursor == 7 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - DCSecondX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + segCrono[19:10]);
					end
				else if(PosX >= UCSecondX && PosX <= (UCSecondX + DigitosWidth) && !(Cursor == 7 && PosY >= (HoraY + DigitosHeight - 5)))
					begin
					// Poner el puntero
						ChipSelector <= 2'b01;
					// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - UCSecondX[9:0]) + DigitosWidth[18:0] * (PosY[9:0] - HoraY[9:0] + segCrono[9:0]);
					end
				// Caso no cursor ni puntero
				else
					begin
						// Deshabilitar el CS
						ChipSelector <= 2'b00;
						// Sin desfase
						Pixel <= PosX[9:0] + 18'd640 * PosY[9:0];
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
						ChipSelector <= 2'b11;
						// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - ActivadoX[9:0]) + CronoWidth[18:0] * (PosY[9:0] - IndicadoresY[9:0] + actCrono * 10'd20);
					end
				else if(PosX >= FinalizadoX && PosX <= (FinalizadoX + CronoWidth))
					begin
						// Poner el puntero
						ChipSelector <= 2'b11;
						// Calcular el pixel de puntero
						Pixel <= (PosX[9:0] - FinalizadoX[9:0]) + CronoWidth[18:0] * (PosY[9:0] - IndicadoresY[9:0] + ringCrono * 10'd20);
					end
				// Caso no cursor ni puntero
				else
					begin
						// Deshabilitar el CS
						ChipSelector <= 2'b00;
						// Sin desfase
						Pixel <= PosX[9:0] + 18'd640 * PosY[9:0];
					end
			end
		// Caso no cursor ni puntero
		else
			begin
				ChipSelector <= 2'b00;
				// Sin desfase
				Pixel <= PosX[9:0] + 18'd640 * PosY[9:0];
			end
		
	end
	
	
	//assign Pixel = PosX + 10'd640 * PosY;

endmodule
