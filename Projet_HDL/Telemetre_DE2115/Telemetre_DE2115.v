module Telemetre_DE2115(CLOCK_50, GPIO, HEX0, HEX1, HEX2, LEDR);

input CLOCK_50;
input[35:0] GPIO;

output[0:6] HEX0, HEX1, HEX2;
output[17:0] LEDR ;

Telemetre Tel(CLOCK_50, GPIO[0], HEX0, HEX1, HEX2, LEDR[0]); 

endmodule
