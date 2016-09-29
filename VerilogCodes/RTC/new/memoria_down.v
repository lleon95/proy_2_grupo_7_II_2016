`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:04 09/29/2016 
// Design Name: 
// Module Name:    memoria_down 
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
module memoria_down(addr,addrm,down,erase,reset,clk,dato_down);
input down;
input reset;
input erase;
input [3:0] addrm;
input clk;
input [3:0] addr;
output [7:0] dato_down;
reg [7:0] dato_down;

reg [7:0] mem [0:15];
always @(posedge clk)
begin
 if (reset)
 begin
  dato_down <= 0;
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
	 dato_down <= mem[addrm];
  if (down)
   mem[addr] <= mem[addr] + 1;
  else
  begin
  end
 end
end

endmodule
