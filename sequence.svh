class gen_item_seq extends uvm_sequence;

 `uvm_object_utils(gen_item_seq) 
	function new(string name="gen_item_seq"); 
		super.new(name); 
	endfunction 
	
	rand int num; // Config total number of items to be sent 

 
	virtual task body();
		for (int i = 0; i < num; i ++) begin
		Item m_item = Item::type_id::create("m_item");
		start_item(m_item);
		m_item.randomize(); 
		`uvm_info("SEQ",$sformat("Done generation of %0d items",num),UVM_LOW)
	endtask

endclass  


