//-----------------------------------
//校验节点与变量节点的连接关系
//-----------------------------------
module v2c2v(
vn0,
vn1,
vn2,
vn3,
vn4,
vn5,
vn6,
vn7,
vn8,
vn9,
vn10,
vn11,
vn12,
vn13,
vn14,
vn15,
vn16,
vn17,
vn18,
vn19,	
//----------
c2v0_0,
c2v0_1,
c2v0_2,
c2v0_3,
c2v0_4,
c2v0_5,
//---------
c2v1_0,
c2v1_1,
c2v1_2,
c2v1_3,
c2v1_4,
c2v1_5,
//---------
c2v2_0,
c2v2_1,
c2v2_2,
c2v2_3,
c2v2_4,
c2v2_5,
//------------
c2v3_0,
c2v3_1,
c2v3_2,
c2v3_3,
c2v3_4,
c2v3_5,
//----------
c2v4_0,
c2v4_1,
c2v4_2,
c2v4_3,
c2v4_4,
c2v4_5,
//----------
c2v5_0,
c2v5_1,
c2v5_2,
c2v5_3,
c2v5_4,
c2v5_5,
c2v6_0,
c2v6_1,
c2v6_2,
c2v6_3,
c2v6_4,
c2v6_5,
//-----------
c2v7_0,
c2v7_1,
c2v7_2,
c2v7_3,
c2v7_4,
c2v7_5,
c2v7_6,
c2v7_7,
//----------
c2v8_0,
c2v8_1,
c2v8_2,
c2v8_3,
c2v8_4,
c2v8_5,
//------------------
c2v9_0,
c2v9_1,
c2v9_2,
c2v9_3,
//----------------
ok_n,
clk5,
clk6);
//------------------
input[2:0] vn0;
input[2:0] vn1;
input[2:0] vn2;
input[2:0] vn3;
input[2:0] vn4;
input[2:0] vn5;
input[2:0] vn6;
input[2:0] vn7;
input[2:0] vn8;
input[2:0] vn9;
input[2:0] vn10;
input[2:0] vn11;
input[2:0] vn12;
input[2:0] vn13;
input[2:0] vn14;
input[2:0] vn15;
input[2:0] vn16;
input[2:0] vn17;
input[2:0] vn18;
input[2:0] vn19;
//-----------------
input clk5;
input clk6;
//-----------------
output[2:0] c2v0_0;
output[2:0] c2v0_1;
output[2:0] c2v0_2;
output[2:0] c2v0_3;
output[2:0] c2v0_4;
output[2:0] c2v0_5;

output[2:0] c2v1_0;
output[2:0] c2v1_1;
output[2:0] c2v1_2;
output[2:0] c2v1_3;
output[2:0] c2v1_4;
output[2:0] c2v1_5;

output[2:0] c2v2_0;
output[2:0] c2v2_1;
output[2:0] c2v2_2;
output[2:0] c2v2_3;
output[2:0] c2v2_4;
output[2:0] c2v2_5;

output[2:0] c2v3_0;
output[2:0] c2v3_1;
output[2:0] c2v3_2;
output[2:0] c2v3_3;
output[2:0] c2v3_4;
output[2:0] c2v3_5;

output[2:0] c2v4_0;
output[2:0] c2v4_1;
output[2:0] c2v4_2;
output[2:0] c2v4_3;
output[2:0] c2v4_4;
output[2:0] c2v4_5;

output[2:0] c2v5_0;
output[2:0] c2v5_1;
output[2:0] c2v5_2;
output[2:0] c2v5_3;
output[2:0] c2v5_4;
output[2:0] c2v5_5;

output[2:0] c2v6_0;
output[2:0] c2v6_1;
output[2:0] c2v6_2;
output[2:0] c2v6_3;
output[2:0] c2v6_4;
output[2:0] c2v6_5;

output[2:0] c2v7_0;
output[2:0] c2v7_1;
output[2:0] c2v7_2;
output[2:0] c2v7_3;
output[2:0] c2v7_4;
output[2:0] c2v7_5;
output[2:0] c2v7_6;
output[2:0] c2v7_7;

output[2:0] c2v8_0;
output[2:0] c2v8_1;
output[2:0] c2v8_2;
output[2:0] c2v8_3;
output[2:0] c2v8_4;
output[2:0] c2v8_5;

