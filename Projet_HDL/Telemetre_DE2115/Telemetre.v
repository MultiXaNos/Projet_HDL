module Telemetre(Clk, Gate, A1, A2, A3, Led);

input Clk, Gate;
output[0:6] A1, A2, A3;
output Led;

wire ClkOut;
wire [7:0] Dist, DistMemorise;
wire [3:0] ValA1, ValA2, ValA3;

FreqDividerTL #(7350, 3675, 1, 13) Diviseur(Clk, ClkOut) ;
CptNBitsNatTL #(8, 256, 0, 1, 0) CntDist(ClkOut, Dist, 1, Gate);
Memoire #(8, 0) Mem(Dist, Gate, DistMemorise);
ComparateurTL #(15, 8, 0) CompDist(DistMemorise, Led);
SplitByDecTL Spliter(DistMemorise, ValA1, ValA2, ValA3);
Aff7Seg #(0) Aff1(ValA1, A1);
Aff7Seg #(0) Aff2(ValA2, A2);
Aff7Seg #(0) Aff3(ValA3, A3);


endmodule
