`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:22 09/29/2016 
// Design Name: 
// Module Name:    memoria_up 
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
module memoria_up(addr,up,addrm,erase,reset,clk,dato_up);
input up;
input reset;
input erase;
input [3:0]addrm;
input clk;
input [3:0] addr;
output [7:0] dato_up;
reg [7:0] dato_up;

reg [7:0] mem [0:15];

always @(posedge clk)
begin
 if (reset)
 begin
  dato_up <= 0;
  mem[0]<= 0;
  mem[1]<= 0;
  mem[2]<= 0;
  mem[3]<= 0;
  mem[4]<= 0;
  mem[5]<= 0;
  mem[6]<= 0;
  mem[7]<= 0;
  mem[8]<= 0;
  mem[9]<= 0;
  mem[10]<= 0;
  mem[11]<= 0;
  mem[12]<= 0;
  mem[13]<= 0;
  mem[14]<= 0;
  mem[15]<= 0;
 end
 else
 begin
  if (erase)
   mem[addrm] <= 0;
	else
	 dato_up <= mem[addrm];
  if (up)
   mem[addr] <= mem[addr] + 1;
  else
  begin
  end
 end
end

endmodule
