//---------------------------------------
module dpram(
waddr,
raddr,
wdata,
rdata,
re,
we);
//----------------------
input[23:0] wdata;
input[4:0] waddr;
input[4:0] raddr;
input we,re;
//--------------------------------
output[23:0] rdata;
reg[23:0] r_mem[26:0];
reg[23:0] rdata;
always @(posedge we)
begin
	  if(we) 
	      begin
		        r_mem[waddr] = wdata;
		        $display("the %d of the wdata is %O_%O_%O_%O_%O_%O_%O_%O",waddr,
		        wdata[23:21],wdata[20:18],wdata[17:15],wdata[14:12],wdata[11:9],wdata[8:6],wdata[5:3],wdata[2:0]);
	      end
end
//---------------------------------
always@(posedge re)
begin 
	  if(re)
	      begin
            rdata = r_mem[raddr];
            $display("the %d of the rdata is %O_%O_%O_%O_%O_%O_%O_%O",raddr,
		        rdata[23:21],rdata[20:18],rdata[17:15],rdata[14:12],rdata[11:9],rdata[8:6],rdata[5:3],rdata[2:0]);
        end
end
endmodule