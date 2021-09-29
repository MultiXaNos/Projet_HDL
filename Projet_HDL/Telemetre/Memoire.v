module Memoire(In, Gate, Out);

parameter BUS_SIZE = 8;
parameter GATE_POLARITY = 0; // 0 = Front descendant de Gate et 1 = Front montant de Gate

input[(BUS_SIZE-1):0] In;
input Gate;

wire iGate;
output reg[(BUS_SIZE-1):0] Out;

always @(negedge(iGate))
begin

	Out <= In;

end

assign iGate = (GATE_POLARITY == 0) ? Gate : ~Gate;

endmodule
