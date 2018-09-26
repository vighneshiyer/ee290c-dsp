module Example( // @[:hw2.fir@2.4]
  input        clk, // @[:hw2.fir@3.8]
  input  [3:0] a, // @[:hw2.fir@4.8]
  input  [1:0] b, // @[:hw2.fir@5.8]
  input  [2:0] c, // @[:hw2.fir@6.8]
  output [8:0] out // @[:hw2.fir@7.8]
);
  reg [4:0] sum; // @[:hw2.fir@9.8]
  reg [31:0] _RAND_0;
  reg [7:0] prod; // @[:hw2.fir@10.8]
  reg [31:0] _RAND_1;
  wire [7:0] _GEN_0; // @[:hw2.fir@14.8]
  wire [3:0] _GEN_1; // @[:hw2.fir@12.8]
  wire [4:0] _GEN_2; // @[:hw2.fir@13.8]
  assign _GEN_0 = {{3'd0}, sum}; // @[:hw2.fir@14.8]
  assign out = prod - _GEN_0; // @[:hw2.fir@14.8]
  assign _GEN_1 = {{2'd0}, b}; // @[:hw2.fir@12.8]
  assign _GEN_2 = {{2'd0}, c}; // @[:hw2.fir@13.8]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  sum = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  prod = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clk) begin
    sum <= a + _GEN_1;
    prod <= sum * _GEN_2;
  end
endmodule