output[2:0] c2v9_0;
output[2:0] c2v9_1;
output[2:0] c2v9_2;
output[2:0] c2v9_3;
//-------------------
output ok_n;
//-------------------
reg[2:0] c2v0_0;
reg[2:0] c2v0_1;
reg[2:0] c2v0_2;
reg[2:0] c2v0_3;
reg[2:0] c2v0_4;
reg[2:0] c2v0_5;

reg[2:0] c2v1_0;
reg[2:0] c2v1_1;
reg[2:0] c2v1_2;
reg[2:0] c2v1_3;
reg[2:0] c2v1_4;
reg[2:0] c2v1_5;

reg[2:0] c2v2_0;
reg[2:0] c2v2_1;
reg[2:0] c2v2_2;
reg[2:0] c2v2_3;
reg[2:0] c2v2_4;
reg[2:0] c2v2_5;

reg[2:0] c2v3_0;
reg[2:0] c2v3_1;
reg[2:0] c2v3_2;
reg[2:0] c2v3_3;
reg[2:0] c2v3_4;
reg[2:0] c2v3_5;

reg[2:0] c2v4_0;
reg[2:0] c2v4_1;
reg[2:0] c2v4_2;
reg[2:0] c2v4_3;
reg[2:0] c2v4_4;
reg[2:0] c2v4_5;

reg[2:0] c2v5_0;
reg[2:0] c2v5_1;
reg[2:0] c2v5_2;
reg[2:0] c2v5_3;
reg[2:0] c2v5_4;
reg[2:0] c2v5_5;

reg[2:0] c2v6_0;
reg[2:0] c2v6_1;
reg[2:0] c2v6_2;
reg[2:0] c2v6_3;
reg[2:0] c2v6_4;
reg[2:0] c2v6_5;

reg[2:0] c2v7_0;
reg[2:0] c2v7_1;
reg[2:0] c2v7_2;
reg[2:0] c2v7_3;
reg[2:0] c2v7_4;
reg[2:0] c2v7_5;
reg[2:0] c2v7_6;
reg[2:0] c2v7_7;

reg[2:0] c2v8_0;
reg[2:0] c2v8_1;
reg[2:0] c2v8_2;
reg[2:0] c2v8_3;
reg[2:0] c2v8_4;
reg[2:0] c2v8_5;

reg[2:0] c2v9_0;
reg[2:0] c2v9_1;
reg[2:0] c2v9_2;
reg[2:0] c2v9_3;
//-----------------
wire[2:0] v2c0;
wire[2:0] v2c1;
wire[2:0] v2c2;
wire[2:0] v2c3;
wire[2:0] v2c4;
wire[2:0] v2c5;
wire[2:0] v2c6;
wire[2:0] v2c7;
wire[2:0] v2c8;
wire[2:0] v2c9;
//-------------
reg ok_n;
//------------------------------------------------- 
//将变量结点发送至校验结点的信息处理乘2模块
//------------------------------------------------- 
function[2:0] mul2;
input[2:0] v2c;
    case(v2c)
	      3'b000:mul2 = 3'b000;
	      3'b001:mul2 = 3'b010;
        3'b010:mul2 = 3'b100;
        3'b011:mul2 = 3'b110;
        3'b100:mul2 = 3'b011;
        3'b101:mul2 = 3'b001;
        3'b110:mul2 = 3'b111;
        3'b111:mul2 = 3'b101;
    endcase
endfunction
//------------------------------------------------- 
//将变量结点发送至校验结点的信息处理乘3模块
//------------------------------------------------- 
function[2:0] mul3;
input[2:0] v2c;
    case(v2c)
	      3'b000:mul3 = 3'b000;
	      3'b001:mul3 = 3'b011;
        3'b010:mul3 = 3'b110;
        3'b011:mul3 = 3'b101;
        3'b100:mul3 = 3'b111;
        3'b101:mul3 = 3'b100;
        3'b110:mul3 = 3'b001;
        3'b111:mul3 = 3'b010;
    endcase
endfunction
//------------------------------------------------- 
//将变量结点发送至校验结点的信息处理乘4模块
//------------------------------------------------- 
function[2:0] mul4;
input[2:0] v2c;
    case(v2c)
	      3'b000:mul4 = 3'b000;
	      3'b001:mul4 = 3'b100;
        3'b010:mul4 = 3'b011;
        3'b011:mul4 = 3'b111;
        3'b100:mul4 = 3'b110;
        3'b101:mul4 = 3'b010;
        3'b110:mul4 = 3'b101;
        3'b111:mul4 = 3'b001;
    endcase
