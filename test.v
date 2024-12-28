module second_example
	(
		in_1,
		in_2,
		in_3,
		out_1,
		out_2
	);

	input	in_1;
	input	in_2;
	input	in_3;

	output	out_1;
	output	out_2;

	wire	inter_sig;

	assign	inter_sig = in_1 | in_2;
	assign	out_1 = inter_sig & in_3;
	assign	out_2 = inter_sig | in_3;

endmodule

module bus_sigs
	(
		in_1,
		in_2,
		in_3,
	
		out_1
	);

	input	[3:0]	in_1;
	input	[3:0]	in_2;
	input		in_3;

	output	[3:0]	out_1;

	wire	[3:0]	in_3_bus;

	assign	in_3_bus = {4{in_3}};
	assign	out_1 = (~in_3_bus & in_1) | (in_3_bus & in_2);

endmodule
