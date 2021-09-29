module CptNBitsNatTL(Clk, Q, nSet, nReset);

parameter OUTPUT_SIZE = 4;
parameter MODULO_VALUE = 10;
parameter SET_POLARITY = 0; 
parameter RESET_POLARITY = 0;
parameter CLK_ACTIVE_EDGE = 1;

input Clk;
input nSet, nReset;

output[(OUTPUT_SIZE-1):0] Q;
reg[(OUTPUT_SIZE-1):0] Q;
reg nReset_prec;

wire iClk;

always @(negedge(iClk))
begin

	if (!nReset_prec && nReset)
		begin
			Q <= 0;
		end
		
	else
	begin 
		
		if (nSet == SET_POLARITY)
		begin 
			Q <= 2**(OUTPUT_SIZE) - 1;
		end
		else
			begin
				if((Q+1) < MODULO_VALUE)
				begin
					Q <= Q + 1;
				end
				else
				begin
					Q <= 0;
				end
			end
		
	end
	
	nReset_prec <= nReset;
	
end

assign iClk = (CLK_ACTIVE_EDGE == 0) ? Clk : ~Clk;

endmodule
