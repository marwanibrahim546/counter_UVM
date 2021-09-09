class counter_transaction extends uvm_sequence_item;
	rand bit clk_in ;
	rand bit nrst_in ; 
	rand bit en_ctrl_in ; 
	rand bit set_ctrl_in ; 
	rand bit up_ctrl_in ; 
	rand bit [7:0]counter_in ;
	
	bit [7:0]counter_out ; 
	bit ovf_out ;
	
	function new(string name = "counter_transaction");
		super.new(name);
	endfunction: new 

endclass: counter_transaction 


class counter_sequence extends uvm_sequence#(counter_transaction);
	`uvm_object_utils(counter_sequence)

	function new(string name = "counter_sequence");
		super.new(name);
	endfunction: new

	task body();
		counter_sequence c_tx;
		
		repeat(15) begin
		c_tx = counter_sequence::type_id::create(.name("c_tx"), .contxt(get_full_name()));

		start_item(c_tx);
		assert(c_tx.randomize());
		finish_item(c_tx);
		end
	endtask: body
endclass: counter_sequence
