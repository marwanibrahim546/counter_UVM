module counter (

input clk_in ,
input nrst_in ,
input en_ctrl_in ,
input set_ctrl_in ,
input up_ctrl_in ,
input  [7:0]counter_in ,

output reg [7:0] counter_out,
output reg ovf_out 

);

reg [7:0] d ; 

always@(posedge clk_in , negedge nrst_in )
begin

if(nrst_in)  
	if ( en_ctrl_in )   
		if(set_ctrl_in)   
			d = counter_in ;   
		else if(up_ctrl_in)
			begin
				d = d + 1 ; 
			end
		else if(!up_ctrl_in) 
			d = d - 1 ; 
	else
		d = d ;  	
else begin
	 
	d = 8'h00 ; 
	ovf_out = 0 ;  
	
end 

if (d==8'hff) 
	ovf_out = 1'b1 ; 
else 
	ovf_out = 0 ;


counter_out = d ; 

end
	
endmodule 
