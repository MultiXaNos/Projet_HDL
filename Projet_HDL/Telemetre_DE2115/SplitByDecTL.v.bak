module SplitByDecTL (Dist, S1, S2, S3) ;

input[7:0] Dist ;

output reg[3:0] S1, S2, S3 ;


always@(Dist)
	begin
			S3 = Dist / 100 ;
			S2 = (Dist - (S3*100))/10 ;
			S1 = Dist - S3*100 - S2*10 ;
	end


endmodule
