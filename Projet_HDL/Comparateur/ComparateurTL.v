module ComparateurTL(Comp, Out) ;

parameter COMP_VALUE = 15 ;
parameter BUS_SIZE = 8 ;

input[BUS_SIZE-1:0] Comp ;

output reg Out ;

always@(Comp)

	begin
	
		if(Comp >= COMP_VALUE)
			begin
				Out <= 1 ;
			end
		else
			begin
				Out <= 0 ;
			end
	end
	
endmodule
