module FreqDividerTL (clkIn, clkOut) ;

 parameter NBT      = 10; // Facteur de division
 parameter NBTON    = 5; //Rapport Cyclique (a calculer en fonction du diviseur)
 parameter POLARITY = 1; //Polarité du signal de sortie
 parameter BUS_SIZE = 16; //Taille du compteur en bits



 input clkIn;
 
 output reg clkOut;
 
 reg [(BUS_SIZE-1):0] cnt;



 always @(negedge(clkIn))
 begin
 
	  if (cnt < NBT - 1)
	  begin
			cnt <= cnt + 1;			
	  end
	  else
	  begin
			cnt <= 0;			
	  end
	  
	  if (cnt < NBTON)
	  begin
			clkOut <= POLARITY;			
	  end
	  else
	  begin
			clkOut <= ~POLARITY;
	  end
	  
 end

 

endmodule 