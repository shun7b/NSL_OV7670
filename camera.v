
/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Sat Dec 28 10:48:15 2024
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module camera ( p_reset , m_clock , in_data , href , pclk , xclk , c_vsync , sda , scl , reset , pwdn , VGA_R , VGA_B , VGA_G , out_plot_num_x , time_RGB , out_plot_num_y );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [7:0] in_data;
  wire [7:0] in_data;
  input href;
  wire href;
  input pclk;
  wire pclk;
  output xclk;
  wire xclk;
  input c_vsync;
  wire c_vsync;
  output sda;
  wire sda;
  output scl;
  wire scl;
  output reset;
  wire reset;
  output pwdn;
  wire pwdn;
  output [3:0] VGA_R;
  wire [3:0] VGA_R;
  output [3:0] VGA_B;
  wire [3:0] VGA_B;
  output [3:0] VGA_G;
  wire [3:0] VGA_G;
  output [9:0] out_plot_num_x;
  wire [9:0] out_plot_num_x;
  output time_RGB;
  wire time_RGB;
  output [9:0] out_plot_num_y;
  wire [9:0] out_plot_num_y;
  reg [15:0] sda_OV [0:255];
  reg [9:0] count;
  reg [15:0] sda_sig;
  reg scl_reg;
  reg sda_reg;
  reg times;
  reg [6:0] adr;
  reg clk;
  reg [3:0] arg_r;
  reg [3:0] arg_g;
  reg [3:0] arg_b;
  reg [9:0] plot_num_x;
  reg [9:0] plot_num_y;
  reg [9:0] pc;
  reg [15:0] scl_clk;
  wire [3:0] in_hex;
  wire [7:0] out_acii;
  reg [31:0] start_count;
  reg [5:0] tx_count;
  reg [9:0] I2C_START_STOP;
  wire _net_0;
  wire _net_1;
  wire [7:0] _net_2;
  wire [9:0] _net_3;
  wire [15:0] _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;
  wire [9:0] _net_9;
  wire _net_10;
  wire [15:0] _net_11;
  wire [9:0] _net_12;
  wire _net_13;
  wire _net_14;
  wire _net_15;
  wire [9:0] _net_16;
  wire [15:0] _net_17;
  wire _net_18;
  wire [15:0] _net_19;
  wire [9:0] _net_20;
  wire _net_21;
  wire _net_22;
  wire _net_23;
  wire _net_24;
  wire _net_25;
  wire [13:0] _net_26;
  wire _net_27;
  wire [7:0] _net_28;
  wire [9:0] _net_29;
  wire [15:0] _net_30;
  wire [7:0] _net_31;
  wire [9:0] _net_32;
  wire _net_33;
  wire _net_34;
  wire [31:0] _net_35;
  wire _net_36;
  wire _net_37;
  wire _net_38;
  wire _net_39;
  wire _net_40;

   assign  _net_0 = ((pc < 10'b0010100000)&(((((scl_clk==16'b0000000000001010)&(((start_count > 32'b00000000000000000000000011001110)&(pc==10'b0000000000))|((start_count > 32'b00000000000000001110100111111011)&(pc != 10'b0000000000))))&(I2C_START_STOP < 4'b1000))|(count==10'b0000011010))|(((scl_clk==16'b0000000000001010)&(count==10'b0000011001))&(start_count > 32'b00000000000000000000000011001110))));
   assign  _net_1 = 
// synthesis translate_off
// synopsys translate_off
(_net_0)? 
// synthesis translate_on
// synopsys translate_on
((_net_0)?(count==7'b0011010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_2 = 
// synthesis translate_off
// synopsys translate_off
((_net_0&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((_net_0&_net_1))?(_net_3[7:0]):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_3 = pc;
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
((_net_0&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((_net_0&_net_1))?(sda_OV[_net_2]):16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
((_net_0&_net_1))? 
// synthesis translate_on
// synopsys translate_on
(((_net_0&_net_1))?(_net_4==16'b1111111111111111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = (((start_count > 32'b00000000000000000000000011001110)&(pc==10'b0000000000))|((start_count > 32'b00000000000000001110100111111011)&(pc != 10'b0000000000)));
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?(count==10'b0000011010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?((count != 10'b0000011010)&(pc==10'b0000000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = 10'b0011001111;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?((count != 10'b0000011010)&(pc != 10'b0000000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 16'b1110100111111100;
   assign  _net_12 = 10'b0011001000;
   assign  _net_13 = (((scl_clk==({6'b000000,_net_12}))|((start_count < 32'b00000000000000000000000011001110)&(pc==10'b0000000000)))|((start_count < 32'b00000000000000001110100111111011)&(pc != 10'b0000000000)));
   assign  _net_14 = (scl_clk==16'b0000000000000000);
   assign  _net_15 = 
// synthesis translate_off
// synopsys translate_off
(_net_14)? 
// synthesis translate_on
// synopsys translate_on
((_net_14)?((((I2C_START_STOP==10'b0000001000)&(7'b0011001 > count))|((start_count < 32'b00000000000000000000000011001111)&(pc==10'b0000000000)))|((start_count < 32'b00000000000000001110100111111100)&(pc != 10'b0000000000))):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_16 = (10'b0011001111-4'b0001);
   assign  _net_17 = (16'b1110100111111100-4'b0001);
   assign  _net_18 = (((start_count > ({22'b0000000000000000000000,_net_16}))&(pc==10'b0000000000))|((start_count > ({16'b0000000000000000,_net_17}))&(pc != 10'b0000000000)));
   assign  _net_19 = 16'b1110100111111100;
   assign  _net_20 = 10'b0011001111;
   assign  _net_21 = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?((((start_count < ({16'b0000000000000000,_net_19}))&(pc != 10'b0000000000))|((start_count < ({22'b0000000000000000000000,_net_20}))&(pc==10'b0000000000)))|(scl_clk==16'b0000000001100100)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_22 = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?((scl_clk==16'b0000000000000000)&(count != 10'b0000011010)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_23 = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?(((pc < 10'b0010100000)&(scl_clk==16'b0000000000001010))&(4'b1000 > I2C_START_STOP)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_24 = 
// synthesis translate_off
// synopsys translate_off
((_net_18&_net_23))? 
// synthesis translate_on
// synopsys translate_on
(((_net_18&_net_23))?(count==10'b0000000000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_25 = 
// synthesis translate_off
// synopsys translate_off
((_net_18&_net_23))? 
// synthesis translate_on
// synopsys translate_on
(((_net_18&_net_23))?((count >= 10'b0000000001)&(count < 10'b0000001000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_26 = ({adr,7'b0000000});
   assign  _net_27 = 
// synthesis translate_off
// synopsys translate_off
((_net_18&_net_23))? 
// synthesis translate_on
// synopsys translate_on
(((_net_18&_net_23))?(count==10'b0000001000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_28 = 
// synthesis translate_off
// synopsys translate_off
(((_net_18&_net_23)&_net_27))? 
// synthesis translate_on
// synopsys translate_on
((((_net_18&_net_23)&_net_27))?(_net_29[7:0]):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_29 = pc;
   assign  _net_30 = 
// synthesis translate_off
// synopsys translate_off
(((_net_18&_net_23)&_net_27))? 
// synthesis translate_on
// synopsys translate_on
((((_net_18&_net_23)&_net_27))?(sda_OV[_net_28]):16'b0)
// synthesis translate_off
// synopsys translate_off
:16'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_31 = 
// synthesis translate_off
// synopsys translate_off
(((_net_18&_net_23)&_net_27))? 
// synthesis translate_on
// synopsys translate_on
((((_net_18&_net_23)&_net_27))?(_net_32[7:0]):8'b0)
// synthesis translate_off
// synopsys translate_off
:8'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_32 = pc;
   assign  _net_33 = 
// synthesis translate_off
// synopsys translate_off
((_net_18&_net_23))? 
// synthesis translate_on
// synopsys translate_on
(((_net_18&_net_23))?(count==10'b0000010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_34 = 
// synthesis translate_off
// synopsys translate_off
((_net_18&_net_23))? 
// synthesis translate_on
// synopsys translate_on
(((_net_18&_net_23))?((count > 10'b0000001000)&(count < 10'b0000011001)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_35 = ({sda_sig,16'b0000000000000000});
   assign  _net_36 = 
// synthesis translate_off
// synopsys translate_off
((_net_18&_net_23))? 
// synthesis translate_on
// synopsys translate_on
(((_net_18&_net_23))?(count==10'b0000011001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_37 = ((href&(~c_vsync))&pclk);
   assign  _net_38 = 
// synthesis translate_off
// synopsys translate_off
(_net_37)? 
// synthesis translate_on
// synopsys translate_on
((_net_37)?(~times):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_39 = 
// synthesis translate_off
// synopsys translate_off
((_net_37&_net_38))? 
// synthesis translate_on
// synopsys translate_on
(((_net_37&_net_38))?(plot_num_x >= 10'b1001111111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_40 = 
// synthesis translate_off
// synopsys translate_off
(((_net_37&_net_38)&_net_39))? 
// synthesis translate_on
// synopsys translate_on
((((_net_37&_net_38)&_net_39))?(plot_num_y >= 10'b0111011111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  xclk = clk;
   assign  sda = ((((((((((count==10'b0000011001)&(I2C_START_STOP==10'b0000000001))|((count==10'b0000010000)&(I2C_START_STOP==10'b0000000000)))|((count==10'b0000011000)&(I2C_START_STOP==10'b0000001000)))|((start_count < 32'b00000000000000000000000000000101)&(pc==10'b0000000000)))|((start_count < 32'b00000000000000001110100100110010)&(pc != 10'b0000000000)))|(count==10'b0000011010))|(sda_reg&(count != 10'b0000011001)))|(I2C_START_STOP==10'b0000001000))|((((I2C_START_STOP==10'b0000000001)&(scl_clk < 16'b0000000000001010))&sda_reg)&(pc==10'b0000000000)));
   assign  scl = ((((((((count==10'b0000011001)&(I2C_START_STOP==10'b0000000001))|scl_reg)|((start_count < 32'b00000000000000000000000011001111)&(pc==10'b0000000000)))|((start_count < 32'b00000000000000001110100111111100)&(pc != 10'b0000000000)))|(pc==10'b0010100000))|(count==10'b0000011010))|((count==10'b0000011001)&(I2C_START_STOP==10'b0000001000)));
   assign  VGA_R = arg_r;
   assign  VGA_B = arg_b;
   assign  VGA_G = arg_g;
   assign  out_plot_num_x = plot_num_x;
   assign  time_RGB = times;
   assign  out_plot_num_y = plot_num_y;
initial begin
    sda_OV[0] = 16'b0001001010000000;
    sda_OV[1] = 16'b0001000100000001;
    sda_OV[2] = 16'b0011101000001101;
    sda_OV[3] = 16'b0001001000000100;
    sda_OV[4] = 16'b0100000011010000;
    sda_OV[5] = 16'b1000110000000010;
    sda_OV[6] = 16'b0001011100010011;
    sda_OV[7] = 16'b0001100000000001;
    sda_OV[8] = 16'b0011001010110110;
    sda_OV[9] = 16'b0001100100000010;
    sda_OV[10] = 16'b0001101001111010;
    sda_OV[11] = 16'b0000001100001010;
    sda_OV[12] = 16'b0000110000000000;
    sda_OV[13] = 16'b0011111000000000;
    sda_OV[14] = 16'b0111000000111010;
    sda_OV[15] = 16'b0111000100110101;
    sda_OV[16] = 16'b0111001000010001;
    sda_OV[17] = 16'b0111001111110000;
    sda_OV[18] = 16'b1010001000000010;
    sda_OV[19] = 16'b0001010100000000;
    sda_OV[20] = 16'b0111101000100000;
    sda_OV[21] = 16'b0111101100010000;
    sda_OV[22] = 16'b0111110000011110;
    sda_OV[23] = 16'b0111110100110101;
    sda_OV[24] = 16'b0111111001011010;
    sda_OV[25] = 16'b0111111101101001;
    sda_OV[26] = 16'b1000000001110110;
    sda_OV[27] = 16'b1000000110000000;
    sda_OV[28] = 16'b1000001010001000;
    sda_OV[29] = 16'b1000001110001111;
    sda_OV[30] = 16'b1000010010010110;
    sda_OV[31] = 16'b1000010110100011;
    sda_OV[32] = 16'b1000011010101111;
    sda_OV[33] = 16'b1000011111000100;
    sda_OV[34] = 16'b1000100011010111;
    sda_OV[35] = 16'b1000100111101000;
    sda_OV[36] = 16'b0001001111100000;
    sda_OV[37] = 16'b0000000000000000;
    sda_OV[38] = 16'b0001000000100000;
    sda_OV[39] = 16'b0000110101000000;
    sda_OV[40] = 16'b0001010000011000;
    sda_OV[41] = 16'b1010010100000101;
    sda_OV[42] = 16'b1010101100000111;
    sda_OV[43] = 16'b0010010010010101;
    sda_OV[44] = 16'b0010010100110011;
    sda_OV[45] = 16'b0010011011100011;
    sda_OV[46] = 16'b1001111101111000;
    sda_OV[47] = 16'b1010000001101000;
    sda_OV[48] = 16'b1010000100000011;
    sda_OV[49] = 16'b1010011011011000;
    sda_OV[50] = 16'b1010011111011000;
    sda_OV[51] = 16'b1010100011110000;
    sda_OV[52] = 16'b1010100110010000;
    sda_OV[53] = 16'b1010101010010100;
    sda_OV[54] = 16'b0001001111100101;
    sda_OV[55] = 16'b0000111001100001;
    sda_OV[56] = 16'b0000111101001011;
    sda_OV[57] = 16'b0001011000000010;
    sda_OV[58] = 16'b0001111000000111;
    sda_OV[59] = 16'b0010000100000010;
    sda_OV[60] = 16'b0010001010010001;
    sda_OV[61] = 16'b0010100100000111;
    sda_OV[62] = 16'b0011001100001011;
    sda_OV[63] = 16'b0011010100001011;
    sda_OV[64] = 16'b0011011100011101;
    sda_OV[65] = 16'b0011100001110001;
    sda_OV[66] = 16'b0011100100101010;
    sda_OV[67] = 16'b0011110001111000;
    sda_OV[68] = 16'b0100110101000000;
    sda_OV[69] = 16'b0100111000100000;
    sda_OV[70] = 16'b0110100100000000;
    sda_OV[71] = 16'b0110101101001010;
    sda_OV[72] = 16'b0111010000010000;
    sda_OV[73] = 16'b1000110101001111;
    sda_OV[74] = 16'b1000111000000000;
    sda_OV[75] = 16'b1000111100000000;
    sda_OV[76] = 16'b1001000000000000;
    sda_OV[77] = 16'b1001000100000000;
    sda_OV[78] = 16'b1001011000000000;
    sda_OV[79] = 16'b1001101000000000;
    sda_OV[80] = 16'b1011000010000100;
    sda_OV[81] = 16'b1011000100001100;
    sda_OV[82] = 16'b1011001000001110;
    sda_OV[83] = 16'b1011001110000010;
    sda_OV[84] = 16'b1011100000001010;
    sda_OV[85] = 16'b0100001100001010;
    sda_OV[86] = 16'b0100010011110000;
    sda_OV[87] = 16'b0100010100110100;
    sda_OV[88] = 16'b0100011001011000;
    sda_OV[89] = 16'b0100011100101000;
    sda_OV[90] = 16'b0100100000111010;
    sda_OV[91] = 16'b0101100110001000;
    sda_OV[92] = 16'b0101101010001000;
    sda_OV[93] = 16'b0101101101000100;
    sda_OV[94] = 16'b0101110001100111;
    sda_OV[95] = 16'b0101110101001001;
    sda_OV[96] = 16'b0101111000001110;
    sda_OV[97] = 16'b0110110000001010;
    sda_OV[98] = 16'b0110110101010101;
    sda_OV[99] = 16'b0110111000010001;
    sda_OV[100] = 16'b0110111110011111;
    sda_OV[101] = 16'b0110101001000000;
    sda_OV[102] = 16'b0000000101000000;
    sda_OV[103] = 16'b0000001001100000;
    sda_OV[104] = 16'b0001001111100111;
    sda_OV[105] = 16'b0100111110000000;
    sda_OV[106] = 16'b0101000010000000;
    sda_OV[107] = 16'b0101000100000000;
    sda_OV[108] = 16'b0101001000100010;
    sda_OV[109] = 16'b0101001101011110;
    sda_OV[110] = 16'b0101010010000000;
    sda_OV[111] = 16'b0101100010011110;
    sda_OV[112] = 16'b0100000100001000;
    sda_OV[113] = 16'b0011111100000000;
    sda_OV[114] = 16'b0111010100000101;
    sda_OV[115] = 16'b0111011011100001;
    sda_OV[116] = 16'b0100110000000000;
    sda_OV[117] = 16'b0111011100000001;
    sda_OV[118] = 16'b0011110111000011;
    sda_OV[119] = 16'b0100101100001001;
    sda_OV[120] = 16'b1100100101100000;
    sda_OV[121] = 16'b0100000100111000;
    sda_OV[122] = 16'b0101011001000000;
    sda_OV[123] = 16'b0011010000010001;
    sda_OV[124] = 16'b0011101100010010;
    sda_OV[125] = 16'b1010010010001000;
    sda_OV[126] = 16'b1001011000000000;
    sda_OV[127] = 16'b1001011100110000;
    sda_OV[128] = 16'b1001100000100000;
    sda_OV[129] = 16'b1001100100110000;
    sda_OV[130] = 16'b1001101010000100;
    sda_OV[131] = 16'b1001101100101001;
    sda_OV[132] = 16'b1001110000000011;
    sda_OV[133] = 16'b1001110101001100;
    sda_OV[134] = 16'b1001111000111111;
    sda_OV[135] = 16'b0111100000000100;
    sda_OV[136] = 16'b0111100100000001;
    sda_OV[137] = 16'b1100100011110000;
    sda_OV[138] = 16'b0111100100001111;
    sda_OV[139] = 16'b1100100000000000;
    sda_OV[140] = 16'b0111100100010000;
    sda_OV[141] = 16'b1100100011111110;
    sda_OV[142] = 16'b0111100100001010;
    sda_OV[143] = 16'b1100100010000000;
    sda_OV[144] = 16'b0111100100001011;
    sda_OV[145] = 16'b1100100000000001;
    sda_OV[146] = 16'b0111100100001100;
    sda_OV[147] = 16'b1100100000001111;
    sda_OV[148] = 16'b0111100100001101;
    sda_OV[149] = 16'b1100100000100000;
    sda_OV[150] = 16'b0111100100001001;
    sda_OV[151] = 16'b1100100010000000;
    sda_OV[152] = 16'b0111100100000010;
    sda_OV[153] = 16'b1100100011000000;
    sda_OV[154] = 16'b0111100100000011;
    sda_OV[155] = 16'b1100100001000000;
    sda_OV[156] = 16'b0111100100000101;
    sda_OV[157] = 16'b1100100000110000;
    sda_OV[158] = 16'b0111100100100110;
    sda_OV[159] = 16'b1111111111111011;
    sda_OV[160] = 16'b1111111111111111;
    sda_OV[161] = 16'b1111111111111111;
    sda_OV[162] = 0;
    sda_OV[163] = 0;
    sda_OV[164] = 0;
    sda_OV[165] = 0;
    sda_OV[166] = 0;
    sda_OV[167] = 0;
    sda_OV[168] = 0;
    sda_OV[169] = 0;
    sda_OV[170] = 0;
    sda_OV[171] = 0;
    sda_OV[172] = 0;
    sda_OV[173] = 0;
    sda_OV[174] = 0;
    sda_OV[175] = 0;
    sda_OV[176] = 0;
    sda_OV[177] = 0;
    sda_OV[178] = 0;
    sda_OV[179] = 0;
    sda_OV[180] = 0;
    sda_OV[181] = 0;
    sda_OV[182] = 0;
    sda_OV[183] = 0;
    sda_OV[184] = 0;
    sda_OV[185] = 0;
    sda_OV[186] = 0;
    sda_OV[187] = 0;
    sda_OV[188] = 0;
    sda_OV[189] = 0;
    sda_OV[190] = 0;
    sda_OV[191] = 0;
    sda_OV[192] = 0;
    sda_OV[193] = 0;
    sda_OV[194] = 0;
    sda_OV[195] = 0;
    sda_OV[196] = 0;
    sda_OV[197] = 0;
    sda_OV[198] = 0;
    sda_OV[199] = 0;
    sda_OV[200] = 0;
    sda_OV[201] = 0;
    sda_OV[202] = 0;
    sda_OV[203] = 0;
    sda_OV[204] = 0;
    sda_OV[205] = 0;
    sda_OV[206] = 0;
    sda_OV[207] = 0;
    sda_OV[208] = 0;
    sda_OV[209] = 0;
    sda_OV[210] = 0;
    sda_OV[211] = 0;
    sda_OV[212] = 0;
    sda_OV[213] = 0;
    sda_OV[214] = 0;
    sda_OV[215] = 0;
    sda_OV[216] = 0;
    sda_OV[217] = 0;
    sda_OV[218] = 0;
    sda_OV[219] = 0;
    sda_OV[220] = 0;
    sda_OV[221] = 0;
    sda_OV[222] = 0;
    sda_OV[223] = 0;
    sda_OV[224] = 0;
    sda_OV[225] = 0;
    sda_OV[226] = 0;
    sda_OV[227] = 0;
    sda_OV[228] = 0;
    sda_OV[229] = 0;
    sda_OV[230] = 0;
    sda_OV[231] = 0;
    sda_OV[232] = 0;
    sda_OV[233] = 0;
    sda_OV[234] = 0;
    sda_OV[235] = 0;
    sda_OV[236] = 0;
    sda_OV[237] = 0;
    sda_OV[238] = 0;
    sda_OV[239] = 0;
    sda_OV[240] = 0;
    sda_OV[241] = 0;
    sda_OV[242] = 0;
    sda_OV[243] = 0;
    sda_OV[244] = 0;
    sda_OV[245] = 0;
    sda_OV[246] = 0;
    sda_OV[247] = 0;
    sda_OV[248] = 0;
    sda_OV[249] = 0;
    sda_OV[250] = 0;
    sda_OV[251] = 0;
    sda_OV[252] = 0;
    sda_OV[253] = 0;
    sda_OV[254] = 0;
    sda_OV[255] = 0;
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_0&(~_net_1))&((_net_0&_net_1)&(~_net_5)))|(((_net_0&(~_net_1))|((_net_0&_net_1)&(~_net_5)))&((_net_0&_net_1)&_net_5))))   count <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_net_0&(~_net_1)))
      count <= (count+10'b0000000001);
else if (((_net_0&_net_1)&(~_net_5)))
      count <= 10'b0000000000;
else if (((_net_0&_net_1)&_net_5))
      count <= 10'b0001100011;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_0&(~_net_1))|((_net_0&_net_1)&(~_net_5)))|((_net_0&_net_1)&_net_5))==1'b1) ||
 ((((_net_0&(~_net_1))|((_net_0&_net_1)&(~_net_5)))|((_net_0&_net_1)&_net_5))==1'b0) ) begin
 if ((((_net_0&(~_net_1))&((_net_0&_net_1)&(~_net_5)))|(((_net_0&(~_net_1))|((_net_0&_net_1)&(~_net_5)))&((_net_0&_net_1)&_net_5))))
 begin $display("Warning: assign collision(camera:count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     sda_sig <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_18&_net_23)&_net_34)&((_net_18&_net_23)&_net_27)))   sda_sig <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_18&_net_23)&_net_34))
      sda_sig <= (_net_35[30:15]);
else if (((_net_18&_net_23)&_net_27))
      sda_sig <= (sda_OV[_net_31]);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_18&_net_23)&_net_34)|((_net_18&_net_23)&_net_27))==1'b1) ||
 ((((_net_18&_net_23)&_net_34)|((_net_18&_net_23)&_net_27))==1'b0) ) begin
 if ((((_net_18&_net_23)&_net_34)&((_net_18&_net_23)&_net_27)))
 begin $display("Warning: assign collision(camera:sda_sig) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:sda_sig) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     scl_reg <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((_net_18&_net_22)&(_net_18&_net_21)))   scl_reg <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_net_18&_net_22))
      scl_reg <= 1'b0;
else if ((_net_18&_net_21))
      scl_reg <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_net_18&_net_22)|(_net_18&_net_21))==1'b1) ||
 (((_net_18&_net_22)|(_net_18&_net_21))==1'b0) ) begin
 if (((_net_18&_net_22)&(_net_18&_net_21)))
 begin $display("Warning: assign collision(camera:scl_reg) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:scl_reg) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     sda_reg <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((((((_net_18&_net_23)&_net_36)&((_net_18&_net_23)&_net_34))|((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))&((_net_18&_net_23)&_net_27)))|(((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))|((_net_18&_net_23)&_net_27))&((_net_18&_net_23)&_net_25)))|((((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))|((_net_18&_net_23)&_net_27))|((_net_18&_net_23)&_net_25))&((_net_18&_net_23)&_net_24))))   sda_reg <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_18&_net_23)&_net_36))
      sda_reg <= 1'b0;
else if (((_net_18&_net_23)&_net_34))
      sda_reg <= (sda_sig[14]);
else if (((_net_18&_net_23)&_net_27))
      sda_reg <= (_net_30[15]);
else if (((_net_18&_net_23)&_net_25))
      sda_reg <= (adr[6]);
else if (((_net_18&_net_23)&_net_24))
      sda_reg <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))|((_net_18&_net_23)&_net_27))|((_net_18&_net_23)&_net_25))|((_net_18&_net_23)&_net_24))==1'b1) ||
 (((((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))|((_net_18&_net_23)&_net_27))|((_net_18&_net_23)&_net_25))|((_net_18&_net_23)&_net_24))==1'b0) ) begin
 if (((((((_net_18&_net_23)&_net_36)&((_net_18&_net_23)&_net_34))|((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))&((_net_18&_net_23)&_net_27)))|(((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))|((_net_18&_net_23)&_net_27))&((_net_18&_net_23)&_net_25)))|((((((_net_18&_net_23)&_net_36)|((_net_18&_net_23)&_net_34))|((_net_18&_net_23)&_net_27))|((_net_18&_net_23)&_net_25))&((_net_18&_net_23)&_net_24))))
 begin $display("Warning: assign collision(camera:sda_reg) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:sda_reg) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     times <= 1'b0;
else if (_net_37)
      times <= (~times);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     adr <= 7'b0000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_18&_net_23)&_net_25)&((_net_18&_net_23)&_net_24)))   adr <= 7'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_18&_net_23)&_net_25))
      adr <= (_net_26[12:6]);
else if (((_net_18&_net_23)&_net_24))
      adr <= 7'b1000010;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_18&_net_23)&_net_25)|((_net_18&_net_23)&_net_24))==1'b1) ||
 ((((_net_18&_net_23)&_net_25)|((_net_18&_net_23)&_net_24))==1'b0) ) begin
 if ((((_net_18&_net_23)&_net_25)&((_net_18&_net_23)&_net_24)))
 begin $display("Warning: assign collision(camera:adr) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:adr) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     clk <= 1'b0;
else   clk <= (~clk);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     arg_r <= 4'b0000;
else if ((_net_37&_net_38))
      arg_r <= (in_data[3:0]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     arg_g <= 4'b0000;
else if ((_net_37&(times != 1'b0)))
      arg_g <= (in_data[7:4]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     arg_b <= 4'b0000;
else if ((_net_37&(times != 1'b0)))
      arg_b <= (in_data[3:0]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_37&_net_38)&(~_net_39))&((_net_37&_net_38)&_net_39)))   plot_num_x <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_37&_net_38)&(~_net_39)))
      plot_num_x <= (plot_num_x+10'b0000000001);
else if (((_net_37&_net_38)&_net_39))
      plot_num_x <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_37&_net_38)&(~_net_39))|((_net_37&_net_38)&_net_39))==1'b1) ||
 ((((_net_37&_net_38)&(~_net_39))|((_net_37&_net_38)&_net_39))==1'b0) ) begin
 if ((((_net_37&_net_38)&(~_net_39))&((_net_37&_net_38)&_net_39)))
 begin $display("Warning: assign collision(camera:plot_num_x) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:plot_num_x) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((_net_37&_net_38)&_net_39)&(~_net_40))&(((_net_37&_net_38)&_net_39)&_net_40)))   plot_num_y <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((((_net_37&_net_38)&_net_39)&(~_net_40)))
      plot_num_y <= (plot_num_y+10'b0000000001);
else if ((((_net_37&_net_38)&_net_39)&_net_40))
      plot_num_y <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((_net_37&_net_38)&_net_39)&(~_net_40))|(((_net_37&_net_38)&_net_39)&_net_40))==1'b1) ||
 (((((_net_37&_net_38)&_net_39)&(~_net_40))|(((_net_37&_net_38)&_net_39)&_net_40))==1'b0) ) begin
 if (((((_net_37&_net_38)&_net_39)&(~_net_40))&(((_net_37&_net_38)&_net_39)&_net_40)))
 begin $display("Warning: assign collision(camera:plot_num_y) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:plot_num_y) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     pc <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_0&_net_1)&(~_net_5))&((_net_0&_net_1)&_net_5)))   pc <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_0&_net_1)&(~_net_5)))
      pc <= (pc+10'b0000000001);
else if (((_net_0&_net_1)&_net_5))
      pc <= 10'b0010100000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_0&_net_1)&(~_net_5))|((_net_0&_net_1)&_net_5))==1'b1) ||
 ((((_net_0&_net_1)&(~_net_5))|((_net_0&_net_1)&_net_5))==1'b0) ) begin
 if ((((_net_0&_net_1)&(~_net_5))&((_net_0&_net_1)&_net_5)))
 begin $display("Warning: assign collision(camera:pc) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:pc) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     scl_clk <= 16'b0000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_13)&_net_13))   scl_clk <= 16'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_13))
      scl_clk <= (scl_clk+16'b0000000000000001);
else if (_net_13)
      scl_clk <= 16'b0000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_13)|_net_13)==1'b1) ||
 (((~_net_13)|_net_13)==1'b0) ) begin
 if (((~_net_13)&_net_13))
 begin $display("Warning: assign collision(camera:scl_clk) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:scl_clk) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     start_count <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((~_net_6)&(_net_6&_net_10))|(((~_net_6)|(_net_6&_net_10))&(_net_6&_net_8)))|((((~_net_6)|(_net_6&_net_10))|(_net_6&_net_8))&(_net_6&_net_7))))   start_count <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_6))
      start_count <= (start_count+32'b00000000000000000000000000000001);
else if ((_net_6&_net_10))
      start_count <= ({16'b0000000000000000,_net_11});
else if ((_net_6&_net_8))
      start_count <= ({22'b0000000000000000000000,_net_9});
else if ((_net_6&_net_7))
      start_count <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((~_net_6)|(_net_6&_net_10))|(_net_6&_net_8))|(_net_6&_net_7))==1'b1) ||
 (((((~_net_6)|(_net_6&_net_10))|(_net_6&_net_8))|(_net_6&_net_7))==1'b0) ) begin
 if (((((~_net_6)&(_net_6&_net_10))|(((~_net_6)|(_net_6&_net_10))&(_net_6&_net_8)))|((((~_net_6)|(_net_6&_net_10))|(_net_6&_net_8))&(_net_6&_net_7))))
 begin $display("Warning: assign collision(camera:start_count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:start_count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     tx_count <= 6'b000000;
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     I2C_START_STOP <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((_net_14&(~_net_15))&(_net_14&_net_15)))   I2C_START_STOP <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_net_14&(~_net_15)))
      I2C_START_STOP <= (I2C_START_STOP+10'b0000000001);
else if ((_net_14&_net_15))
      I2C_START_STOP <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_net_14&(~_net_15))|(_net_14&_net_15))==1'b1) ||
 (((_net_14&(~_net_15))|(_net_14&_net_15))==1'b0) ) begin
 if (((_net_14&(~_net_15))&(_net_14&_net_15)))
 begin $display("Warning: assign collision(camera:I2C_START_STOP) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(camera:I2C_START_STOP) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
endmodule

/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Sat Dec 28 10:48:15 2024
 Licensed to :EVALUATION USER*/
