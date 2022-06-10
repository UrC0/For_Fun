
`include "btb_4_way.v"
`include "BHT_GHR.v"
module branch_predictor
  #(	 parameter NUM_BTB_ENTRIES = 16
    	,parameter NUM_BHT_ENTRIES  = 32
    	,parameter NUM_BHT_ENTRIES_W = 2
	,parameter TAG_WIDTH = 5
        ,parameter SET_WIDTH = 4
        ,parameter TARGET_WIDTH = 32
	,parameter VALID_WIDTH = 1
  )  
  ( input  			clk,
    input 		        rst,
    input  [31:0]  		PC,          // fetch pc
    input  [31:0]  		ex_pc,       // execution pc
    input                       ex_branch,   // check if branch instruction
    input  			branch_taken,// input from execution if it is a branch instruction
    input  [TARGET_WIDTH-1:0]   ex_imm,      // offset
    input                       ex_flush,
    
    output  reg [31:0]          predicted_pc,
    output                      predict_taken, 
    output                      predict_ntaken   
  );
  

     wire [TAG_WIDTH-1:0] 			tag_in;
     wire [TARGET_WIDTH-1:0]			target_in; 
     wire [$clog2(NUM_BTB_ENTRIES)-1:0] 	index;
     wire [TAG_WIDTH-1:0] 			tag_out;
     wire  					valid;
     wire [ TAG_WIDTH-1:0]                      ex_tag_out;
     wire [ TARGET_WIDTH-1:0]                   target_out;
  
btb_4_way #(.NUM_BTB_ENTRIES(NUM_BTB_ENTRIES),
            .TAG_WIDTH(TAG_WIDTH),
            .SET_WIDTH(SET_WIDTH),
            .TARGET_WIDTH(TARGET_WIDTH),
            .VALID_WIDTH(VALID_WIDTH)
            ) 
    	btb_4_way_inst
    	(  
               .clk(clk),
               .rst(rst),
               .tag_in(tag_in),
               .target_in(ex_imm), 
               .index(index),
	       .ex_flush(ex_flush),
               .branch_request(ex_branch),
              	//output
               .tag_out(tag_out),
               .target_out(target_out), 
               .valid(valid)
    	);
  
  
BHT_GHR #(
  		.NUM_BHT_ENTRIES(NUM_BHT_ENTRIES),
  		.NUM_BHT_ENTRIES_W(NUM_BHT_ENTRIES_W)
	)
	BHT_GHR_inst
		(
          	.clk(clk),
          	.rst(rst),
		.branch_request(ex_branch),
          	.branch_taken(branch_taken),
          	.hashed_tag_out(ex_tag_out), //execute stage PC on update
          	.hashed_tag_in(tag_in),
                //output
          	.predict_taken(predict_taken),
		.predict_ntaken(predict_ntaken)
		);

  

  assign tag_in        = PC[22:18]^PC[9:5];
  assign target_in     = ex_imm;
  assign index         = PC[$clog2(NUM_BTB_ENTRIES)+1:2];

always@* begin
	if(predict_taken&&ex_branch)
		 predicted_pc = (ex_pc + target_out);
	else
		 predicted_pc = (ex_pc + 32'd4);
end
  assign ex_tag_out = ex_pc[22:18]^ex_pc[9:5] ;
   
endmodule
