//-------------------
module middle_tb();
reg[4:0] i,k;
reg decode;
reg	rst_n;
reg clk;
wire clk1;
wire clk2;
wire clk3;
wire clk4;
wire clk5;
wire clk6;
wire s1;
wire s2;
wire we;
wire re;
wire[4:0] times;
wire[4:0] number;
wire[4:0] waddr;
wire[4:0] raddr;

reg[2:0] di[19:0];
reg[2:0] c2v20[19:0];
reg[2:0] c2v21[19:0];
reg[2:0] c2v22[19:0];

//------------------------------
wire en;
wire ok_n;

reg[2:0] vn0;
reg[2:0] vn1;
reg[2:0] vn2;
reg[2:0] vn3;
reg[2:0] vn4;
reg[2:0] vn5;
reg[2:0] vn6;
reg[2:0] vn7;
reg[2:0] vn8;
reg[2:0] vn9;
reg[2:0] vn10;
reg[2:0] vn11;
reg[2:0] vn12;
reg[2:0] vn13;
reg[2:0] vn14;
reg[2:0] vn15;
reg[2:0] vn16;
reg[2:0] vn17;
reg[2:0] vn18;
reg[2:0] vn19;

wire[2:0] c2v0_0;
wire[2:0] c2v0_1;
wire[2:0] c2v0_2;
wire[2:0] c2v0_3;
wire[2:0] c2v0_4;
wire[2:0] c2v0_5;

wire[2:0] c2v1_0;
wire[2:0] c2v1_1;
wire[2:0] c2v1_2;
wire[2:0] c2v1_3;
wire[2:0] c2v1_4;
wire[2:0] c2v1_5;

wire[2:0] c2v2_0;
wire[2:0] c2v2_1;
wire[2:0] c2v2_2;
wire[2:0] c2v2_3;
wire[2:0] c2v2_4;
wire[2:0] c2v2_5;

wire[2:0] c2v3_0;
wire[2:0] c2v3_1;
wire[2:0] c2v3_2;
wire[2:0] c2v3_3;
wire[2:0] c2v3_4;
wire[2:0] c2v3_5;

wire[2:0] c2v4_0;
wire[2:0] c2v4_1;
wire[2:0] c2v4_2;
wire[2:0] c2v4_3;
wire[2:0] c2v4_4;
wire[2:0] c2v4_5;

wire[2:0] c2v5_0;
wire[2:0] c2v5_1;
wire[2:0] c2v5_2;
wire[2:0] c2v5_3;
wire[2:0] c2v5_4;
wire[2:0] c2v5_5;

wire[2:0] c2v6_0;
wire[2:0] c2v6_1;
wire[2:0] c2v6_2;
wire[2:0] c2v6_3;
wire[2:0] c2v6_4;
wire[2:0] c2v6_5;

wire[2:0] c2v7_0;
wire[2:0] c2v7_1;
wire[2:0] c2v7_2;
wire[2:0] c2v7_3;
wire[2:0] c2v7_4;
wire[2:0] c2v7_5;
wire[2:0] c2v7_6;
wire[2:0] c2v7_7;

wire[2:0] c2v8_0;
wire[2:0] c2v8_1;
wire[2:0] c2v8_2;
wire[2:0] c2v8_3;
wire[2:0] c2v8_4;
wire[2:0] c2v8_5;

wire[2:0] c2v9_0;
wire[2:0] c2v9_1;
wire[2:0] c2v9_2;
wire[2:0] c2v9_3;

