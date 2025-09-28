module counter (
input clk,
output reg [31:0] counter_out
);
always @ (posedge clk) // on positive clock edge
begin
	counter_out <= #1 counter_out + 1; // increment counter
end
endmodule