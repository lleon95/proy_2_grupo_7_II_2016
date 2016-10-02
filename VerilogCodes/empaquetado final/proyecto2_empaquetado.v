`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:19 09/21/2016 
// Design Name: 
// Module Name:    proyecto2_empaquetado 
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
module proyecto2_empaquetado(reset,clk,RD,CS,AD,WR,DatAdd,R,G,B,HSync,VSync,Up,Down,Left,int1/*,State*/,int2,irq);
input int1,int2;
input irq;
input reset,clk;
input Up,Down,Left;
inout[7:0]  DatAdd;
//output [1:0] State;
output RD,CS,AD,WR;
output [3:0] R;
output [3:0] G;
output [3:0] B;
output HSync;
output VSync;
//output [9:0] PosX; 
//output [9:0] PosY;
//address memory
wire [3:0] ADDmen;
//data memory
wire [7:0] DatoMem;
//wire de interuptures
wire flag0,flag1,flag2;
//wires de asiganacion
//wire [3:0] selectores;
//asignacion
ControlRTC RTC(.reset(reset),.clk(clk),.RD(RD),.CS(CS),.AD(AD),.WR(WR),.DatAdd(DatAdd),.ADDreadreg(ADDmen),.datamemoria(DatoMem)/*,.writedata(DatAdd)*/,.Up(flag2),.Down(flag0),.Left(flag1), .interruptores(int1) /*.State(State)*/,.int2(int2),.irq(irq));
ControlVGACentral_MemoryPointed VGA(.CLK(clk),.RESET(reset),.MemDataIN(DatoMem), .MemAddrOut(ADDmen),.R(R),.G(G),.B(B),.HSync(HSync),.VSync(VSync)/*,.PosX(PosX),.PosY(PosY)*/);
debouncer deb1(.signalInput(Up), .signalOutput(flag2), .Clk(clk), .Reset(reset));
debouncer deb2(.signalInput(Down), .signalOutput(flag0), .Clk(clk), .Reset(reset));
debouncer deb3(.signalInput(Left), .signalOutput(flag1), .Clk(clk), .Reset(reset));
endmodule
