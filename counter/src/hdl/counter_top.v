module counter_top(
input CLOCK0_50,
input [1:0] KEY,
output [3:0] LED
);
wire clk_50;
wire [31:0] count;
wire [3:0] mux_result;
iopll u_iopll(
.refclk(CLOCK0_50),
.rst(~KEY[1]),
.outclk_0(clk_50)
);

counter u_counter(
.clk(clk_50),
.counter_out(count)
);

mux u_mux(
.data0(count[24:21]),
.data1(count[26:23]),
.sel(KEY[0]),
.result(mux_result)
);

assign LED=~mux_result;

endmodule