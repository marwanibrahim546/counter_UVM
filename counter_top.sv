module counter_tob ; 

import counter_pkg         // can i import this package only as i imported uvm_pkg on it before ??? 
import uvm_pkg::* 

/*interface */ 
counter_if count_if() ;  // interface like module should have >>  ()  << when declare it     

//Variable initialization
initial begin
	count_if.clk_in <= 1'b1;
end

counter counter_DUT(count_if.clk_in ,
					count_if.nrst_in ,
					count_if.en_ctrl_in ,
					count_if.set_ctrl_in ,
					count_if.up_ctrl_in ,
					count_if.counter_in ,
					count_if.counter_out ,
					count_if.ovf_out
					)
					
					
initial 
begin 
uvm_resource_db#(virtual counter_if)::set(.scope("ifs"), .name("counter_if"), .val(count_if));

run_test("counter_test");    
end 					

endmodule 