reg[2:0] vn[19:0];
wire[2:0] vnc;
//--------------------------------------
vntest u1 
(.c2v0(c2v20[k]),
.c2v1(c2v21[k]),
.c2v2(c2v22[k]),
.di(di[i]),
.clk(clk),
.clk1(clk1),
.clk2(clk2),
.clk3(clk3),
.clk4(clk4),
.s1(s1),
.s2(s2),
.en(en),
.rst_n(rst_n),
.waddr(waddr),
.we(we),
.re(re),
.raddr(raddr),
.vn(vnc));
//--------------------------------
v2c2v u2 	 
(.vn0(vn0),
.vn1(vn1),
.vn2(vn2),
.vn3(vn3),
.vn4(vn4),
.vn5(vn5),
.vn6(vn6),
.vn7(vn7),
.vn8(vn8),
.vn9(vn9),
.vn10(vn10),
.vn11(vn11),
.vn12(vn12),
.vn13(vn13),
.vn14(vn14),
.vn15(vn15),
.vn16(vn16),
.vn17(vn17),
.vn18(vn18),
.vn19(vn19),
		 
.c2v0_0(c2v0_0),
.c2v0_1(c2v0_1),
.c2v0_2(c2v0_2),
.c2v0_3(c2v0_3),
.c2v0_4(c2v0_4),
.c2v0_5(c2v0_5),

.c2v1_0(c2v1_0),
.c2v1_1(c2v1_1),
.c2v1_2(c2v1_2),
.c2v1_3(c2v1_3),
.c2v1_4(c2v1_4),
.c2v1_5(c2v1_5),
		 
.c2v2_0(c2v2_0),
.c2v2_1(c2v2_1),
.c2v2_2(c2v2_2),
.c2v2_3(c2v2_3),
.c2v2_4(c2v2_4),
.c2v2_5(c2v2_5),
		 
.c2v3_0(c2v3_0),
.c2v3_1(c2v3_1),
.c2v3_2(c2v3_2),
.c2v3_3(c2v3_3),
.c2v3_4(c2v3_4),
.c2v3_5(c2v3_5),
		 
.c2v4_0(c2v4_0),
.c2v4_1(c2v4_1),
.c2v4_2(c2v4_2),
.c2v4_3(c2v4_3),
.c2v4_4(c2v4_4),
.c2v4_5(c2v4_5),
		 
.c2v5_0(c2v5_0),
.c2v5_1(c2v5_1),
.c2v5_2(c2v5_2),
.c2v5_3(c2v5_3),
.c2v5_4(c2v5_4),
.c2v5_5(c2v5_5),
		 
.c2v6_0(c2v6_0),
.c2v6_1(c2v6_1),
.c2v6_2(c2v6_2),
.c2v6_3(c2v6_3),
.c2v6_4(c2v6_4),
.c2v6_5(c2v6_5),
		
.c2v7_0(c2v7_0),
.c2v7_1(c2v7_1),
.c2v7_2(c2v7_2),
.c2v7_3(c2v7_3),
.c2v7_4(c2v7_4),
.c2v7_5(c2v7_5),	
.c2v7_6(c2v7_6),
.c2v7_7(c2v7_7),
		 
.c2v8_0(c2v8_0),
.c2v8_1(c2v8_1),
.c2v8_2(c2v8_2),
.c2v8_3(c2v8_3),
.c2v8_4(c2v8_4),
.c2v8_5(c2v8_5),
		 
.c2v9_0(c2v9_0),
.c2v9_1(c2v9_1),
.c2v9_2(c2v9_2),
.c2v9_3(c2v9_3),

.ok_n(ok_n),
.clk5(clk5),
.clk6(clk6));
//----------------------------
cntrl u3
(.rst_n(rst_n),
.decode(decode),
.ok_n(ok_n),
.en(en),
.clk(clk),
.clk1(clk1),
.clk2(clk2),
.clk3(clk3),
.clk4(clk4),
.clk5(clk5),
.clk6(clk6),
.s1(s1),
.s2(s2),
.we(we),
.re(re),
.waddr(waddr),
.raddr(raddr),
.number(number),
.times(times));
//------------------------------------------------
task pulse;
input n;
integer j;
    for(j = 0;j < n;j = j + 1) 
        begin
            #1
            clk = ~ clk;
            #1
            clk = ~ clk;
        end
endtask
//-------------------------------------------
task Loading;
begin
	  di[0] = 3'd1;
	  di[1] = 3'd3;
	  di[2] = 3'd6;
	  di[3] = 3'd4;
	  di[4] = 3'd1;
	  di[5] = 3'd4;
	  di[6] = 3'd6;
	  di[7] = 3'd6;
	  di[8] = 3'd2;
	  di[9] = 3'd0;
	  di[10] = 3'd6;
	  di[11] = 3'd1;
	  di[12] = 3'd7;
	  di[13] = 3'd7;
	  di[14] = 3'd3;
	  di[15] = 3'd4;
	  di[16] = 3'd1;
	  di[16] = 3'd1;
	  di[17] = 3'd7;
	  di[18] = 3'd6;
	  di[19] = 3'd6;
