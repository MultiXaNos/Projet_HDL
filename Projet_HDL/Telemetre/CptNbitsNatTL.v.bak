module CptNbitsNatTL (Clk, nReset, nSet, Cpt, Sens) ;


parameter MODULO = 10 ;
parameter BUS_SIZE = 4 ;
parameter CLOCK_POLARITY = 0 ;

input Clk ;
input nReset ;
input nSet ;
input Sens ;

output[0:(BUS_SIZE -1 )] Cpt ;

reg[0:(BUS_SIZE -1 )] Cpt ;

wire iClk;


always@(negedge (iClk))

	begin

		if (nReset == 0)
		begin
			Cpt <= 0 ;
		end
		
		else if (nSet == 0)
		begin
			Cpt <= MODULO ;
		end
		
		else if (Sens == 0)
		begin
			Cpt <= Cpt + 1 ;
			
			if(Cpt >= (MODULO - 1))
			begin
				Cpt <= 0 ;
			end			
		end
		
		else if (Sens == 1)
				begin
			Cpt <= Cpt - 1 ;
			
			if(Cpt <= 0)
			begin
				Cpt <= (MODULO - 1) ;
			end			
		end
		
	end
	
assign iClk = (CLOCK_POLARITY == 0)?Clk:-Clk ;

endmodule
