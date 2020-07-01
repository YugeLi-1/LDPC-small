//------------------------------------------
//Filename : vn.v
//Author   : liyuge   
//Function : 变量结点的流水线
//Date     : 2020-3-29
//Edit     : 1.0 
//------------------------------------------
module vntest(
c2v0,
c2v1,
c2v2,
di,
clk,
clk1,
clk2,
clk3,
clk4,
s1,
s2,
en,
rst_n,
waddr,
we,
re,
raddr,
vn);
//---------------------------------
input[2:0] c2v0;
input[2:0] c2v1;
input[2:0] c2v2;
input[2:0] di;
input[4:0] waddr;
input[4:0] raddr;
input clk;
input clk1;
input clk2;
input clk3;
input clk4;
input s1;
input s2;
input we;
input re;
input en;
input rst_n;
//-------------------------------------
output[2:0] vn;
//--------------------------------
//LLR表的d2l的转换
//-------------------------------------
function[0:23] d2l;
input[2:0] di;
    case(di)
        3'b000 : d2l = 24'O0_1_1_2_1_2_2_3;
        3'b001 : d2l = 24'O1_0_2_1_2_1_3_2;
        3'b010 : d2l = 24'O1_2_0_1_2_3_1_2;
        3'b011 : d2l = 24'O2_1_1_0_3_2_2_1;
        3'b100 : d2l = 24'O1_2_2_3_0_1_1_2;
        3'b101 : d2l = 24'O2_1_3_2_1_0_2_1;
        3'b110 : d2l = 24'O2_3_1_2_1_2_0_1;
        3'b111 : d2l = 24'O3_2_2_1_2_1_1_0;
    endcase
endfunction
//-------------------------------------------
//LRR表的c2v2l的转换
//-------------------------------------------
function[0:23] c2v2l;
input[2:0] c2v;
    case(c2v)
        3'b000 : c2v2l = 24'O0_1_1_1_1_1_1_1;
        3'b001 : c2v2l = 24'O1_0_1_1_1_1_1_1;
        3'b010 : c2v2l = 24'O1_1_0_1_1_1_1_1;
        3'b011 : c2v2l = 24'O1_1_1_0_1_1_1_1;
        3'b100 : c2v2l = 24'O1_1_1_1_0_1_1_1;
        3'b101 : c2v2l = 24'O1_1_1_1_1_0_1_1;
        3'b110 : c2v2l = 24'O1_1_1_1_1_1_0_1;
        3'b111 : c2v2l = 24'O1_1_1_1_1_1_1_0;
    endcase
endfunction
//-------------------------------------------------
//指数扩展运算
//-------------------------------------------------
function[7:0] lr_p;     
input[2:0] lp;
    case(lp)
        3'b000 : lr_p = 8'b00000000;
        3'b001 : lr_p = 8'b00000001;
        3'b010 : lr_p = 8'b00000010;
        3'b011 : lr_p = 8'b00000100;
        3'b100 : lr_p = 8'b00001000;
        3'b101 : lr_p = 8'b00010000;
        3'b110 : lr_p = 8'b00100000;
        3'b111 : lr_p = 8'b01000000;
    endcase
endfunction
//---------------------------------------------
//加法运算
//---------------------------------------------
function[0:63] add;
input[0:23] c2v0lr;
input[0:23] c2v1lr;
input[0:23] c2v2lr;
input[0:23] lrexp;
reg[2:0] a0,a1,a2,a3,a4,a5,a6,a7;
reg[2:0] b0,b1,b2,b3,b4,b5,b6,b7;
reg[2:0] c0,c1,c2,c3,c4,c5,c6,c7;
reg[2:0] d0,d1,d2,d3,d4,d5,d6,d7;
reg[2:0] l0,l1,l2,l3,l4,l5,l6,l7;
reg[0:7] e0,e1,e2,e3,e4,e5,e6,e7;
begin
    a0 = c2v0lr[0:2];
    a1 = c2v0lr[3:5];
    a2 = c2v0lr[6:8];
    a3 = c2v0lr[9:11];
    a4 = c2v0lr[12:14];
    a5 = c2v0lr[15:17];
    a6 = c2v0lr[18:20];
    a7 = c2v0lr[21:23];
