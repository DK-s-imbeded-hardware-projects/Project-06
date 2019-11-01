module counter4_led(display,clock,reset,enable);
	output [6:0] display;
	input enable,reset,clock;
	wire [3:0] qout;
	
	counter4 u1 (qout,enable,reset,clock);
	LED7 seg u2 (display,qout);
	
	endmodule