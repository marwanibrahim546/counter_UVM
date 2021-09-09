class counter_env extends uvm_env ;
	`uvm_component_utils(counter_env) ;
// 
// here we will declare our objects for example .... the scoreboard and agent  
// 
counter_agent c_agent ; 
counter_scoreboard c_sb ;     

function new(string name="counter_env",uvm_component parent = null );
	super.new(name,parent) ;   
endfunction   

///////////////////////////////////////////////////////////////////////
function void build_phase(uvm_phase phase); 
	super.build_phase(phase) ;
	
	c_agent		= counter_agent::type_id::create(.name("c_agent"), .parent(this));
	c_sb		= counter_scoreboard::type_id::create(.name("c_sb"), .parent(this));

endfunction
///////////////////////////////////////////////////////////////////////
function void connect_phase(uvm_phase phase);
	super.connect_phase(phase);

	c_agent.agent_ap_before.connect(c_sb.sb_export_before);
	c_agent.agent_ap_after.connect(c_sb.sb_export_after);	

endfunction 

endclass: counter_env  