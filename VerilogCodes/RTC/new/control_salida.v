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
reg [2:0] state;
reg [2:0] nextstate;

//parametros
parameter inicio=3'b0;
parameter ADdown=3'b001;
parameter CSdown=3'b010;
parameter CSup=3'b011;
parameter ADup=3'b100;
parameter esclec=3'b101;
parameter finalesc=3'b110;
parameter finalizacion=3'b111;

always@*
begin
nextstate=0;
case(state)
inicio: 
	if(contador == 5'b00001) nextstate=ADdown;
	else nextstate=inicio;
ADdown: 
	if(contador == 5'b00010) nextstate=CSdown;
	else nextstate=ADdown;
CSdown: 
	if(contador == 5'b01000) nextstate=CSup;
	else nextstate=CSdown;
CSup: 
	if(contador == 5'b01010) nextstate=ADup;
	else nextstate=CSup;
ADup: 
	if(contador == 5'b10100) nextstate=esclec;
	else nextstate=ADup;
esclec: 
	if(contador == 5'b11010) nextstate=finalesc;
	else nextstate=esclec;
finalesc: 
	if(contador == 5'b11100) nextstate=finalizacion;
	else nextstate=finalesc;
finalizacion:
	nextstate=inicio;
default:
	nextstate=inicio;
endcase
end


always @(posedge clk)
begin
 if (reset || ~iniciar)
 begin
  CS <= 1'b1;
  AD <= 1'b1;
  RD <= 1'b1;
  WR <= 1'b1;
  final <= 1'b0;
  contador <=0;
  escreg<=0;
  state<=inicio;
 end
 else
  begin
   contador <= contador + 5'd1;
	state<=nextstate;
	case(state)
	inicio:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
				 escreg<=0;
				 data_out<= direccion;
	  end
	 ADdown:begin
	          CS <= 1'b1;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
				 data_out<= direccion;
	  end
	 CSdown:begin
	          CS <= 1'b0;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b0;
			    final <= 1'b0;
				 data_out<= direccion;
	  end
	 CSup:begin
	          CS <= 1'b1;
			    AD <= 1'b0;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
				 data_out<= direccion;
	  end
	 ADup:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
			    final <= 1'b0;
				 data_out<= direccion;
	  end
	 esclec:begin
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
				  data_out <= 8'b0;
				 end
	  end
	 finalesc:begin
				 escreg<=0;	
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
		       final <= 1'b0;
	  end
	 finalizacion:begin
	          CS <= 1'b1;
			    AD <= 1'b1;
			    RD <= 1'b1;
			    WR <= 1'b1;
		       final <= 1'b1;
				 contador <= 0;
	  end
	 default:state<=inicio;
	endcase
	end
end

endmodule