endfunction
//------------------------------------------------- 
//将变量结点发送至校验结点的信息处理乘5模块
//------------------------------------------------- 
function[2:0] mul5;
input[2:0] v2c;
    case(v2c)
	      3'b000:mul5 = 3'b000;
	      3'b001:mul5 = 3'b101;
        3'b010:mul5 = 3'b001;
        3'b011:mul5 = 3'b100;
        3'b100:mul5 = 3'b010;
        3'b101:mul5 = 3'b111;
        3'b110:mul5 = 3'b011;
        3'b111:mul5 = 3'b110;
    endcase
endfunction
//------------------------------------------------- 
//将变量结点发送至校验结点的信息处理乘6模块
//------------------------------------------------- 
function[2:0] mul6;
input[2:0] v2c;
    case(v2c)
	      3'b000:mul6 = 3'b000;
	      3'b001:mul6 = 3'b110;
        3'b010:mul6 = 3'b111;
        3'b011:mul6 = 3'b001;
        3'b100:mul6 = 3'b101;
        3'b101:mul6 = 3'b011;
        3'b110:mul6 = 3'b010;
        3'b111:mul6 = 3'b100;
    endcase
endfunction
//------------------------------------------------- 
//将变量结点发送至校验结点的信息处理乘7模块
//------------------------------------------------- 
function[2:0] mul7;
input[2:0] v2c;
    case(v2c)
	      3'b000:mul7 = 3'b000;
	      3'b001:mul7 = 3'b111;
        3'b010:mul7 = 3'b101;
        3'b011:mul7 = 3'b010;
        3'b100:mul7 = 3'b001;
        3'b101:mul7 = 3'b110;
        3'b110:mul7 = 3'b100;
        3'b111:mul7 = 3'b011;
    endcase
endfunction
//---------------------------------
//变量节点发送至校验节点的信息处理
//---------------------------------
function[2:0] v_c;
input[2:0] v2c;
input[2:0] mul;
    case(mul)
	      3'b000:v_c = 3'b000;
	      3'b001:v_c = v2c;
        3'b010:v_c = mul2(v2c);
        3'b011:v_c = mul3(v2c);
        3'b100:v_c = mul4(v2c);
        3'b101:v_c = mul5(v2c);
        3'b110:v_c = mul6(v2c);
        3'b111:v_c = mul7(v2c);
    endcase
endfunction
//------------------------------------------------- 
//将校验结点发送至变量结点的信息处理除2模块
//------------------------------------------------- 
function[2:0] div2;
input[2:0] c2v;
    case(c2v)
	      3'b000:div2 = 3'b000;
	      3'b001:div2 = 3'b101;
        3'b010:div2 = 3'b001;
        3'b011:div2 = 3'b100;
        3'b100:div2 = 3'b010;
        3'b101:div2 = 3'b111;
        3'b110:div2 = 3'b011;
        3'b111:div2 = 3'b110;
    endcase
endfunction
//------------------------------------------------- 
//将校验结点发送至变量结点的信息处理除3模块
//------------------------------------------------- 
function[2:0] div3;
input[2:0] c2v;
    case(c2v)
	      3'b000:div3 = 3'b000;
	      3'b001:div3 = 3'b110;
        3'b010:div3 = 3'b111;
        3'b011:div3 = 3'b001;
        3'b100:div3 = 3'b101;
        3'b101:div3 = 3'b011;
        3'b110:div3 = 3'b010;
        3'b111:div3 = 3'b100;
    endcase
endfunction
//------------------------------------------------- 
//将校验结点发送至变量结点的信息处理除4模块
//------------------------------------------------- 
function[2:0] div4;
input[2:0] c2v;
    case(c2v)
	      3'b000:div4 = 3'b000;
	      3'b001:div4 = 3'b111;
        3'b010:div4 = 3'b101;
        3'b011:div4 = 3'b010;
        3'b100:div4 = 3'b001;
        3'b101:div4 = 3'b110;
        3'b110:div4 = 3'b100;
        3'b111:div4 = 3'b011;
    endcase
