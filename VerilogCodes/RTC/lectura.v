`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:10 09/10/2016 
// Design Name: 
// Module Name:    lectura 
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
module lectura(reset,clk,dir,dir_reg,esc_reg,iniciar,fin,final,activa,w,reg_out,dir_out);
//inicio input output
input reset;
input [3:0] dir_reg;
input iniciar;
input [7:0] dir;
input clk;
input fin;
input esc_reg;
output [7:0] dir_out;
output [3:0] reg_out;
output final;
output activa;
output w;
//fin input output
reg [7:0] dir_out;
reg [3:0] reg_out;
reg w;
reg activa;
reg final;

//inicio variables y parametros internos

reg [1:0] state;
reg [1:0] next_state;

parameter [1:0] inicio = 2'b00;
parameter [1:0] lee = 2'b01;
parameter [1:0] finalizar = 2'b10;

//logica de estado siguiente

always @(iniciar or fin or state)
begin
 next_state = 0;
 case (state)
  inicio:begin
          if (iniciar == 1'b1)
			  next_state = lee;
			 else
			  next_state = inicio;
   end
  lee:begin
          if (fin == 1'b1)
			  next_state = finalizar;
			 else
			  next_state = lee;
   end
  finalizar:begin
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
  dir_out <= 0;
  reg_out <= 0;
  w <= 0;
  activa <= 0;
  final <= 0;  
  state <= inicio;
 end
 else
 begin
  state <= next_state;
  case (state)
   inicio:begin
	        dir_out <= 0;
           reg_out <= 0;
           w <= 0;
           activa <= 0;
           final <= 0; 
	 end
	lee:begin
	        dir_out <= dir;
           reg_out <= dir_reg;
           w <= esc_reg;
           activa <= 1;
           final <= 1;
	 end
   finalizar:begin
	        dir_out <= 0;
           reg_out <= 0;
           w <= 0;
           activa <= 0;
           final <= 1;
	 end
	default:begin
	        state <= inicio;
	  end
	 endcase
 end
end

endmodule
