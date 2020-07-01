module fsm(clock,reset,a,f,g);
input clock,reset,a;
output f,g;
reg f,g;
reg[1:0] state;

parameter Idle = 2'00,Start = 2'b01,Stop = 2'b10;Clear = 2'b11;
always @(posedge clock)
    if(!reset)
        begin
        	  state <= Idle ;
        	  f <= 0;
        	  g <= 0;
        end
    else
        case(state)
            idle:  begin
            	         if(a) begin
            	  	          state <= Start;
            	  	          g <= 0;
            	         end
            start: if(!a)   state <= Stop;
                   else     state <= Start;
            stop:  begin
                       if(a) begin
                       	   state <=Clear;
                       	   f <= 1;
                       end
                       else state <= Stop;
                   end
            clear: begin 
            	         if(!a) begin
            	             state <= Idle;
            	             f <= 0;
            	             g <= 1;
            	         end
            	         else state <= Clear;
            	     end
        endcase
endmodule
            
            	     
            	     
            	