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
reg [2:0] dir;
assign dirout = {2'd0,dir[2],3'd0,dir[1:0]};
reg [3:0] dato;
assign datoout = {1'b0,dato[3],1'b0,dato[2:0],2'b0};
reg escritura;
reg true;
//inicio variables y parametros internos
reg [2:0] state;
reg [2:0] next_state;

parameter [2:0] inicio = 3'b000;
parameter [2:0] bit_on = 3'b001;
parameter [2:0] bit_off = 3'b010;
parameter [2:0] mascara = 3'b011;
parameter [2:0] enable = 3'b100;
parameter [2:0] init_hora = 3'b101;
parameter [2:0] finalizacion = 3'b110;

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
 init_hora:begin
         if (fin == 1'b1)
         next_state = finalizacion;
		  else
		   next_state = init_hora;
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
	 dir <= 3'b0;
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
	          dir <= 3'b0;
             dato <= 4'b0;
             escritura <= 1'b0;
             true <= 1'b0;
            end
     bit_on:begin
	          dir <= 3'h2;
             dato <= 4'b0100;//8'b00010000
             escritura <= 1'b1;
             true <= 1'b0;
            end
	  bit_off:begin
	           dir <= 3'h2;
              dato <= 4'd0;
              escritura <= 1'b1;
              true <= 1'b0;
				 end
	  mascara:begin
	           dir <= 3'h1;
              dato <= 4'b1001;//8'b01000100
              escritura <= 1'b1;
              true <= 1'b0;
             end
	  enable:begin
	           dir <= 3'h0;
              dato <= 4'b0010;//8'b00001000
              escritura <= 1'b1;
              true <= 1'b0;
             end
     init_hora:begin
	            dir <= 3'b111;
               dato <= 4'b0011;//8'b00001100
               escritura <= 1'b1;
               true <= 1'b1;
              end
	  finalizacion:begin
	            dir <= 3'b0;
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
