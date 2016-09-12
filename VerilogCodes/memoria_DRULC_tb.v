
`timescale 1us / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:21 09/03/2016 
// Design Name: 
// Module Name:    momoria_DMULC_tb 
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
module memoria_DMULC_tb;
	reg clk,reset,w1,w2,r1,r2;
	reg[3:0] ADD1;
	reg[3:0] ADD2;
	reg[7:0] DAT1;
	reg[7:0] DAT2;
	reg[7:0] flags;
	wire [7:0] Dato1;
	wire [7:0] Dato2;
	memoria_DMULC utt(ADD1,ADD2,DAT1,DAT2,Dato1,Dato2,flags,clk,reset,w1,w2,r1,r2);
	integer id;
	reg [3:0] i;
	initial 
		forever #1 clk=~clk;
	initial
	begin
		id = $fopen("C:/Users/User/Documents/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/memoria.txt","w");
		clk=0;
		reset =1;
		w1=0;
		w2=0;
		r1=0;
		r2=0;
		ADD1=0;
		ADD2=0;
		DAT1=0;
		DAT2=0;
		flags=0;
		i=0;
		@ (negedge clk)
		reset=0;
		@ (negedge clk)
		while(i<15)
		begin
			w1=1;
			ADD1=i;
			DAT1=i;
			@ (negedge clk)
			w1=0;
			i=i+1;
		end
		@ (negedge clk)
		i = 0;
		r1=1;
		$fwrite(id, "primer estado de memoria \n \n");
		while(i<15)
		begin
			ADD1=i;
			@ (negedge clk)
			$fwrite(id,Dato1);
			$fwrite(id,"\t");
			@ (negedge clk)
			r1=0;
			r2=1;
			ADD2=i;
			@ (negedge clk)
			$fwrite(id, Dato2);
			$fwrite(id, "\n");
			@ (negedge clk)
			r1=1;
			r2=0;
			i=i+1;
		end
		i=0;
		@ (negedge clk)
		while(i<15)
		begin
			w2=1;
			ADD2=i;
			DAT2=15-i;
			@ (negedge clk)
			w2=0;
			i=i+1;
		end
		@ (negedge clk)
		r1=1;
		i=0;
		$fwrite(id, "\n \n segundo estado de memoria \n \n");
		while(i<15)
		begin
			ADD1=i;
			@ (negedge clk)
			$fwrite(id,Dato1);
			$fwrite(id, "\t");
			@ (negedge clk)
			r1=0;
			r2=1;
			ADD2=i;
			@ (negedge clk)
			$fwrite(id, Dato2);
			$fwrite(id, "\n");
			@ (negedge clk)
			r1=1;
			r2=0;
			i=i+1;
		end
		@ (negedge clk);
		w2=0;
		w1=0;
		r1=0;
		r2=0;
		flags=200;
		@ (negedge clk)
		flags=0;
		r1=1;
		i=0;
		$fwrite(id, "\n \n clonado de registro uno en el 2 \n \n");
		while(i<15)
		begin
			ADD1=i;
			@ (negedge clk)
			$fwrite(id,Dato1);
			$fwrite(id, "\t");
			@ (negedge clk)
			r1=0;
			r2=1;
			ADD2=i;
			@ (negedge clk)
			$fwrite(id, Dato2);
			$fwrite(id, "\n");
			@ (negedge clk)
			r1=1;
			r2=0;
			i=i+1;
		end
		@ (negedge clk)
		i=0;
		while(i<15)
		begin
			w2=1;
			ADD2=i;
			DAT2=52;
			@ (negedge clk)
			w2=0;
			i=i+1;
		end
		@ (negedge clk)
		r1=1;
		i=0;
		$fwrite(id, "\n \n llenando registro 2, tercer estado de memoria \n \n");
		while(i<15)
		begin
			ADD1=i;
			@ (negedge clk)
			$fwrite(id,Dato1);
			$fwrite(id, "\t");
			@ (negedge clk)
			r1=0;
			r2=1;
			ADD2=i;
			@ (negedge clk)
			$fwrite(id, Dato2);
			$fwrite(id, "\n");
			@ (negedge clk)
			r1=1;
			r2=0;
			i=i+1;
		end
		@ (negedge clk);
		w2=0;
		w1=0;
		r1=0;
		r2=0;
		flags=1;
		@ (negedge clk)
		flags=0;
		r1=1;
		i=0;
		$fwrite(id, "\n \n clonado de registro 2 en el 1 \n \n");
		while(i<15)
		begin
			ADD1=i;
			@ (negedge clk)
			$fwrite(id,Dato1);
			$fwrite(id, "\t");
			@ (negedge clk)
			r1=0;
			r2=1;
			ADD2=i;
			@ (negedge clk)
			$fwrite(id, Dato2);
			$fwrite(id, "\n");
			@ (negedge clk)
			r1=1;
			r2=0;
			i=i+1;
		end
		@ (negedge clk)
		@ (negedge clk);
		w2=0;
		w1=0;
		r1=0;
		r2=0;
		flags=1;
		reset=1;
		@ (negedge clk)
		r1=1;
		i=0;
		$fwrite(id, "\n \n reseteo de memoria \n \n");
		while(i<15)
		begin
			ADD1=i;
			@ (negedge clk)
			$fwrite(id,Dato1);
			$fwrite(id, "\t");
			@ (negedge clk)
			r1=0;
			r2=1;
			ADD2=i;
			@ (negedge clk)
			$fwrite(id, Dato2);
			$fwrite(id, "\n");
			@ (negedge clk)
			r1=1;
			r2=0;
			i=i+1;
		end
		@ (negedge clk)
		$fclose(id);
		$finish;
	end
endmodule