//----------------------------------------
    b0 = c2v1lr[0:2];
    b1 = c2v1lr[3:5];
    b2 = c2v1lr[6:8];
    b3 = c2v1lr[9:11];
    b4 = c2v1lr[12:14];
    b5 = c2v1lr[15:17];
    b6 = c2v1lr[18:20];
    b7 = c2v1lr[21:23];
//-----------------------------------------
    c0 = c2v2lr[0:2];
    c1 = c2v2lr[3:5];
    c2 = c2v2lr[6:8];
    c3 = c2v2lr[9:11];
    c4 = c2v2lr[12:14];
    c5 = c2v2lr[15:17];
    c6 = c2v2lr[18:20];
    c7 = c2v2lr[21:23];
//-----------------------------------------
    l0 = lrexp[0:2];
    l1 = lrexp[3:5];
    l2 = lrexp[6:8];
    l3 = lrexp[9:11];
    l4 = lrexp[12:14];
    l5 = lrexp[15:17];
    l6 = lrexp[18:20];
    l7 = lrexp[21:23];
//----------------------------------------
    d0 = lr_p(l0);
    d1 = lr_p(l1);
    d2 = lr_p(l2);
    d3 = lr_p(l3);
    d4 = lr_p(l4);
    d5 = lr_p(l5);
    d6 = lr_p(l6);
    d7 = lr_p(l7);
//---------------------------------------------
    e0 = d0 + a0 + b0 + c0;
    e1 = d1 + a1 + b1 + c1;
    e2 = d2 + a2 + b2 + c2;
    e3 = d3 + a3 + b3 + c3;
    e4 = d4 + a4 + b4 + c4;
    e5 = d5 + a5 + b5 + c5;
    e6 = d6 + a6 + b6 + c6;
    e7 = d7 + a7 + b7 + c7;
//--------------------------------------------
    add = {e0,e1,e2,e3,e4,e5,e6,e7};
end
endfunction
//----------------------------------------
//这个函数是取两个数的最小值
//----------------------------------------
function[7:0] get_min;
input[7:0] a,b;
    if(a <= b)
        get_min = a;
    else
        get_min = b;
endfunction
//----------------------------------------
//一组的8个数取最小值
//----------------------------------------
function[7:0] get_min8;     
input[7:0] a1,a2,a3,a4,a5,a6,a7,a8;
reg[7:0] b1,b2,b3,b4,b5,b6;
begin
	  b1 = get_min(a1,a2);
	  b2 = get_min(a3,a4);
	  b3 = get_min(a5,a6);
	  b4 = get_min(a7,a8);
	  b5 = get_min(b1,b2);
	  b6 = get_min(b3,b4);
	  get_min8 = get_min(b5,b6);
