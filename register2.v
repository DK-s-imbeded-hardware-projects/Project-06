module counter4(qout,tc,enable,reset,clock);
	output [3:0] qout;
	reg [3:0] qout;
	output tc;
	input enable,reset,clock;
	
	always @(posedge clock or negedge reset) begin 
	if(~reset) qout <=0;
	else if(enable) qout <=+1;
	end
	
assign tc = (qout == 4'b1111)&enable;
endmodule