`ifndef class_extern_svi 
`define class_extern_svi   

class item extends uvm_sequence_item ; 	
	`uvm_sequence_utils(item)
	
// rand bit clk_in ;
// rand bit nrst_in ; 
rand bit en_ctrl_in ; 
rand bit set_ctrl_in ; 
rand bit up_ctrl_in ; 
rand bit [7:0]counter_in ;

bit [7:0]counter_out ; 
bit ovf_out ;




endclass 	

`endif











