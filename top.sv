module tob ;

/*interface */ 
counter_if count_if() ; 

counter counter_DUT(count_if.clk_in ,
					count_if.nrst_in ,
					count_if.en_ctrl_in ,
					count_if.set_ctrl_in ,
					count_if.up_ctrl_in ,
					count_if.counter_in ,
					count_if.counter_out ,
					count_if.ovf_out
					)

//Variable initialization
initial begin
	count_if.clk_in <= 1'b1;
end

endmodule 