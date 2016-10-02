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
module escritura(reset,clk,dir,dato,iniciar,fin,data_out,dir_out,escribe,final,activa);
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

reg [2:0] state;
reg [2:0] next_state;

parameter [2:0] inicio = 3'b000;
parameter [2:0] write = 3'b001;
parameter [2:0] transferorclock = 3'b010;
parameter [2:0] clk_transfer = 3'b011;
parameter [2:0] finalizar = 3'b100;

//logica de estado siguiente

always @(iniciar or fin or state or dir)
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
			  next_state = transferorclock;
			 else
			  next_state = write;
   end
	transferorclock:begin
          if (dir == 8'd33 || dir == 8'd34 || dir == 8'd35 || dir == 8'd36 || dir == 8'd37 || dir == 8'd38|| dir == 8'h41 || dir == 8'h42 || dir == 8'h43)
			  next_state = clk_transfer;
			 else
			  next_state = finalizar;
   end
  clk_transfer:begin
          if (fin == 1'b1)
			  next_state = finalizar;
			 else
			  next_state = clk_transfer;
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
 if (reset || ~iniciar)
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
			if(dir==8'h41 || dir==8'h42 || dir==8'h43)
			begin
	        data_out <= 8'hf2;
           dir_out <= 8'hf2;
			end
			else
			begin
	        data_out <= 8'hf0;
           dir_out <= 8'hf0;
			end
           escribe <= 1'b1;
           activa <= 1'b1;
           final <= 1'b0;
	 end
   finalizar:begin
	        data_out <= 8'b0;
           dir_out <= 8'b0;
           escribe <= 1'b0;
           activa <= 1'b0;
           final <= 1'b1;
 	 end
	 default:begin
	        state = inicio;
	  end
	 endcase
 end
end


endmodule
