`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:26:43 09/15/2016
// Design Name:   ControlRTC
// Module Name:   C:/Users/User/Documents/proy_2_grupo_7_II_2016/VerilogCodes/RTC/RTC_tb.v
// Project Name:  VGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlRTC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RTC_tb;

	// Inputs
	reg reset;
	reg clk;
	reg [3:0] ADDreadreg;
	reg readmen;
	reg [7:0] writedata;
	reg [3:0] selectores;
	reg [2:0] interruptores;

	// Outputs
	wire RD;
	wire CS;
	wire AD;
	wire WR;
	wire [7:0] DatAdd;
	wire [7:0] datmen;

	// Instantiate the Unit Under Test (UUT)
	ControlRTC uut (
		.reset(reset), 
		.clk(clk), 
		.RD(RD), 
		.CS(CS), 
		.AD(AD), 
		.WR(WR), 
		.DatAdd(DatAdd), 
		.ADDreadreg(ADDreadreg), 
		.datmen(datmen), 
		.readmen(readmen), 
		.writedata(writedata), 
		.selectores(selectores), 
		.interruptores(interruptores)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		ADDreadreg = 0;
		readmen = 0;
		writedata = 0;
		selectores = 0;
		interruptores = 0;
		#10 reset=0;
		writedata=10;
		// Wait 100 ns for global reset to finish
		#100;
       $finish;
		// Add stimulus here

	end
      
endmodule

