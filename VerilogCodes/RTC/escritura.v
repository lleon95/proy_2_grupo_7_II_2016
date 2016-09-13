`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:03 09/10/2016 
// Design Name: 
// Module Name:    escritura 
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
module escritura(reset,clk,dir,dato,iniciar,fin,ciclo,salida,write,final,activa);
//inicio input output
input reset;
input [7:0] dato;
input iniciar;
input [7:0] dir;
input clk;
input fin;
output [7:0] data_out;
output [7:0] dir_out;
output escribe;
output final;
output activa;
//fin input output
reg [7:0] data_out;
reg [7:0] dir_out;
reg escribe;
reg activa;
reg final;

//inicio variables y parametros internos

reg [1:0] state;
reg [1:0] next_state;

parameter [1:0] inicio = 2'b00;
parameter [1:0] write = 2'b01;
parameter [1:0] clk_transfer = 2'b10;
parameter [1:0] final = 2'b11;

//logica de estado siguiente

always @(iniciar or fin or state)
begin
 next_state = 0;
 case (state)
  inicio:begin
          if (iniciar == 1'b1)
			  next_state = write;
			 else
			  next_state = inicio;
   end
  write:begin
          if (fin == 1'b1)
			  next_state = clk_transfer;
			 else
			  next_state = write;
   end
  clk_transfer:begin
          if (fin == 1'b1)
			  next_state = final;
			 else
			  next_state = clk_transfer;
   end
  final:begin
			  next_state = inicio;
   end
  default:begin
          next_state = inicio;
   end
  endcase
end

//logica de salida

always @(posedge clk)
begin
 if (reset)
 begin
  data_out <= 8'b0;
  dir_out <= 8'b0;
  escribe <= 1'b0;
  activa <= 1'b0;
  final <= 1'b0;
  state <= inicio;
 end
 else
 begin
  state <= next_state;
  case (state)
   inicio:begin
	        data_out <= 8'b0;
           dir_out <= 8'b0;
           escribe <= 1'b0;
           activa <= 1'b0;
           final <= 1'b0;
	 end
	write:begin
	        data_out <= dato;
           dir_out <= dir;
           escribe <= 1'b1;
           activa <= 1'b1;
           final <= 1'b0;
	 end
   clk_transfer:begin
	        data_out <= 8'hf0;
           dir_out <= 8'hf0;
           escribe <= 1'b1;
           activa <= 1'b1;
           final <= 1'b0;
	 end
   final:begin
	        data_out <= 8'b0;
           dir_out <= 8'b0;
           escribe <= 1'b0;
           activa <= 1'b0;
           final <= 1'b1;
 	 end
	 default:begin
	        next_state = inicio;
	  end
	 endcase
 end
end


endmodule
