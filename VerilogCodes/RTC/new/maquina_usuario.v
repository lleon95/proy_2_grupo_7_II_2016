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
module maquina_usuario(erase,iniciar,fin,reset,clk,dato,dato_up,dato_down,addr,addr_up,final,addr_down,dato_out,escribe,dir_out,int2,timer);
output erase;
input int2,timer;
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

parameter [2:0] inicio = 3'b000;
parameter [2:0] timerclock = 3'b001;
parameter [2:0] suma = 3'b010;
parameter [2:0] out = 3'b011;
parameter [2:0] cont10 = 3'b100;
parameter [2:0] timerrun = 3'b101;
parameter [2:0] timeroff = 3'b110;
parameter [2:0] finalizar = 3'b111;

always @(state or iniciar or contador or fin or timer)
begin
 next_state = 0;
 case(state)
  inicio:begin
         if (iniciar == 1'b1)
			  next_state = timerclock;
			 else
			  next_state = inicio;
  end
  timerclock:
  begin
			if (timer == 1'b1)
			  next_state = timerrun;
			 else
			  next_state = suma;
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
         if (contador == 4'd9)
			  next_state = finalizar;
			 else
			  next_state = suma;
  end
  timerrun:  
  begin
			if (fin == 1'b1)
			  next_state = timeroff;
			 else
			  next_state = timerrun;
  end

  timeroff:  
  begin
			if (fin == 1'b1)
			  next_state = finalizar;
			 else
			  next_state = timeroff;
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
  timerclock:begin
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
         case(contador)
			 4'd1:dir_out <= 8'd33;
			 4'd2:dir_out <= 8'd34;
			 4'd3:dir_out <= 8'd35;
			 4'd4:dir_out <= 8'd36;
			 4'd5:dir_out <= 8'd37;
			 4'd6:dir_out <= 8'd38;
			 4'd7:dir_out <= 8'h41;
			 4'd8:dir_out <= 8'h42;
			 4'd9:dir_out <= 8'h43;
			 default:dir_out <= 0;
			endcase
			

  end
  out:begin
         addr <= contador;
         addr_up <=contador;
         addr_down <= contador;
         contadoraux<=contador;
         // BEGIN LLEON
			if(dato_up != 8'd0)
				begin
					if(dato[3:0] == 4'd9)
						begin
							dato_out[3:0] <= 4'd0;
							if(dato[7:4] == 4'd5)
								dato_out[7:4] <= 4'd0;
							else dato_out[7:4] <= dato[7:4] + 4'd1;
						end
					else
						begin
							dato_out[3:0] <= dato[3:0] + 4'd1;
							dato_out[7:4] <= dato[7:4];
						end
				end
			else if(dato_down != 8'd0)
				begin
					if(dato[3:0] == 4'd0)
						begin
							if(dato[7:4] != 0)
								begin
									dato_out[7:4] <= dato[7:4] - 4'd1;
									dato_out[3:0] <= 4'd9;
								end
						end
					else
						begin
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
			 4'd7:dir_out <= 8'h41;
			 4'd8:dir_out <= 8'h42;
			 4'd9:dir_out <= 8'h43;
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
  timerrun:begin
			if(int2 == 1'b1)
			begin
         dir_out <= 8'h0;
         dato_out <= 8'b00001000;
			end
			else
			begin
			dir_out <= 8'h0;
         dato_out <= 8'b0;
			end
         addr <= 0;
         addr_up <=0;
         addr_down <= 0;
         escribe <= 1;
         final <= 0;			
  end
  timeroff:begin
			if(int2 == 1'b1)
			begin
         dir_out <= 8'h0;
         dato_out <= 8'b00001000;
			end
			else
			begin
			dir_out <= 8'h0;
         dato_out <= 8'b0;
			end
         addr <= 0;
         addr_up <=0;
         addr_down <= 0;
         escribe <= 1;
         final <= 0;			
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
