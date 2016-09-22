module control_salida(reset,direccion,dato,clk,iniciar,escribe,data_out,CS,AD,RD,WR,final,esc,escreg);
input esc;
input reset;
input iniciar;
input clk;
input escribe;
input [7:0] direccion;
input [7:0] dato;
output CS;
output escreg;
output [7:0] data_out;
output AD;
output RD;
output WR;
output final;
//fin input output
reg escreg;
reg CS;
reg [7:0] data_out;
reg AD;
reg RD;
reg WR;
reg final;

//inicio variables y parametros internos

reg [4:0] contador;

always @(posedge clk)
begin
 if (reset)
 begin
  CS <= 1'b1;
  AD <= 1'b1;
  RD <= 1'b1;
  WR <= 1'b1;
  final <= 1'b0;
  contador <=0;
 end
 else
 begin
  if (iniciar == 1'b0)
  begin
	escreg<=0;
   CS <= 1'b1;
   AD <= 1'b1;
   RD <= 1'b1;
   WR <= 1'b1;
   final <= 1'b0;
   contador <= 0;
	data_out <= 0;
  end
  else
  begin
   contador <= contador + 1;
	case(contador)
	 5'b00001:begin
	          CS <= 1'b1;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
				 escreg<=0;
				 data_out<= direccion;
	  end
	 5'b00010:begin
	          CS <= 1'b0;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b0;
			    final <= 1'b0;
	  end
	 5'b01000:begin
	          CS <= 1'b1;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
	  end
	 5'b01010:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
	  end
	 5'b10011:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;		 
	  end
	 5'b10100:begin
	          if (escribe)
				 begin
	           CS <= 1'b0;
			     AD <= 1'b1;
			     RD <= 1'b1;
			     WR <= 1'b0;
			     final <= 1'b0;
				  escreg<=0;
				  data_out <= dato;
				 end
				 else
				 begin
				  CS <= 1'b0;
			     AD <= 1'b1;
			     RD <= 1'b0;
			     WR <= 1'b1;
			     final <= 1'b0;
				  escreg<=esc;
				  data_out <= 8'bz;
				 end
	  end
	 5'b11010:begin
				 escreg=0;	
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
		       final <= 1'b0;
	  end
	 5'b11100:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
		       final <= 1'b1;
				 contador <= 0;
	  end
	 default:begin
	  end
	endcase
  end
 end
end

endmodule
