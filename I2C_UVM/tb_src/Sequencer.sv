class Sequencer  extends uvm_sequencer #(I2C_seq_item);
  `uvm_component_utils(Sequencer)
  
  function new(string name = "Sequencer" ,uvm_component parent);
    super.new(name,parent);
    `uvm_info(get_type_name(),"Inside constructor of Sequencer Class",UVM_LOW)
  endfunction :new
  
endclass :Sequencer
