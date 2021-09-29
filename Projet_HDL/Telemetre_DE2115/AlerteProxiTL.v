module AlerteProxiTL(Dist, Alerte) ;


parameter DistAlerte = 15 ;

input[7:0] Dist ;

output reg Alerte ;


always@(Dist)
	begin
		
		if(Dist >= DistAlerte)
		begin
			Alerte <= 1 ;
		end
		else
		begin
			Alerte <= 0 ;
		end
		
	end

endmodule
