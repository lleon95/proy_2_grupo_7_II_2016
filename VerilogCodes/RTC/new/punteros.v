`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:04 09/29/2016 
// Design Name: 
// Module Name:    punteros 
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
module punteros(interr,derecha,clk,reset,dir2,punteroOut);
input interr;
input clk;
input reset;
input derecha;
output [3:0] dir2;
output [3:0] punteroOut;
//reg [7:0] dir1;
reg [3:0] dir2;
reg [3:0] punteroOut;
reg [3:0] state;
reg [3:0] next_state;

parameter [3:0] inicio = 2'b0000;
parameter [3:0] clk_segundos = 2'b0001;
parameter [3:0] clk_minutos = 2'b0010;
parameter [3:0] clk_horas = 2'b0011;
parameter [3:0] dia = 2'b0100;
parameter [3:0] mes = 2'b0101;
parameter [3:0] year = 2'b0110;
parameter [3:0] timer_segundos = 2'b0111;
parameter [3:0] timer_minutos = 2'b1000;
parameter [3:0] timer_horas = 2'b1001;

always @(state or derecha or interr)
begin
 next_state = 0;
 case (state)
   inicio:begin
          if (interr == 1'b1)
			  next_state = clk_segundos;
			 else
			  next_state = inicio;
   end
	clk_segundos:begin
          if (derecha == 1'b1)
			  next_state = clk_minutos;
			 else
			  next_state = clk_segundos;
   end
	clk_minutos:begin
          if (derecha == 1'b1)
			  next_state = clk_horas;
			 else
			  next_state = clk_minutos;
   end
	clk_horas:begin
          if (derecha == 1'b1)
			  next_state = dia;
			 else
			  next_state = clk_horas;
   end
	dia:begin
          if (derecha == 1'b1)
			  next_state = mes;
			 else
			  next_state = dia;
   end
	mes:begin
          if (derecha == 1'b1)
			  next_state = year;
			 else
			  next_state = mes;
   end
	year:begin
          if (derecha == 1'b1)
			  next_state = timer_segundos;
			 else
			  next_state = year;
   end
	timer_segundos:begin
          if (derecha == 1'b1)
			  next_state = timer_minutos;
			 else
			  next_state = timer_segundos;
   end
	timer_minutos:begin
          if (derecha == 1'b1)
			  next_state = timer_horas;
			 else
			  next_state = timer_minutos;
   end
	timer_horas:begin
          if (derecha == 1'b1)
			  next_state = clk_segundos;
			 else
			  next_state = timer_horas;
   end
	default:begin
	       next_state = inicio;
	end
	endcase

end

always @(posedge clk)
begin
 if (reset || ~interr)
 begin
  dir2 <= 0;
  punteroOut <= 0;
  state<=inicio;
 end
 else
 begin
  state <= next_state;
  case (state)
   inicio:begin
         // dir1 <= 8'd33;
			 dir2 <= 4'b0001;
			 punteroOut <= 4'b0001;
   end
	clk_segundos:begin
          //dir1 <= 8'd34;
			 dir2 <= 4'b0010;
			 punteroOut <= 4'b0010;
   end
	clk_minutos:begin
          //dir1 <= 8'd35;
			 dir2 <= 4'b0011;
			 punteroOut <= 4'b0011;
   end
	clk_horas:begin
          //dir1 <= 8'd36;
			 dir2 <= 4'b0100;
			 punteroOut <= 4'b0100;
   end
	dia:begin
          //dir1 <= 8'd37;
			 dir2 <= 4'b0101;
			 punteroOut <= 4'b0101;
   end
	mes:begin
          //dir1 <= 8'd38;
			 dir2 <= 4'd6;
			 punteroOut <= 4'd6;
   end
	year:begin
          //dir1 <= 8'd39;
			 dir2 <= 4'd7;
			 punteroOut <= 4'd7;
   end
	timer_segundos:begin
          //dir1 <= 8'h41;
			 dir2 <= 4'd8;
			 punteroOut <= 4'd8;
   end
	timer_minutos:begin
          //dir1 <= 8'h42;
			 dir2 <= 4'd9;
			 punteroOut <= 4'd9;
   end
	timer_horas:begin
          //dir1 <= 8'd43;
			 dir2 <= 4'd10;
			 punteroOut <= 4'd10;
   end
	default:begin
	       state <= inicio;
	end
	endcase
 end
end

endmodule

