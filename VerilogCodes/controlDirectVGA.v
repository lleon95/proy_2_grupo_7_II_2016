`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:25 09/10/2016 
// Design Name: 
// Module Name:    controlDirectVGA 
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
module controlDirectVGA(

		input [19:0] Position,
		input [6:0] Value,
		output [19:0] Pointer,
		output PointerEnable,
		
	);
	
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
	parameter Start = {10'd699,10'd0}; // Increment spacing by the number
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
	
	always @*
	begin
		// Checar 
	end


endmodule
