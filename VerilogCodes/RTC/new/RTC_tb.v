`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:12 09/17/2016
// Design Name:   ControlRTC
// Module Name:   C:/Xilinx/VGA/CrontrolRTC_tb.v
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

module CrontrolRTC_tb;

	// Inputs
	reg reset;
	reg clk;
	reg [3:0] ADDreadreg;
	reg [7:0] writedata;
	reg [3:0] selectores;
	reg [2:0] interruptores;

	// Outputs
	wire RD;
	wire CS;
	wire AD;
	wire WR;
	wire [7:0] DatAdd;
	wire [7:0] datamemoria;

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
		.datamemoria(datamemoria), 
		.writedata(writedata), 
		.selectores(selectores), 
		.interruptores(interruptores)
	);
	initial forever #5 clk=~clk;
	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		ADDreadreg = 0;
		writedata = 0;
		selectores = 0;
		interruptores = 0;
		#10 reset =0;
		#4800;
		writedata=10;
		#3400;
		$stop;
		interruptores = 3'b001;
		#5000;
		$stop;
		selectores=4'b0100;
		#40;
		selectores=4'b0011;
		#40;
		selectores=0;
		#10;
		$stop;
		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here

	end
      
endmodule
