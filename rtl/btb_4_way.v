`include "set.v"
module btb_4_way #( parameter NUM_BTB_ENTRIES = 16,
		    parameter TAG_WIDTH = 5,
                    parameter SET_WIDTH = 4,
                    parameter TARGET_WIDTH = 32,
		    parameter VALID_WIDTH = 1
                 
    )(  
    input  clk,
    input  rst,
    input  [TAG_WIDTH-1:0] tag_in,
    input  [TARGET_WIDTH-1:0] target_in, 
    input  [$clog2(NUM_BTB_ENTRIES)-1:0] index,
    input  ex_flush,
    input  branch_request,

    output  [TAG_WIDTH-1:0] tag_out,
    output  [TARGET_WIDTH-1:0] target_out, 
    output  valid
    );
    
    // Valid bits
    wire valid0, valid1, valid2, valid3;

    // Replace-bit, 1-bit per table
    // 0: replace line0, 1: replace lin1 within a table set
    //logic [1:0] replace;

    wire wr_en0, wr_en1, wr_en2, wr_en3;
    wire match0, match1, match2, match3;
    // TAG to be written in Single BTB when we have miss and we upload new entry in our table
    wire [TARGET_WIDTH-1:0] trg_out0, trg_out1, trg_out2, trg_out3;
    wire [TAG_WIDTH-1:0] t_out0, t_out1, t_out2, t_out3;

    // table-0
    set #(.TAG_WIDTH(TAG_WIDTH),
                .TARGET_WIDTH(TARGET_WIDTH),
                .VALID_WIDTH(VALID_WIDTH), 
                .NUM_BTB_ENTRIES(NUM_BTB_ENTRIES)
               ) 
                table0_inst 
               (.*,
	        .ex_flush(ex_flush),
		.branch_request(branch_request),
                .index(index), 
                .wr_addr(index), 
                .tag_in(tag_in), // tag match
                .target_in(target_in), 
                .target_out(trg_out0), 
                .tag_out(t_out0), 
                .wr_en(wr_en0), // write tag
                .valid(valid0), 
                .match(match0) // o/p of tag match)
               );
    // table-1
    set #(.TAG_WIDTH(TAG_WIDTH),
                .TARGET_WIDTH(TARGET_WIDTH),
                .VALID_WIDTH(VALID_WIDTH), 
                .NUM_BTB_ENTRIES(NUM_BTB_ENTRIES)
               ) 
                table1_inst 
  		(.*,
		 .ex_flush(ex_flush),
		 .branch_request(branch_request),
                 .index(index), 
                 .wr_addr(index), 
                 .tag_in(tag_in), // tag match
                 .target_in(target_in), 
                 .target_out(trg_out1), 
                 .tag_out(t_out1), 
                 .wr_en(wr_en1), // write tag
                 .valid(valid1), 
                .match(match1) // o/p of tag match)
               );
    // table-2
    set #(.TAG_WIDTH(TAG_WIDTH), 
                .TARGET_WIDTH(TARGET_WIDTH),
                .VALID_WIDTH(VALID_WIDTH), 
                .NUM_BTB_ENTRIES(NUM_BTB_ENTRIES)
               ) 
                table2_inst 
               (.*,
		.ex_flush(ex_flush),
		.branch_request(branch_request),
                .index(index), 
                .wr_addr(index), 
                .tag_in(tag_in), // tag match
                .target_in(target_in), 
                .target_out(trg_out2), 
                .tag_out(t_out2), 
                .wr_en(wr_en2), // write tag
                .valid(valid2), 
                .match(match2) // o/p of tag match)
               );
    // table-3
    set #(.TAG_WIDTH(TAG_WIDTH), 
                .TARGET_WIDTH(TARGET_WIDTH),
                .VALID_WIDTH(VALID_WIDTH), 
                .NUM_BTB_ENTRIES(NUM_BTB_ENTRIES)
               ) 
                table3_inst 
  		(.*,
	         .ex_flush(ex_flush),
		 .branch_request(branch_request),
                 .index(index), 
                 .wr_addr(index), 
                 .tag_in(tag_in), // tag match
                 .target_in(target_in), 
                 .target_out(trg_out3), 
                 .tag_out(t_out3), 
                 .wr_en(wr_en3), // write tag
                 .valid(valid3), 
                 .match(match3) // o/p of tag match)
               );

    wire  hit0, hit1, hit2, hit3;
    wire Hit;

    // Hit condition
    assign hit0 = match0 & valid0;
    assign hit1 = match1 & valid1;
    assign hit2 = match2 & valid2;
    assign hit3 = match3 & valid3;
    assign Hit  = (hit0 || hit1 || hit3 || hit2);
    
    
    assign valid = (valid0 || valid1 || valid3 || valid2);
    assign target_out =  hit0? trg_out0 :
			(hit1? trg_out1:
			(hit2? trg_out2:
			(hit3? trg_out3:
			{TARGET_WIDTH{1'b0}})));
    assign tag_out = hit0? t_out0 : 
		    (hit1? t_out1 :
		    (hit2?t_out2  :
		    (hit3?t_out3  :
		    {TAG_WIDTH{1'b0}})));
    

    //LRU logic
    reg [2:0] c0, c1, c2, c3;
    always@ (posedge clk or negedge rst) 
    begin 
    if(rst)
    		begin
    		c0<=0; c1<=0; c2<=0; c3<=0;
    		end
    else 
    		begin
			if      (wr_en0) c0 <= c0 +1;
			else if (wr_en1) c1 <= c1 +1;
			else if (wr_en2) c2 <= c2 +1;
			else if (wr_en3) c3 <= c3 +1;
   		end
   end	

    assign wr_en0 =  ~Hit&&valid&&((c0 <= c2) && (c0<=c1) && (c0 <= c3))? 1 :0;
    assign wr_en1 =  ~Hit&&valid&&((c1 <= c2) && (c1<c0)  && (c1 <= c3))? 1 :0; 
    assign wr_en2 =  ~Hit&&valid&&((c2 < c1)  && (c2<c0)  && (c2 <= c3))? 1 :0;  
    assign wr_en3 =  ~Hit&&valid&&((c3 < c1)  && (c3<c0)  && (c3 < c2)) ?  1 :0; 

endmodule
