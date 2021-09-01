class counter_env extends uvm_env ;
	`uvm_component_utils(env) ;

//
// here we will declare our objects for example .... the scoreboard and agent  
//

function new(string name="counter_env",uvm_component parent = null );
	super.new(name,parent) ;   
endfunction   

///////////////////////////////////////////////////////////////////////
function void build_phase(uvm_phase phase); 
	
	super.run_phase(phase) ;
	
	
endfunction
///////////////////////////////////////////////////////////////////////
function void connect_phase(uvm_phase phase);
	//
	//	
	//
endfunction 

endclass
