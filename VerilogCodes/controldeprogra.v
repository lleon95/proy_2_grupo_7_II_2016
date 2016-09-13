`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:56:13 09/13/2016 
// Design Name: 
// Module Name:    controldeprogra 
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
module controldeprogra(CLK,reset,inicio,datos,add,Dato_out,esc,fin,final);
	input CLK,reset,inicio;
	input[7:0] datos;
	input[7:0] add;
	input fin;
	output Dato_out,esc,final;
	reg esc,final;
	reg [7:0]Dato_out;
	reg [1:0]status;
	
	always @(posedge CLK)
	begin
		if(reset)
		begin
			Dato_out=0;
			esc=0;
			final=0;
			status=0;
		end
		//logica de siguinte estado
		case(status)
			2'b00:
				if(inicio)status=status+1;
				else begin end
			2'b01:
				if(fin)status=status+1;
				else begin end
			2'b10:
				if(fin)status=status+1;
				else begin end
			2'b11:
				if(fin)status=0;
				else begin end			
		endcase
		//salida
		case(status)
			2'b00:
			begin
				Dato_out=0;
				esc=0;
				final=0;
			end
			2'b01:
			begin
				Dato_out=add;
				esc=1;
				final=0;
			end
			2'b10:
			begin
				Dato_out=datos;
				esc=1;
				final=0;
			end
			2'b11:
			begin
				Dato_out=0;
				esc=0;
				final=1;
			end		
		endcase
	end


endmodule
