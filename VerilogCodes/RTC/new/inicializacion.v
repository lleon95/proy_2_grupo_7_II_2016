`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:10 09/10/2016 
// Design Name: 
// Module Name:    inicializacion 
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
module inicializacion(reset,iniciar,clk,fin,dirout,datoout,escritura,true);
//inicio input output
input reset;
input iniciar;
input clk;
input fin;
output [7:0] dirout;
output [7:0] datoout;
output escritura;
output true;
//fin input output
reg [7:0] dirout;
//assign dirout = {2'd0,dir[2],3'd0,dir[1:0]};
reg [3:0] dato;
assign datoout = {1'b0,dato[3],1'b0,dato[2:0],2'b0};
reg escritura;
reg true;
//inicio variables y parametros internos
reg [3:0] state;
reg [3:0] next_state;

parameter [3:0] inicio = 4'b0000;
parameter [3:0] bit_on = 4'b0001;
parameter [3:0] bit_off = 4'b0010;
parameter [3:0] mascara = 4'b0011;
parameter [3:0] enable = 4'b0100;
parameter [3:0] init_segundos = 4'b0101;
parameter [3:0] init_minutos = 4'b0110;
parameter [3:0] init_hora = 4'b0111;
parameter [3:0] init_dias = 4'b1000;
parameter [3:0] init_mes = 4'b1001;
parameter [3:0] init_year = 4'b1010;
parameter [3:0] finalizacion = 4'b1011;

//logica de estado siguiente

always @(iniciar or fin or state)
begin
 next_state = 0;
 case (state)
 inicio:begin
         if (iniciar == 1'b1)
         next_state = bit_on;
		  else
		   next_state = inicio;
		end
 bit_on:begin
         if (fin == 1'b1)
         next_state = bit_off;
		  else
		   next_state = bit_on;
	   end
 bit_off:begin
         if (fin == 1'b1)
         next_state = mascara;
		  else
		   next_state = bit_off;
	   end
 mascara:begin
         if (fin == 1'b1)
         next_state = enable;
		  else
		   next_state = mascara;
		end
 enable:begin
         if (fin == 1'b1)
         next_state = init_hora;
		  else
		   next_state = enable;
		end
 init_segundos:begin
         if (fin == 1'b1)
         next_state = init_minutos;
		  else
		   next_state = init_segundos;
		end
 init_minutos:begin
         if (fin == 1'b1)
         next_state = init_hora;
		  else
		   next_state = init_minutos;
		end
 init_hora:begin
         if (fin == 1'b1)
         next_state = init_dias;
		  else
		   next_state = init_hora;
		end
 init_dias:begin
         if (fin == 1'b1)
         next_state = init_mes;
		  else
		   next_state = init_dias;
		end
 init_mes:begin
         if (fin == 1'b1)
         next_state = init_year;
		  else
		   next_state = init_mes;
		end
 init_year:begin
         if (fin == 1'b1)
         next_state = finalizacion;
		  else
		   next_state = init_year;
		end
 finalizacion:begin
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
	 dirout <= 8'b0;
    dato <= 4'b0;
    escritura <= 1'b0;
    true <= 1'b0;
	 state <= inicio;
	end
	else
	begin
	 state <= next_state;
	 case(state)
     inicio:begin
	          dirout <= 8'b0;
             dato <= 4'b0;
             escritura <= 1'b0;
             true <= 1'b0;
            end
     bit_on:begin
	          dirout <= 8'h2;
             dato <= 4'b0100;//8'b00010000
             escritura <= 1'b1;
             true <= 1'b0;
            end
	  bit_off:begin
	           dirout <= 8'h2;
              dato <= 4'd0;
              escritura <= 1'b1;
              true <= 1'b0;
				 end
	  mascara:begin
	           dirout <= 8'h1;
              dato <= 4'b1001;//8'b01000100
              escritura <= 1'b1;
              true <= 1'b0;
             end
	  enable:begin
	           dirout <= 8'h0;
              dato <= 4'b0000;//8'b00001000 descativado con bit3 en cero
              escritura <= 1'b1;
              true <= 1'b0;
             end
	  init_segundos:begin
	            dirout <= 8'h21;
               dato <= 4'b0000;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b0;
              end
     init_minutos:begin
	            dirout <= 8'h22;
               dato <= 4'b0000;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b0;
              end
	  init_hora:begin
	            dirout <= 8'h23;
               dato <= 4'b0010;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b0;
              end
	  init_dias:begin
	            dirout <= 8'h24;
               dato <= 4'b0000;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b0;
              end
	  init_mes:begin
	            dirout <= 8'h25;
               dato <= 4'b0000;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b0;
              end
	  init_year:begin
	            dirout <= 8'h26;
               dato <= 4'b0000;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b0;
              end
	  finalizacion:begin
	            dirout <= 8'b0;
               dato <= 4'b0;
               escritura <= 1'b0;
               true <= 1'b1;
              end
     default:begin
              state <= inicio;	  
             end	  
	 endcase
	end
	 
end  


endmodule
