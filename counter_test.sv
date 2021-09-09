class counter_test extends uvm_component  ; 
	
	`uvm_component_utils(counter_test) ;     

////////////////////////////////////////////////////////
function new(string name , uvm_component parent) 
	super.new(name,parent) ; 
endfunction 

counter_env env; 

////////////////////////////////////////////

function build_phase(uvm_phase phase)

	super.run_phase(phase) ; // in some classes we put it and in anothers we don't 
	env = counter_env::type_id::create( .name("env"), .parent(this)) ;
 
endfunction 

//////////////////////////////////////////
task run_phase(uvm_phase phase)
	
	phase.raise_objection(this) ; 
	
	
	
	
	
	
	phase.drop_objection(this) ; 
	
endtask 




endclass