endfunction
//------------------------------------------------- 
//将校验结点发送至变量结点的信息处理除5模块
//------------------------------------------------- 
function[2:0] div5;
input[2:0] c2v;
    case(c2v)
	      3'b000:div5 = 3'b000;
	      3'b001:div5 = 3'b010;
        3'b010:div5 = 3'b100;
        3'b011:div5 = 3'b110;
        3'b100:div5 = 3'b011;
        3'b101:div5 = 3'b001;
        3'b110:div5 = 3'b111;
        3'b111:div5 = 3'b101;
    endcase
endfunction
//------------------------------------------------- 
//将校验结点发送至变量结点的信息处理除6模块
//------------------------------------------------- 
function[2:0] div6;
input[2:0] c2v;
    case(c2v)
	      3'b000:div6 = 3'b000;
	      3'b001:div6 = 3'b011;
        3'b010:div6 = 3'b110;
        3'b011:div6 = 3'b101;
        3'b100:div6 = 3'b111;
        3'b101:div6 = 3'b100;
        3'b110:div6 = 3'b001;
        3'b111:div6 = 3'b010;
    endcase
endfunction
//------------------------------------------------- 
//将校验结点发送至变量结点的信息处理除7模块
//------------------------------------------------- 
function[2:0] div7;
input[2:0] c2v;
    case(c2v)
	      3'b000:div7 = 3'b000;
	      3'b001:div7 = 3'b100;
        3'b010:div7 = 3'b011;
        3'b011:div7 = 3'b111;
        3'b100:div7 = 3'b110;
        3'b101:div7 = 3'b010;
        3'b110:div7 = 3'b101;
        3'b111:div7 = 3'b001;
    endcase
endfunction
//------------------------------------------------- 
//这个函数是将校验结点发送至变量结点的信息处理
//------------------------------------------------- 
function[2:0] c_v;
input[2:0] c2v;
input[2:0] divl;
    case(divl)
	      3'b000:c_v = 3'b000;
	      3'b001:c_v = c2v;
        3'b010:c_v = div2(c2v);
        3'b011:c_v = div3(c2v);
        3'b100:c_v = div4(c2v);
        3'b101:c_v = div5(c2v);
        3'b110:c_v = div6(c2v);
        3'b111:c_v = div7(c2v);
    endcase
endfunction
//---------------------------------------
//always @(posedge clk5)
//begin
	  //if(clk5)
	      //begin
//            v2c0 <= v_c(vn0,3'b010) ^ v_c(vn1,3'b010) ^ v_c(vn5,3'b010) ^ v_c(vn10,3'b010) ^ v_c(vn12,3'b010) ^ v_c(vn13,3'b010);
//            v2c1 <= v_c(vn4,3'b100) ^ v_c(vn6,3'b100) ^ v_c(vn8,3'b100) ^ v_c(vn11,3'b100) ^ v_c(vn13,3'b100) ^ v_c(vn14,3'b100);
//            v2c2 <= v_c(vn1,3'b011) ^ v_c(vn3,3'b011) ^ v_c(vn7,3'b011) ^ v_c(vn10,3'b011) ^ v_c(vn14,3'b011) ^ v_c(vn15,3'b011);
//            v2c3 <= v_c(vn2,3'b001) ^ v_c(vn6,3'b001) ^ v_c(vn8,3'b110) ^ v_c(vn12,3'b110) ^ v_c(vn15,3'b110) ^ v_c(vn16,3'b110);
//            v2c4 <= v_c(vn3,3'b111) ^ v_c(vn9,3'b111) ^ v_c(vn11,3'b111)^ v_c(vn14,3'b111) ^ v_c(vn16,3'b111) ^ v_c(vn17,3'b111);
//            v2c5 <= v_c(vn0,3'b101) ^ v_c(vn4,3'b101) ^ v_c(vn7,3'b101) ^ v_c(vn13,3'b101) ^ v_c(vn17,3'b101) ^ v_c(vn18,3'b101);
//            v2c6 <= v_c(vn2,3'b010) ^ v_c(vn6,3'b010) ^ v_c(vn9,3'b010) ^ v_c(vn16,3'b010) ^ v_c(vn18,3'b010) ^ v_c(vn19,3'b010);
//            v2c7 <= v_c(vn3,3'b010) ^ v_c(vn5,3'b010) ^ v_c(vn8,3'b010) ^ v_c(vn11,3'b010) ^ v_c(vn12,3'b010) ^ v_c(vn15,3'b010) ^ v_c(vn17,3'b010) ^ v_c(vn19,3'b010);
//            v2c8 <= v_c(vn1,3'b100) ^ v_c(vn5,3'b100) ^ v_c(vn7,3'b100) ^ v_c(vn9,3'b100) ^  v_c(vn10,3'b100) ^ v_c(vn19,3'b100);
//            v2c9 <= v_c(vn0,3'b011) ^ v_c(vn2,3'b011) ^ v_c(vn4,3'b011) ^ v_c(vn18,3'b011);
//
//            ok_n <= v2c0 || v2c1 || v2c2 || v2c3 || v2c4 || v2c5 || v2c6 || v2c7 || v2c8 || v2c9;	
//            $display("The v2c is %O_%O_%O_%O_%O_%O_%O_%O_%O_%O",v2c0,v2c1,v2c2,v2c3,v2c4,v2c5,v2c6,v2c7,v2c8,v2c9);
//            $display("The ok_n is %b",ok_n);
        //end
