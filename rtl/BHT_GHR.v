
module BHT_GHR
  #(
     parameter NUM_BHT_ENTRIES  = 32
    ,parameter NUM_BHT_ENTRIES_W = 2
    ,parameter TAG_WIDTH = 5
)
(
    // Inputs
     input           		clk
    ,input           		rst
    ,input           		branch_request
    ,input           		branch_taken
    ,input  [ TAG_WIDTH-1:0]    hashed_tag_out
    ,input  [ TAG_WIDTH-1:0]    hashed_tag_in
  
    ,output                     predict_taken
    ,output                     predict_ntaken 
);

reg [$clog2(NUM_BHT_ENTRIES)-1:0] global_history;

always @ (posedge clk or posedge rst)
if (rst)
    global_history <= {$clog2(NUM_BHT_ENTRIES){1'b0}};
else if(branch_request)
  global_history <= {global_history[$clog2(NUM_BHT_ENTRIES)-2:0], branch_taken};

wire [$clog2(NUM_BHT_ENTRIES)-1:0] wr_entry_w = global_history ^ hashed_tag_out;
wire [$clog2(NUM_BHT_ENTRIES)-1:0] rd_entry_w = global_history ^ hashed_tag_in;

//-----------------------------------------------------------------
// Branch prediction bits
//-----------------------------------------------------------------
reg [1:0]  bht_counter[NUM_BHT_ENTRIES-1:0];

wire [$clog2(NUM_BHT_ENTRIES)-1:0] bht_wr_entry_w = wr_entry_w;
wire [$clog2(NUM_BHT_ENTRIES)-1:0] bht_rd_entry_w = rd_entry_w;
wire bht_predict_taken ;
integer i;
always @ (posedge clk or negedge rst)
begin
  if (rst)
     begin
          for (i = 0; i < NUM_BHT_ENTRIES; i = i + 1)
          begin
             bht_counter[i] <= 2'd2;
          end
  end
  else if (branch_request && predict_taken && branch_taken && bht_counter[bht_wr_entry_w] < 2'd3) // Not Taken
    bht_counter[bht_wr_entry_w] <= bht_counter[bht_wr_entry_w] + 2'd1;

  else if (branch_request && predict_ntaken &&  ~branch_taken && bht_counter[bht_wr_entry_w] > 2'd0) // Taken
    bht_counter[bht_wr_entry_w] <= bht_counter[bht_wr_entry_w] - 2'd1;
    
  else if(branch_request && predict_taken &&  ~branch_taken  && bht_counter[bht_wr_entry_w] > 2'd0) 
    bht_counter[bht_wr_entry_w] <= bht_counter[bht_wr_entry_w] - 2'd1;

  else if(branch_request && predict_ntaken &&  branch_taken  && bht_counter[bht_wr_entry_w] < 2'd3) 
    bht_counter[bht_wr_entry_w] <= bht_counter[bht_wr_entry_w] + 2'd1;
end

assign bht_predict_taken = (bht_counter[bht_rd_entry_w] >= 2'd2) ? 1'b1: 1'b0;
assign predict_taken = bht_predict_taken & branch_request;
assign predict_ntaken = ~bht_predict_taken & branch_request;


endmodule
