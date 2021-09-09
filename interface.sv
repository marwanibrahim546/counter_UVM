interface counter_if ;    

bit clk_in ;
bit nrst_in ; 
bit en_ctrl_in ; 
bit set_ctrl_in ; 
bit up_ctrl_in ;
bit [7:0]counter_in ;

bit [7:0]counter_out ; 
bit ovf_out ; 

initial   
begin 
	#10 nrst_in = 1 ; 
	forever #10 clk_in = ~clk_in ; 
end   
/*         // uvm will do it 
task assign_transaction(transaction transaction_h ); 
	en_ctrl_in  = transaction_h.en_ctrl_in  ;
	set_ctrl_in = transaction_h.set_ctrl_in ;
	up_ctrl_in  = transaction_h.up_ctrl_in  ;
	counter_in  = transaction_h.counter_in  ;
endtask 
*/ 
endinterface 