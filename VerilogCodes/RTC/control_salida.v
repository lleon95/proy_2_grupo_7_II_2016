`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:12 09/11/2016 
// Design Name: 
// Module Name:    control_salida 
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
module control_salida(reset,direccion,dato,clk,iniciar,escribe,data_out,CS,AD,RD,WR,final,contador);
input reset;
input iniciar;
input clk;
input escribe;
input [7:0] direccion;
input [7:0] dato;
output CS;
output [7:0] data_out;
output AD;
output RD;
output WR;
output final;
output [4:0] contador;
//fin input output
reg CS;
reg [7:0] data_out;
reg AD;
reg RD;
reg WR;
reg final;

//inicio variables y parametros internos

reg [4:0] contador;

always @(posedge clk)
begin
 if (reset)
 begin
  CS <= 1'b1;
  AD <= 1'b1;
  RD <= 1'b1;
  WR <= 1'b1;
  final <= 1'b0;
  contador <=0;
 end
 else
 begin
  if (iniciar == 1'b0)
  begin
   CS <= 1'b1;
   AD <= 1'b1;
   RD <= 1'b1;
   WR <= 1'b1;
   final <= 1'b0;
   contador <= 0;
	data_out <= 0;
  end
  else
  begin
   contador <= contador + 1;
	case(contador)
	 5'b00001:begin
	          CS <= 1'b1;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
				 data_out<= direccion;
	  end
	 5'b00010:begin
	          CS <= 1'b0;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b0;
			    final <= 1'b0;
	  end
	 5'b01000:begin
	          CS <= 1'b1;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
	  end
	 5'b01010:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
	  end
	 5'b10011:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;		 
	  end
	 5'b10100:begin
	          if (escribe)
				 begin
	           CS <= 1'b0;
			     AD <= 1'b1;
			     RD <= 1'b1;
			     WR <= 1'b0;
			     final <= 1'b0;
				  data_out <= dato;
				 end
				 else
				 begin
				  CS <= 1'b0;
			     AD <= 1'b1;
			     RD <= 1'b0;
			     WR <= 1'b1;
			     final <= 1'b0;
				  data_out <= 0;
				 end
	  end
	 5'b11010:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
		       final <= 1'b0;
	  end
	 5'b11100:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
		       final <= 1'b1;
				 contador <= 0;
				 data_out <= 0;
	  end
	 default:begin
	  end
	endcase
  end
 end
end

endmodule