end
endfunction
//--------------------------------
//数据压缩规格
//--------------------------------
function[2:0] dp_l;
input[7:0] dp;
begin
	  if(dp == 8'd0)
	      dp_l = 3'b000;
	  else if(dp <= 8'd2)
	      dp_l = 3'b001;
	  else if(dp <= 8'd5)
	      dp_l = 3'b010;
	  else if(dp <= 8'd10)
	      dp_l = 3'b011;
	  else if(dp <= 8'd20)
	      dp_l = 3'b100;
	  else if(dp <= 8'd50)
	      dp_l = 3'b101;
	  else 
	      dp_l = 3'b110;
end
endfunction
//---------------------------
//取最小值并减去
//---------------------------
function[0:63] sub;
input[0:63] add;
reg[7:0] a0,a1,a2,a3,a4,a5,a6,a7;
reg[7:0] f0,f1,f2,f3,f4,f5,f6,f7;
reg[7:0] emin;
reg[2:0] g0,g1,g2,g3,g4,g5,g6,g7;
begin
//----------------------------------------    
    a0 = add[0:7];
    a1 = add[8:15];
    a2 = add[16:23];
    a3 = add[24:31];
    a4 = add[32:39];
    a5 = add[40:47];
    a6 = add[48:55];
    a7 = add[56:63];
//---------------------------------------------    
    emin = get_min8(a0,a1,a2,a3,a4,a5,a6,a7);
    f0 = a0 - emin;
    f1 = a1 - emin;
    f2 = a2 - emin;
    f3 = a3 - emin;
    f4 = a4 - emin;
    f5 = a5 - emin; 
    f6 = a6 - emin;
    f7 = a7 - emin;
//---------------------------------------------- 
    sub = {f0,f1,f2,f3,f4,f5,f6,f7}; 
end
endfunction
//---------------------------------------------
//数据压缩
//---------------------------------------------
function[0:23] d2p;
input[0:63] sub;
reg[7:0] a0,a1,a2,a3,a4,a5,a6,a7;
reg[2:0] g0,g1,g2,g3,g4,g5,g6,g7;
begin
	  a0 = sub[0:7];
	  a1 = sub[8:15];
	  a2 = sub[16:23];
	  a3 = sub[24:31];
	  a4 = sub[32:39];
	  a5 = sub[40:47];
	  a6 = sub[48:55];
	  a7 = sub[56:63];
//------------------------------------------
    g0 = dp_l(a0); 
    g1 = dp_l(a1);
    g2 = dp_l(a2);
    g3 = dp_l(a3);
    g4 = dp_l(a4);
    g5 = dp_l(a5);
    g6 = dp_l(a6); 
    g7 = dp_l(a7);
//-----------------------------------------   
    d2p = {g0,g1,g2,g3,g4,g5,g6,g7};
end
endfunction
//----------------------------------------
function[2:0] cam; 
input[0:23] lr;
begin      
    if(lr[0:2] == 3'b000)
      cam = 3'b000;
    else if(lr[3:5] == 3'b000)
      cam = 3'b001;
    else if(lr[6:8] == 3'b000)
      cam = 3'b010;
    else if(lr[9:11] == 3'b000)
      cam = 3'b011;
    else if(lr[12:14] == 3'b000)
      cam = 3'b100;
    else if(lr[15:17] == 3'b000)
      cam = 3'b101;
    else if(lr[18:20] == 3'b000)
      cam = 3'b110;
    else
      cam = 3'b111;
end      
endfunction
//--------------------------------------
wire[23:0] rdata;
reg[23:0] wdata;
reg[2:0] vn,n7;
reg[0:23] lr,lrexp;
reg[0:23] n0,n1,n2;
reg[0:63] add1,n3,sub1,n4;
reg[0:23] m0,m1,m2,m3,n5,n6;
//----------------------------------------
dpram u1
(.waddr(waddr),
.raddr(raddr),
.wdata(wdata),
.rdata(rdata),
.re(re),
.we(we));
//-----------------------------------------
always @(c2v0)
begin
    n0 <= c2v2l(c2v0);
    $display("the c2v0 is %d !!!!",c2v0);
end
//--------------------------------------
always @(c2v1)
begin
    n1 <= c2v2l(c2v1);
    $display("the c2v1 is %d !!!!",c2v1);
end
//--------------------------------------
always @(c2v2)
begin
    n2 <= c2v2l(c2v2);
    $display("the c2v2 is %d !!!!",c2v2);
end
//--------------------------------------
always @(posedge clk1)
begin
    if(clk1)
        begin
        	  m0 = n0;
        	  m1 = n1;
        	  m2 = n2;
        	  m3 = lrexp;
        	  //$display("the n0  is %O_%O_%O_%O_%O_%O_%O_%O",n0[0:2],n0[3:5],n0[6:8],n0[9:11],n0[12:14],n0[15:17],n0[18:20],n0[21:23]);
        	  //$display("the n1  is %O_%O_%O_%O_%O_%O_%O_%O",n1[0:2],n1[3:5],n1[6:8],n1[9:11],n1[12:14],n1[15:17],n1[18:20],n1[21:23]);
        	  //$display("the n2  is %O_%O_%O_%O_%O_%O_%O_%O",n2[0:2],n2[3:5],n2[6:8],n2[9:11],n2[12:14],n2[15:17],n2[18:20],n2[21:23]);
        	  //$display("the lrexp is %O_%O_%O_%O_%O_%O_%O_%O",lrexp[0:2],lrexp[3:5],lrexp[6:8],lrexp[9:11],lrexp[12:14],lrexp[15:17],lrexp[18:20],lrexp[21:23]);
        	  $display("the c2v0  is %O_%O_%O_%O_%O_%O_%O_%O",m0[0:2],m0[3:5],m0[6:8],m0[9:11],m0[12:14],m0[15:17],m0[18:20],m0[21:23]);
        	  $display("the c2v1  is %O_%O_%O_%O_%O_%O_%O_%O",m1[0:2],m1[3:5],m1[6:8],m1[9:11],m1[12:14],m1[15:17],m1[18:20],m1[21:23]);
        	  $display("the c2v2  is %O_%O_%O_%O_%O_%O_%O_%O",m2[0:2],m2[3:5],m2[6:8],m2[9:11],m2[12:14],m2[15:17],m2[18:20],m2[21:23]);
        	  $display("the lrexp is %O_%O_%O_%O_%O_%O_%O_%O",m3[0:2],m3[3:5],m3[6:8],m3[9:11],m3[12:14],m3[15:17],m3[18:20],m3[21:23]);
        end
end
//-------------------------------------
always @(m0 or m1 or m2 or m3)
begin
	  add1 <= add(m0,m1,m2,m3);
end
//------------------------------------
always @(posedge clk2)
    if(clk2)
        begin
        	  n3 = add1;
        	  $display("the add is %O_%O_%O_%O_%O_%O_%O_%O",n3[0:7],n3[8:15],n3[16:23],n3[24:31],n3[32:39],n3[40:47],n3[48:55],n3[56:63]);
        end
//-------------------------------------
always @(n3)
begin
	  sub1 = sub(n3);
end
//--------------------------------------
always @(posedge clk3)
    if(clk3)
        begin
        	  n4 = sub1;
        	  $display("the sub is %O_%O_%O_%O_%O_%O_%O_%O",n4[0:7],n4[8:15],n4[16:23],n4[24:31],n4[32:39],n4[40:47],n4[48:55],n4[56:63]);
        end
//------------------------------------- 
always @(n4)
begin
	  n5 <= d2p(n4);
end
//-------------------------------------- 
always @(di or n5)
begin
	  if(s1 == 1'b0)
	      begin
	          lr = d2l(di);
	          $display("Loading di!!!!");
	      end
    else if(en == 1'b1)
        lr = n5;
end
//-----------------------------------------
always @(lr)
begin
	  wdata = lr;
end
//------------------------------------------
always @(re)
begin
	  if(re == 1'b0)                          //???????
	      begin
	          lrexp = rdata;
	      end
end
//-----------------------------------------
always @(lr or lrexp)
begin
	  if(s2 == 1'b0)
	      begin
	          n6 = lrexp;
	          $display("the n6 is %O_%O_%O_%O_%O_%O_%O_%O",n6[0:2],n6[3:5],n6[6:8],n6[9:11],n6[12:14],n6[15:17],n6[18:20],n6[21:23]);
	      end
    else 
        begin
            n6 = lr;
            //$display("Loading lr!!!!");
        end
end
//---------------------------------------
always @(n6)
begin
    n7 = cam(n6);
end
//---------------------------------------
always @(posedge clk4)
    if(clk4)
        begin
        	  vn = n7;
        	  $display("the vn is %d",vn);
        end
endmodule