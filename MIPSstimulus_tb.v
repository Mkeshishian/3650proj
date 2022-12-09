`timescale 1 ps / 100 fs
module MIPSStimulus();
// Verilog project: 32-bit 5-stage Pipelined MIPS Processor in Verilog 
// Testbench Verilog code for 32-bit 5-stage Pipelined MIPS Processor 
parameter ClockDelay = 5000;

reg clk,reset;


MIPSpipeline  myMIPS(clk, reset);
initial clk = 0;
always #(ClockDelay/2) clk = ~clk;

initial 
begin
  $dumpfile("mips_tb.vcd");
  $dumpvars(0, MIPSStimulus);
   reset = 1;
  #(ClockDelay/4);
  reset = 0;
end
endmodule
