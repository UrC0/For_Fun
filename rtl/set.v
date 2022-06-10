module set

#(
	parameter NUM_BTB_ENTRIES = 16,
	parameter TAG_WIDTH = 5,
	parameter TARGET_WIDTH = 32,
	parameter VALID_WIDTH = 1
)
(
  input  clk,
  input  rst,
  input  ex_flush,
  input  branch_request,
  input  [$clog2(NUM_BTB_ENTRIES)-1:0] index,
  input  [TARGET_WIDTH-1:0]   target_in,
  input  [TAG_WIDTH-1:0]      tag_in,
  input  wr_en,
  input  [$clog2(NUM_BTB_ENTRIES)-1:0]wr_addr,
  output  valid,
  output  [TAG_WIDTH-1:0]     tag_out,
  output   [TARGET_WIDTH-1:0]   target_out,
  output  match
);
  reg [(TAG_WIDTH+VALID_WIDTH+TARGET_WIDTH)-1:0]BTB[NUM_BTB_ENTRIES-1:0];
  integer i;
  
  always@(posedge clk or negedge rst) begin
  	if (rst) begin
  		for ( i =0; i< NUM_BTB_ENTRIES; i = i+1) 
  			BTB[i] <= 38'd0;
  		end
  	else
  		begin
 	 		if ((wr_en || ex_flush ) && branch_request) 
            			BTB[wr_addr] <= {{tag_in},{target_in},{1'b1}};
 	 		
  	    	end
  end

  assign match      = (tag_in == (BTB[index][(TAG_WIDTH+12):13])) ? 1'b1 : 1'b0;
  assign valid      = BTB[index][0];
  assign tag_out    = (match && valid) ? 
		      (BTB[index][(TAG_WIDTH+VALID_WIDTH+TARGET_WIDTH)-1:(VALID_WIDTH+TARGET_WIDTH)]):
	              tag_in;
  assign target_out = (match  && valid) ? 
		      (BTB[index][((TAG_WIDTH+VALID_WIDTH+TARGET_WIDTH)-(TAG_WIDTH+VALID_WIDTH)):1]):
		      target_in;

endmodule
