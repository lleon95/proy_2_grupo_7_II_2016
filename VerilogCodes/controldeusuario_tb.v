`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:00:24 09/14/2016
// Design Name:   controldeususario
// Module Name:   C:/Users/User/Documents/proy_2_grupo_7_II_2016/VerilogCodes/controldeusuario_tb.v
// Project Name:  VGA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controldeususario
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controldeusuario_tb;

	// Inputs
	reg CLK;
	reg reset;
	reg [3:0] selectores;
	reg [2:0] interruptores;
	reg fin;
	reg Maquina_in;
	reg [7:0] Dato_in;

	// Outputs
	wire Maquina_out;
	wire [3:0] ADD;
	wire [7:0] ADD2;
	wire read;
	wire [7:0]Dato_out;
	wire escritura;

	//registro auxiliar
	reg [7:0] dir2[0:15];
	integer id;
	// Instantiate the Unit Under Test (UUT)
	controldeususario uut (
		.CLK(CLK), 
		.reset(reset), 
		.selectores(selectores), 
		.interruptores(interruptores), 
		.fin(fin), 
		.Maquina_in(Maquina_in), 
		.Maquina_out(Maquina_out), 
		.ADD(ADD), 
		.ADD2(ADD2), 
		.read(read), 
		.Dato_in(Dato_in), 
		.Dato_out(Dato_out), 
		.escritura(escritura)
	);
	initial forever #5 CLK=~CLK;
	initial begin
		// Initialize Inputs\
		id = $fopen("C:/Users/User/Documents/proy_2_grupo_7_II_2016/Simulations/testbech/resultados/cambios.txt","w");
		Dato_in = dir2[ADD];
		dir2[0]<=80;
			dir2[1]<=32;
			dir2[2]<=33;
			dir2[3]<=34;
			dir2[4]<=35;
			dir2[5]<=36;
			dir2[6]<=38;
			dir2[7]<=49;
			dir2[8]<=50;
			dir2[9]<=51;
			dir2[10]<=52;
			dir2[11]<=65;
			dir2[12]<=65;
			dir2[13]<=67;
			dir2[14]<=0;
			dir2[15]<=0;
		CLK = 0;
		reset = 1;
		selectores = 0;
		interruptores = 0;
		fin = 0;
		Maquina_in = 0;
		#10 reset = 0;
		@(negedge CLK);
		interruptores = 3'b001;
		selectores[0]=1;
		@(negedge CLK);
		selectores[1]=1;
		@(negedge CLK);
		selectores=4'b0101;
		@(negedge CLK);
		selectores=0;
		Maquina_in=1;
		@ (posedge CLK);
		$fwrite(id,"primer estado \n");
		while(~Maquina_out)
			begin
				Dato_in = dir2[ADD];
				@ (negedge CLK);
				$fwrite(id,ADD);
				$fwrite(id,"\t");
				$fwrite(id,Dato_in);
				$fwrite(id,"\t");
				$fwrite(id,Dato_out);
				$fwrite(id,"\t");
				$fwrite(id,ADD2);
				$fwrite(id,"\n");
				dir2[ADD]=Dato_out;
				fin=1;
				@ (negedge CLK);
				fin=0;
				@ (negedge CLK);
			end
		Maquina_in=0;
		@(posedge CLK);
		Maquina_in=1;
		Dato_in = dir2[ADD];
		@(posedge CLK);
		$fwrite(id,"\n \n segundo estado \n");
		while(~Maquina_out)
			begin
				Dato_in = dir2[ADD];
				@ (negedge CLK);
				$fwrite(id,ADD);
				$fwrite(id,"\t");
				$fwrite(id,Dato_in);
				$fwrite(id,"\t");
				$fwrite(id,Dato_out);
				$fwrite(id,"\t");
				$fwrite(id,ADD2);
				$fwrite(id,"\n");
				dir2[ADD]=Dato_out;
				fin=1;
				@ (negedge CLK);
				fin=0;
				@ (negedge CLK);
			end
			Maquina_in=0;
		@(posedge CLK);
		Maquina_in=1;
		selectores=4'b0110;
		@(posedge CLK);
		Dato_in = dir2[ADD];
		$fwrite(id,"\n \n tercer estado \n");
		while(~Maquina_out)
			begin
				@ (negedge CLK);
				Dato_in = dir2[ADD];
				@ (negedge CLK);
				$stop;
				$fwrite(id,ADD);
				$fwrite(id,"\t");
				$fwrite(id,Dato_in);
				$fwrite(id,"\t");
				$fwrite(id,Dato_out);
				$fwrite(id,"\t");
				$fwrite(id,ADD2);
				$fwrite(id,"\n");
				dir2[ADD]=Dato_out;
				fin=1;
				@ (negedge CLK);
				fin=0;
				@ (negedge CLK);
			end
		$fclose(id);
		$finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

