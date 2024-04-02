
`include "uvm_macros.svh"
import uvm_pkg::*;



//`include "Interface.sv"

//`include "I2C_seq_item.sv"

//`include "I2C_pkg.sv"
//`include "Sequence.sv"
//`include "Driver.sv"

//`include "Sequencer.sv"
//`include "Monitor.sv"
//`include "Agent.sv"
//`include "Scoreboard.sv"
//`include "Environment.sv"
//`include "Sequence.sv"
//`include "I2C_Test.sv"


module Top;
import uvm_pkg::*;


//import I2C_pkg::*;
static logic clk;
Interface intf();




I2C_Master DUT(  .clk(intf.clk),
					  .reset(intf.reset),
					  .wr_i2c(intf.wr_i2c),
                 .data_in(intf.data_in),
                 .cmd(intf.cmd),
					  .dvsr(intf.dvsr),
					  .data_out(intf.data_out),
					  .ready(intf.ready),
					  .done_tick(intf.done_tick),
					  .ACK(intf.ACK),
					  .SCL(intf.SCL),
					  .SDA(intf.SDA));



initial begin 
  clk = 0;
  forever  #5 clk = ~clk;
end
initial begin 
uvm_config_db #(virtual Interface)::set(null,"*","Interface",intf);
  run_test("I2C_Test");
end

endmodule 