//end
//---------------------------------------
assign v2c0 = v_c(vn0,3'b010) ^ v_c(vn1,3'b010) ^ v_c(vn5,3'b010) ^ v_c(vn10,3'b010) ^ v_c(vn12,3'b010) ^ v_c(vn13,3'b010);
assign v2c1 = v_c(vn4,3'b100) ^ v_c(vn6,3'b100) ^ v_c(vn8,3'b100) ^ v_c(vn11,3'b100) ^ v_c(vn13,3'b100) ^ v_c(vn14,3'b100);
assign v2c2 = v_c(vn1,3'b011) ^ v_c(vn3,3'b011) ^ v_c(vn7,3'b011) ^ v_c(vn10,3'b011) ^ v_c(vn14,3'b011) ^ v_c(vn15,3'b011);
assign v2c3 = v_c(vn2,3'b110) ^ v_c(vn6,3'b110) ^ v_c(vn8,3'b110) ^ v_c(vn12,3'b110) ^ v_c(vn15,3'b110) ^ v_c(vn16,3'b110);
assign v2c4 = v_c(vn3,3'b111) ^ v_c(vn9,3'b111) ^ v_c(vn11,3'b111)^ v_c(vn14,3'b111) ^ v_c(vn16,3'b111) ^ v_c(vn17,3'b111);
assign v2c5 = v_c(vn0,3'b101) ^ v_c(vn4,3'b101) ^ v_c(vn7,3'b101) ^ v_c(vn13,3'b101) ^ v_c(vn17,3'b101) ^ v_c(vn18,3'b101);
assign v2c6 = v_c(vn2,3'b010) ^ v_c(vn6,3'b010) ^ v_c(vn9,3'b010) ^ v_c(vn16,3'b010) ^ v_c(vn18,3'b010) ^ v_c(vn19,3'b010);
assign v2c7 = v_c(vn3,3'b010) ^ v_c(vn5,3'b010) ^ v_c(vn8,3'b010) ^ v_c(vn11,3'b010) ^ v_c(vn12,3'b010) ^ v_c(vn15,3'b010) ^ v_c(vn17,3'b010) ^ v_c(vn19,3'b010);
assign v2c8 = v_c(vn1,3'b100) ^ v_c(vn5,3'b100) ^ v_c(vn7,3'b100) ^ v_c(vn9,3'b100) ^  v_c(vn10,3'b100) ^ v_c(vn19,3'b100);
assign v2c9 = v_c(vn0,3'b011) ^ v_c(vn2,3'b011) ^ v_c(vn4,3'b011) ^ v_c(vn18,3'b011);
//----------------------------------------
always @(posedge clk5)
begin
	  ok_n <= v2c0 || v2c1 || v2c2 || v2c3 || v2c4 || v2c5 || v2c6 || v2c7 || v2c8 || v2c9;
	  $display("The v2c is %O_%O_%O_%O_%O_%O_%O_%O_%O_%O",v2c0,v2c1,v2c2,v2c3,v2c4,v2c5,v2c6,v2c7,v2c8,v2c9);
    $display("The ok_n is %b",ok_n);
