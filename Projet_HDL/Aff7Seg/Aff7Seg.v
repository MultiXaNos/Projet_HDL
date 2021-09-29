module Aff7Seg(NbIn, Seg);

parameter OUTPUT_POLARITY = 1; //Fonctionnement sur '1' logique

input[3:0] NbIn;
output[0:6] Seg;

reg[0:6] iSeg;

always @(NbIn)
begin

	case(NbIn)
	
		0 : iSeg <= 7'b1111110 ;
		1 : iSeg <= 7'b0110000 ;
		2 : iSeg <= 7'b1101101 ;
		3 : iSeg <= 7'b1111001 ;
		4 : iSeg <= 7'b0110011 ;
		5 : iSeg <= 7'b1011011 ;
		6 : iSeg <= 7'b1011111 ;
		7 : iSeg <= 7'b1110000 ;
		8 : iSeg <= 7'b1111111 ;
		9 : iSeg <= 7'b1111011 ;
		10 : iSeg <= 7'b1110111 ;
		11 : iSeg <= 7'b0011111 ;
		12 : iSeg <= 7'b1001110 ;
		13 : iSeg <= 7'b0111101 ;
		14 : iSeg <= 7'b1001111 ;
		15 : iSeg <= 7'b1000111 ;
		
	endcase

end

assign Seg = (OUTPUT_POLARITY == 1) ? iSeg : ~iSeg;

endmodule
