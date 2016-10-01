`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:23 09/29/2016 
// Design Name: 
// Module Name:    maquina_usuario 
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
module maquina_usuario(erase,iniciar,fin,reset,clk,dato,dato_up,dato_down,addr,addr_up,final,addr_down,dato_out,escribe,dir_out);
output erase;
input reset;
input clk;
input fin;
input iniciar;
input [7:0] dato;
input [7:0] dato_up;
input [7:0] dato_down;
output [3:0] addr;
output [3:0] addr_up;
output [3:0] addr_down;
output [7:0] dato_out;
output escribe;
output [7:0] dir_out;
output final;
reg [7:0] sumaaux;
reg erase;
reg final;
reg [3:0] addr;
reg [3:0] addr_up;
reg [3:0] addr_down;
reg [7:0] dato_out;
reg escribe;
reg [7:0] dir_out;
reg [3:0] contador;
reg [3:0] contadoraux;
reg [2:0] state;
reg [2:0] next_state;

// START LLEON
// Topes
parameter [7:0] topSeconds = 8'h59; 
parameter [7:0] topMinutes = 8'h59;
parameter [7:0] topHours = 8'h23;
parameter [7:0] topMonths = 8'h12;
parameter [7:0] topDays = 8'h31;
parameter [7:0] topYears = 8'h99;
reg [7:0] topCounter;
// END LLEON

parameter [2:0] inicio = 3'b000;
parameter [2:0] suma = 3'b001;
parameter [2:0] out = 3'b010;
parameter [2:0] cont10 = 3'b011;
parameter [2:0] finalizar = 3'b100;

always @(state or iniciar or contador or fin)
begin
 next_state = 0;
 case(state)
  inicio:begin
         if (iniciar == 1'b1)
			  next_state = suma;
			 else
			  next_state = inicio;
  end
  suma:begin
			  next_state = out;
  end
  out:begin
         if (fin == 1'b1)
			  next_state = cont10;
			 else
			  next_state = out;
  end
  cont10:begin
         if (contador == 4'd10)
			  next_state = finalizar;
			 else
			  next_state = suma;
  end
  finalizar:begin
          next_state = inicio;
  end
  default:begin
          next_state = inicio;
  end
 endcase
end

always @(posedge clk)
begin
 if (reset || ~iniciar)
 begin
  erase <=0;
  addr <= 0;
  addr_up <=0;
  addr_down <= 0;
  dato_out <= 0;
  escribe <= 0;
  dir_out <= 0;
  contador <= 4'b0001;
  contadoraux <=0;
  final<= 0;
  state<=inicio;
 end 
 else
 begin
  state<=next_state;
  case(state)
  inicio:begin
         addr <= 0;
         addr_up <=0;
         addr_down <= 0;
         dato_out <= 0;
         escribe <= 0;
         dir_out <= 0;
         final <= 0;			
  end
  suma:begin
			erase<=0;
			addr <= contador;
         addr_up <=contador;
         addr_down <= contador;
			contadoraux<=contador;
	
         escribe <= 0;
         /*case(contador)
			 4'd1:dir_out <= 8'd33;
			 4'd2:dir_out <= 8'd34;
			 4'd3:dir_out <= 8'd35;
			 4'd4:dir_out <= 8'd36;
			 4'd5:dir_out <= 8'd37;
			 4'd6:dir_out <= 8'd38;
			 4'd7:dir_out <= 8'd39;
			 4'd8:dir_out <= 8'h41;
			 4'd9:dir_out <= 8'h42;
			 4'd10:dir_out <= 8'h43;
			 default:dir_out <= 0;
			endcase*/
			
			// START LLEON
			case(contador)
			 4'd1:topCounter <= topSeconds;
			 4'd2:topCounter <= topMinutes;
			 4'd3:topCounter <= topHours;
			 4'd4:topCounter <= topDays;
			 4'd5:topCounter <= topMonths;
			 4'd6:topCounter <= topYears;
			 4'd7:topCounter <= topSeconds;
			 4'd8:topCounter <= topMinutes;
			 4'd9:topCounter <= topHours;
			 4'd10:topCounter <= 8'h60;
			 default:topCounter <= 8'h60;
			endcase
			// END LLEON
			

  end
  out:begin
         addr <= contador;
         addr_up <=contador;
         addr_down <= contador;
         contadoraux<=contador;
         // BEGIN LLEON
			// Cuando se debe incrementar
			if(dato_up != 8'd0)
				begin
					if(dato == topCounter)
						// Reset a cero cuando está en tope
						dato_out <= 8'h00;
					else if(dato[3:0] == 4'd9)
						begin
							// Cuando no está en tope, pero debe cambiar decena
							dato_out[3:0] <= 4'd0;
							dato_out[7:4] <= dato[7:4] + 4'd1;
						end
					else
						begin
							// Caso normal
							dato_out[3:0] <= dato[3:0] + 4'd1;
							dato_out[7:4] <= dato[7:4];
						end
				end
				// Cuando se debe decrementar
			else if(dato_down != 8'd0)
				begin
					if(dato[3:0] == 4'd0)
						begin
							// Caso decremento decena
							if(dato[7:4] != 0)
								begin
									dato_out[7:4] <= dato[7:4] - 4'd1;
									dato_out[3:0] <= 4'd9;
								end
							else
							// Caso tope 00
								dato_out <= topCounter;
						end
					else
						begin
							// Caso normal
							dato_out[3:0] <= dato[3:0] - 4'd1;
							dato_out[7:4] <= dato[7:4];
						end
				end
			else 
				begin 
					dato_out[3:0] <= dato[3:0];
					dato_out[7:4] <= dato[7:4];
				end
			// END LLEON
			escribe <= 1;
         case(contador)
			 4'd1:dir_out <= 8'd33;
			 4'd2:dir_out <= 8'd34;
			 4'd3:dir_out <= 8'd35;
			 4'd4:dir_out <= 8'd36;
			 4'd5:dir_out <= 8'd37;
			 4'd6:dir_out <= 8'd38;
			 4'd7:dir_out <= 8'd65;
			 4'd8:dir_out <= 8'd66;
			 4'd9:dir_out <= 8'd67;
			 4'd10:dir_out <= 8'h00;
			 default:dir_out <= 0;
			endcase  
  end
  cont10:begin
			contador <= contador + 1;
			erase<=1;
         addr <= 0;
         addr_up <=contadoraux;
         addr_down <= contadoraux;
         dato_out <= 0;
         escribe <= 0;
         dir_out <= 0;
  end
  finalizar:begin
            addr <= 0;
         addr_up <=0;
         addr_down <= 0;
         dato_out <= 0;
         escribe <= 0;
         dir_out <= 0;
			contador<=1;
			contadoraux<=0;
			final <= 1;
  end
  default:begin
          state <= inicio;
  end
  endcase
 end
end



endmodule