end
always @(posedge clk6)
begin
	  if(clk6)
	      begin
            c2v0_0 = c_v((v2c0 ^ v_c(vn0,3'b010)),3'b010);
            c2v0_1 = c_v((v2c0 ^ v_c(vn1,3'b010)),3'b010);
	          c2v0_2 = c_v((v2c0 ^ v_c(vn5,3'b010)),3'b010);
	          c2v0_3 = c_v((v2c0 ^ v_c(vn10,3'b010)),3'b010);
	          c2v0_4 = c_v((v2c0 ^ v_c(vn12,3'b010)),3'b010);
	          c2v0_5 = c_v((v2c0 ^ v_c(vn13,3'b010)),3'b010);
		 
	          c2v1_0 = c_v((v2c1 ^ v_c(vn4,3'b100)),3'b100);
	          c2v1_1 = c_v((v2c1 ^ v_c(vn6,3'b100)),3'b100);
	          c2v1_2 = c_v((v2c1 ^ v_c(vn8,3'b100)),3'b100);
	          c2v1_3 = c_v((v2c1 ^ v_c(vn11,3'b100)),3'b100);
	          c2v1_4 = c_v((v2c1 ^ v_c(vn13,3'b100)),3'b100);
	          c2v1_5 = c_v((v2c1 ^ v_c(vn14,3'b100)),3'b100);
		 
	          c2v2_0 = c_v((v2c2 ^ v_c(vn1,3'b011)),3'b011);
	          c2v2_1 = c_v((v2c2 ^ v_c(vn3,3'b011)),3'b011);
	          c2v2_2 = c_v((v2c2 ^ v_c(vn7,3'b011)),3'b011);
	          c2v2_3 = c_v((v2c2 ^ v_c(vn10,3'b011)),3'b011);
	          c2v2_4 = c_v((v2c2 ^ v_c(vn14,3'b011)),3'b011);
	          c2v2_5 = c_v((v2c2 ^ v_c(vn15,3'b011)),3'b011);
		 
	          c2v3_0 = c_v((v2c3 ^ v_c(vn2,3'b001)),3'b001);
            c2v3_1 = c_v((v2c3 ^ v_c(vn6,3'b001)),3'b001);
	          c2v3_2 = c_v((v2c3 ^ v_c(vn8,3'b110)),3'b110);
	          c2v3_3 = c_v((v2c3 ^ v_c(vn12,3'b110)),3'b110);
	          c2v3_4 = c_v((v2c3 ^ v_c(vn15,3'b110)),3'b110);
	          c2v3_5 = c_v((v2c3 ^ v_c(vn16,3'b110)),3'b110);
		 
	          c2v4_0 = c_v((v2c4 ^ v_c(vn3,3'b111)),3'b111);
	          c2v4_1 = c_v((v2c4 ^ v_c(vn9,3'b111)),3'b111);
	          c2v4_2 = c_v((v2c4 ^ v_c(vn11,3'b111)),3'b111);
	          c2v4_3 = c_v((v2c4 ^ v_c(vn14,3'b111)),3'b111);
	          c2v4_4 = c_v((v2c4 ^ v_c(vn16,3'b111)),3'b111);
	          c2v4_5 = c_v((v2c4 ^ v_c(vn17,3'b111)),3'b111);
		  
	          c2v5_0 = c_v((v2c5 ^ v_c(vn0,3'b101)),3'b101);
	          c2v5_1 = c_v((v2c5 ^ v_c(vn4,3'b101)),3'b101);
	          c2v5_2 = c_v((v2c5 ^ v_c(vn7,3'b101)),3'b101);
	          c2v5_3 = c_v((v2c5 ^ v_c(vn13,3'b101)),3'b101);
	          c2v5_4 = c_v((v2c5 ^ v_c(vn17,3'b101)),3'b101);
	          c2v5_5 = c_v((v2c5 ^ v_c(vn18,3'b101)),3'b101);
		  
	          c2v6_0 = c_v((v2c6 ^ v_c(vn2,3'b010)),3'b010);
	          c2v6_1 = c_v((v2c6 ^ v_c(vn6,3'b010)),3'b010);
	          c2v6_2 = c_v((v2c6 ^ v_c(vn9,3'b010)),3'b010);
	          c2v6_3 = c_v((v2c6 ^ v_c(vn16,3'b010)),3'b010);
	          c2v6_4 = c_v((v2c6 ^ v_c(vn18,3'b010)),3'b010);
	          c2v6_5 = c_v((v2c6 ^ v_c(vn19,3'b010)),3'b010);

	          c2v7_0 = c_v((v2c7 ^ v_c(vn3,3'b010)),3'b010);
	          c2v7_1 = c_v((v2c7 ^ v_c(vn5,3'b010)),3'b010);
	          c2v7_2 = c_v((v2c7 ^ v_c(vn8,3'b010)),3'b010);
	          c2v7_3 = c_v((v2c7 ^ v_c(vn11,3'b010)),3'b010);
	          c2v7_4 = c_v((v2c7 ^ v_c(vn12,3'b010)),3'b010);
	          c2v7_5 = c_v((v2c7 ^ v_c(vn15,3'b010)),3'b010);
	          c2v7_6 = c_v((v2c7 ^ v_c(vn17,3'b010)),3'b010);
	          c2v7_7 = c_v((v2c7 ^ v_c(vn19,3'b010)),3'b010);
		 
	          c2v8_0 = c_v((v2c8 ^ v_c(vn1,3'b100)),3'b100);
	          c2v8_1 = c_v((v2c8 ^ v_c(vn5,3'b100)),3'b100);
	          c2v8_2 = c_v((v2c8 ^ v_c(vn7,3'b100)),3'b100);
	          c2v8_3 = c_v((v2c8 ^ v_c(vn9,3'b100)),3'b100);
	          c2v8_4 = c_v((v2c8 ^ v_c(vn10,3'b100)),3'b100);
	          c2v8_5 = c_v((v2c8 ^ v_c(vn19,3'b100)),3'b100);
		  
	          c2v9_0 = c_v((v2c9 ^ v_c(vn0,3'b011)),3'b011);
	          c2v9_1 = c_v((v2c9 ^ v_c(vn2,3'b011)),3'b011);
	          c2v9_2 = c_v((v2c9 ^ v_c(vn4,3'b011)),3'b011);
	          c2v9_3 = c_v((v2c9 ^ v_c(vn18,3'b011)),3'b011); 
	      end
end
endmodule



assign v2c0 = v_c(vn00,3'b010) ^ v_c(vn10,3'b010) ^ v_c(vn50,3'b010) ^ v_c(vn100,3'b010) ^ v_c(vn120,3'b010) ^ v_c(vn130,3'b010);
assign v2c1 = v_c(vn40,3'b100) ^ v_c(vn60,3'b100) ^ v_c(vn80,3'b100) ^ v_c(vn110,3'b100) ^ v_c(vn131,3'b100) ^ v_c(vn140,3'b100);
assign v2c2 = v_c(vn11,3'b011) ^ v_c(vn30,3'b011) ^ v_c(vn70,3'b011) ^ v_c(vn101,3'b011) ^ v_c(vn141,3'b011) ^ v_c(vn150,3'b011);
assign v2c3 = v_c(vn20,3'b110) ^ v_c(vn61,3'b110) ^ v_c(vn81,3'b110) ^ v_c(vn121,3'b110) ^ v_c(vn151,3'b110) ^ v_c(vn160,3'b110);
assign v2c4 = v_c(vn31,3'b111) ^ v_c(vn90,3'b111) ^ v_c(vn111,3'b111)^ v_c(vn142,3'b111) ^ v_c(vn161,3'b111) ^ v_c(vn170,3'b111);
assign v2c5 = v_c(vn01,3'b101) ^ v_c(vn41,3'b101) ^ v_c(vn71,3'b101) ^ v_c(vn132,3'b101) ^ v_c(vn171,3'b101) ^ v_c(vn180,3'b101);
assign v2c6 = v_c(vn21,3'b010) ^ v_c(vn62,3'b010) ^ v_c(vn91,3'b010) ^ v_c(vn162,3'b010) ^ v_c(vn181,3'b010) ^ v_c(vn190,3'b010);
assign v2c7 = v_c(vn32,3'b010) ^ v_c(vn51,3'b010) ^ v_c(vn82,3'b010) ^ v_c(vn112,3'b010) ^ v_c(vn122,3'b010) ^ v_c(vn152,3'b010) ^ v_c(vn172,3'b010) ^ v_c(vn191,3'b010);
assign v2c8 = v_c(vn12,3'b100) ^ v_c(vn52,3'b100) ^ v_c(vn72,3'b100) ^ v_c(vn92,3'b100) ^  v_c(vn102,3'b100) ^ v_c(vn192,3'b100);
assign v2c9 = v_c(vn02,3'b011) ^ v_c(vn22,3'b011) ^ v_c(vn42,3'b011) ^ v_c(vn182,3'b011);
