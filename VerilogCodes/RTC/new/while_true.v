`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:49 09/10/2016 
// Design Name: 
// Module Name:    while_true 
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
module while_true(reset,clk,iniciar,fin,dirout,dir_reg,dato,write,escritura,lectura,final);
//inicio input output
input reset;
input iniciar;
input clk;
input fin;
output [7:0] dirout;
output [3:0] dir_reg;
output [7:0] dato;
output write;
output escritura;
output lectura;
output final;
//fin input output
reg [6:0] dir;
reg [3:0] dir_reg;
reg [7:0] dato;
reg write;
reg escritura;
reg lectura;
reg final;

//inicio variables y parametros internos
reg [3:0] state;
reg [3:0] next_state;

assign dirout={dir[6:3],1'b0,dir[2:0]};

parameter [3:0] inicio = 4'b0000;
parameter [3:0] command = 4'b0001;
parameter [3:0] clk_segundos = 4'b0010;
parameter [3:0] clk_minutos = 4'b0011;
parameter [3:0] clk_horas = 4'b0100;
parameter [3:0] dia = 4'b0101;	
parameter [3:0] mes = 4'b0110;
parameter [3:0] year = 4'b0111;
parameter [3:0] timer_segundos = 4'b1000;
parameter [3:0] timer_minutos = 4'b1001;
parameter [3:0] timer_horas = 4'b1010;
parameter [3:0] finalizacion = 4'b1011;
//logica de estado siguiente
always @(state or iniciar or fin)
begin
 next_state = 0;
 case (state)
  inicio:begin
          if (iniciar == 1'b1)
			  next_state = command;
			 else
			  next_state = inicio;
   end
  command:begin
          if (fin == 1'b1)
			  next_state = clk_segundos;
			 else
			  next_state = command;
   end
  clk_segundos:begin
          if (fin == 1'b1)
			  next_state = clk_minutos;
			 else
			  next_state = clk_segundos;
   end
  clk_minutos:begin
          if (fin == 1'b1)
			  next_state = clk_horas;
			 else
			  next_state = clk_minutos;
   end
  clk_horas:begin
          if (fin == 1'b1)
			  next_state = dia;
			 else
			  next_state = clk_horas;
   end
  dia:begin
          if (fin == 1'b1)
			  next_state = mes;
			 else
			  next_state = dia;
   end
  mes:begin
          if (fin == 1'b1)
			  next_state = year;
			 else
			  next_state = mes;
   end
  year:begin
          if (fin == 1'b1)
			  next_state = timer_segundos;
			 else
			  next_state = year;
   end
  timer_segundos:begin
          if (fin == 1'b1)
			  next_state = timer_minutos;
			 else
			  next_state = timer_segundos;
   end
  timer_minutos:begin
          if (fin == 1'b1)
			  next_state = timer_horas;
			 else
			  next_state = timer_minutos;
   end
  timer_horas:begin
          if (fin == 1'b1)
			  next_state = finalizacion;
			 else
			  next_state = timer_horas;
			  end
	finalizacion:
			if (iniciar == 1'b1)
			  next_state = inicio;
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
  dir <= 7'b0;
  dir_reg <= 8'b0;
  dato <= 8'b0;
  write <= 1'b0;
  escritura <= 1'b0;
  lectura <= 1'b0;
  final <= 1'b0;
  state <= inicio;
 end
 else
 begin
  state <= next_state;
  case (state)
   inicio:begin
           dir <= 7'b0;
			  dir_reg <= 8'b0;
           dato <= 8'b0;
           write <= 1'b0;
           escritura <= 1'b0;
           lectura <= 1'b0;
           final <= 1'b0;
    end
   command:begin
           dir <= 7'b1111000;//8'b11110000
			  dir_reg <= 8'b0;
           dato <= 8'b0;
           write <= 1'b0;
           escritura <= 1'b1;
           lectura <= 1'b0;
           final <= 1'b0;
    end
   clk_segundos:begin
           dir <= 7'b0010001;//8'b00100001;
			  dir_reg <= 8'b00000001;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   clk_minutos:begin
           dir <= 7'b0010010;//8'b00100010
			  dir_reg <= 8'b00000010;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   clk_horas:begin
           dir <= 7'b0010011;//8'b00100011
			  dir_reg <= 8'b00000011;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   dia:begin
           dir <= 7'b0010100;//8'b00100100
			  dir_reg <= 8'b00000100;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   mes:begin
           dir <= 7'b0010101;// 8'b00100101
			  dir_reg <= 8'b00000101;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   year:begin
           dir <= 7'b0010110;//8'b00100110
			  dir_reg <= 8'b00000110;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   timer_segundos:begin
           dir <= 7'b0100001;//8'b01000001
			  dir_reg <= 8'b00000111;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   timer_minutos:begin
           dir <= 7'b0100010;//8'b01000010
			  dir_reg <= 8'b00001000;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
   timer_horas:begin
           dir <= 7'b0100011;//8'b01000011
			  dir_reg <= 8'b00001001;
           dato <= 8'b0;
           write <= 1'b1;
           escritura <= 1'b0;
           lectura <= 1'b1;
           final <= 1'b0;
    end
	 finalizacion:begin
           dir <= 7'b0;
			  dir_reg <= 8'b0;
           dato <= 8'b0;
           write <= 1'b0;
           escritura <= 1'b0;
           lectura <= 1'b0;
           final <= 1'b1;
    end
   default:begin
          state <= inicio;
   end
  endcase
 end
end

endmodule