end
endtask
//---------------------------------------
//always #1 pulse(3);
always #2 clk=~clk;
always @(posedge clk)
begin
	  if(clk)
	      begin
	          vn0 = vn[0];
	          vn1 = vn[1];
	          vn2 = vn[2];
	          vn3 = vn[3];
	          vn4 = vn[4];
	          vn5 = vn[5];
	          vn6 = vn[6];
	          vn7 = vn[7];
	          vn8 = vn[8];
	          vn9 = vn[9];
	          vn10 = vn[10];
	          vn11 = vn[11];
	          vn12 = vn[12];
	          vn13 = vn[13];
	          vn14 = vn[14];
	          vn15 = vn[15];
	          vn16 = vn[16];
	          vn17 = vn[17];
	          vn18 = vn[18];
	          vn19 = vn[19];
//---------------------------------------------------	   
            c2v20[0] = c2v0_0;  c2v21[0] = c2v5_0;  c2v22[0] = c2v9_0;
            c2v20[1] = c2v0_1;  c2v21[1] = c2v2_0;  c2v22[1] = c2v8_0;
            c2v20[2] = c2v3_0;  c2v21[2] = c2v6_0;  c2v22[2] = c2v9_1;
            c2v20[3] = c2v2_1;  c2v21[3] = c2v4_0;  c2v22[3] = c2v7_0;
            c2v20[4] = c2v1_0;  c2v21[4] = c2v5_1;  c2v22[4] = c2v9_2;
            c2v20[5] = c2v0_2;  c2v21[5] = c2v7_1;  c2v22[5] = c2v8_1;
            c2v20[6] = c2v1_1;  c2v21[6] = c2v3_1;  c2v22[6] = c2v6_1;
            c2v20[7] = c2v2_2;  c2v21[7] = c2v5_2;  c2v22[7] = c2v8_2;
            c2v20[8] = c2v1_2;  c2v21[8] = c2v3_2;  c2v22[8] = c2v7_2;
            c2v20[9] = c2v4_1;  c2v21[9] = c2v6_2;  c2v22[9] = c2v8_3;
            c2v20[10] = c2v0_3; c2v21[10] = c2v2_3; c2v22[10] = c2v8_4;
            c2v20[11] = c2v1_3; c2v21[11] = c2v4_2; c2v22[11] = c2v7_3;
            c2v20[12] = c2v0_4; c2v21[12] = c2v3_3; c2v22[12] = c2v7_4;
            c2v20[13] = c2v0_5; c2v21[13] = c2v1_4; c2v22[13] = c2v5_3;
            c2v20[14] = c2v1_5; c2v21[14] = c2v2_4; c2v22[14] = c2v4_3;
            c2v20[15] = c2v2_5; c2v21[15] = c2v3_4; c2v22[15] = c2v7_5;
            c2v20[16] = c2v3_5; c2v21[16] = c2v4_4; c2v22[16] = c2v6_3;
            c2v20[17] = c2v4_5; c2v21[17] = c2v5_4; c2v22[17] = c2v7_6;
            c2v20[18] = c2v5_5; c2v21[18] = c2v6_4; c2v22[18] = c2v9_3;
            c2v20[19] = c2v6_5; c2v21[19] = c2v7_7; c2v22[19] = c2v8_5;
        end
end
//---------------------------------------------------------------
initial begin 
	  clk = 1'b0;
    rst_n = 1'b0;
    decode = 1'b0;
    Loading;
    i <= 1'b0;
    k <= 1'b0;
#5 
    rst_n = 1'b1;
#2  
    decode = 1'b1;  
end
//---------------
always @(posedge clk)
begin 
	  i = number;
#1
	  vn[i] = vnc;
	  //$display("the %d di is %d....",i,di[i]);
    $display("the %d vn is %d....",number,vn[i]);
end
//------------------------
always @(posedge clk)
begin 
	  k = times;
#1
	  vn[k - 1] = vnc;
	  $display("the %d - 1 v2c is %d....",k,vn[k - 1]);
end
endmodule