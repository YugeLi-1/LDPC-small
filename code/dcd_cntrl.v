//------------------------
//�������Ŀ�����
//------------------------
module cntrl(
rst_n,
decode,
ok_n,
en,
clk,
clk1,
clk2,
clk3,
clk4,
clk5,
clk6,
s1,
s2,
we,
re,
waddr,
raddr,
number,
times);
//---------------
input rst_n;
input decode;
input ok_n;
input clk;
//--------------
output clk1;
output clk2;
output clk3;
output clk4;
output clk5;
output clk6;
output s1;
output s2;
output we;
output re;
output en;
output[4:0] number;
output[4:0] times;
output[4:0] waddr;
output[4:0] raddr;
//----------------------
reg clk1;
reg clk2;
reg clk3;
reg clk4;
reg clk5;
reg clk6;
reg s1;
reg s2;
reg we;
reg re;
reg en;
reg[4:0] times;
reg[4:0] number;
reg[4:0] waddr;
reg[4:0] raddr;
//----------------------
reg[3:0] sign; 
reg[1:0] state;
reg[4:0] counter;
parameter Wait = 2'b01,Work = 2'b10,Load = 2'b00,Judge = 2'b11;
parameter Max1 = 5'b10100,addr = 5'b10100;
//---------------------------------------
always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)           
        begin
        	  clk1 <= 1'b0;
        	  clk2 <= 1'b0;
        	  clk3 <= 1'b0;
        	  clk4 <= 1'b0;
        	  clk5 <= 1'b0;
        	  clk6 <= 1'b0;
        	  s1 <= 1'b0;
        	  s2 <= 1'b1;       //�ر�ע��
        	  we <= 1'b0;
        	  re <= 1'b0;
        	  en <= 1'b0;
        	  number <= 5'b00000;
        	  counter <= 4'b0000;
        	  //times <= 5'b00000;
        	  waddr <= 5'b00000;
        	  raddr <= 5'b00000;
        	  state <= Wait;
        	  $display("initial is successful!");
        end
    else
        case(state)
            Wait: begin
            	        if(decode == 1'b1)               //��ʼ�����־λ
            	            begin
            	      	        state <= Load;
            	      	        sign <= 4'b0000;
            	      	        $display("Loading!!!!");
            	            end
            	        else  
            	            begin
            	            	  state <= Wait;
            	            	  sign <= 4'b0000;
            	            	  $display("Waiting!!!!!");
            	            end
                  end
            Work: begin
            	        raddr = times;         //��һ��������
            	    #1  re <= 1'b1;
            	    #1  re <= 1'b0;
            	    #2  clk1 <= 1'b1;
            	    #1  clk1 <= 1'b0; 
            	        $display("the data expanded is successful");    
            	        clk2 <= 1'b1;               //�ڶ���������  
                  #1  clk2 <= 1'b0;
            	        $display("the data add is successful");
            	        clk3 <= 1'b1;           //������������
            	    #1  clk3 <= 1'b0; 
            	        $display("find the smallest data and the subtract it");
            	    //#1  s1 <= 1'b1;//��һ������ѡ����
            	        //$display("the first data selector");
            	        waddr = times; //ע�⸳ֵ
                      we <= 1'b1;//RAMд����             
            	    #1  we <= 1'b0; 
            	        raddr = times;
                      re <= 1'b1;//RAM������
            	    #1  re <= 1'b0; 
            	        if(times == 5'b10100)
            	            begin
            	                times = 5'b00000;
            	                state <= Judge;        	   
            	            end
            	        else    times = times + 1;
            	        
            	        //$display("the second data selector");
            	        clk4 <= 1'b1;//���ĸ�������
            	    #1  clk4 <= 1'b0; 
            	        $display("the data compressed is successful");
            	    end
            Judge:begin
            	        clk5 <= 1'b1;
            	    #1  clk5 <= 1'B0; 
            	        if(!ok_n)               //������ȷ
            	            begin
            	            	  state <= Wait;
            	            	  en <= 0;
            	            	  $display("the numbers are not wrong!!!");
            	            end
            	        else 
            	            if(counter == Max1)  //����������
            	                begin
            	            	      state <= Wait;
            	            	      en <= 0;
            	            	      $display("i can't solve them ......");
            	                end
            	            else
            	                begin
            	                	  state <= Work;
            	                    en <= 1;
            	                    
            	                    clk6 <= 1'b1;//��������ǰһ���������Ժ�˵����
            	                #1  clk6 <= 1'b0;
            	                    counter <= counter + 4'b0001;
            	                    $display("counter is %d",counter);
            	                end
            	    end
            Load: begin
            	        if(number == addr)
            	            begin
            	                clk5 <= 1'b1;
            	            #1  clk5 <= 1'b0;
            	                state <= Judge;
            	                clk4 <= 1'b1;
            	            #1  clk4 <= 1'b0;
            	                s1 <= 1'b1;
            	                s2 <= 1'b0; //�ڶ�������ѡ����
            	                times = 5'b00000;
            	                //sign <= 4'b1001;
            	                $display("Loading is successful!!!!");
            	            end
            	        else 
            	            begin
            	                clk4 <= 1'b1;
            	                waddr <= number;
            	                we <= 1'b1;
            	           	#2  clk4 <= 1'b0;
            	           	    we <= 1'b0;
            	           	    number <= number + 1;
            	                state <= Load;
            	                //$display("the number is %d",number);
            	            end
            	    end
            default:  state <= Wait;
        endcase
end						  
endmodule