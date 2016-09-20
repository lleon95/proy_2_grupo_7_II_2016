`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:18:55 09/20/2016
// Design Name:   ControlRTC
// Module Name:   C:/Users/kmena/Downloads/proy_2_grupo_7_II_2016-master/VerilogCodes/Control_rct_tb.v
// Project Name:  rtc
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

module Control_rct_tb;

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
	initial forever # 5 clk = !clk;
	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
		ADDreadreg = 0;
		writedata = 0;
		selectores = 0;
		interruptores = 0;
		#10 reset = 0;
		writedata = 10;
		
		// Wait 100 ns for global reset to finish
		#5000 $stop;
		interruptores = 3'b001;
		
      #4000 selectores = 4'b0100; 
		#40 selectores = 4'b0010;
		#10 selectores = 4'b0001;
		#40 selectores = 4'b0000;
		$stop;
		
		// Add stimulus here

	end
      
endmodule

