package counter_pkg;
	import uvm_pkg::*;

	`include "uvm_macros.sv"
	
	`include "counter_sequence.svh"
	`include "uvm_sequence_item.svh"
	
	`include "counter_monitor.sv"
	`include "counter_driver.sv" 
	`include "counter_agent.sv"      
	`include "counter_scoreboard.sv"      
	`include "counter_config.sv"   
	`include "counter_env.sv"      
	`include "counter_test.sv"
	
endpackage: simpleadder_pkg 


