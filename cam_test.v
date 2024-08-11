
/*Produced by NSL Core(version=20240424), IP ARCH, Inc. Mon Aug 12 00:06:14 2024
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module cam_test ( p_reset , m_clock , in_data , href , pclk , xclk , c_vsync , sda , scl , reset , pwdn , VGA_R , VGA_B , VGA_G , VGA_VS , VGA_HS , HEX0 );
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
  output VGA_VS;
  wire VGA_VS;
  output VGA_HS;
  wire VGA_HS;
  output [7:0] HEX0;
  wire [7:0] HEX0;
  reg [31:0] VGA_plot_num_x;
  reg [31:0] VGA_plot_num_y;
  reg [31:0] plot_num_x;
  wire [31:0] plot_num;
  wire [31:0] plot_nums;
  reg [31:0] plot_num_y;
  wire [3:0] _VGA_out_VGA_R;
  wire [3:0] _VGA_out_VGA_B;
  wire [3:0] _VGA_out_VGA_G;
  wire _VGA_out_VGA_VS;
  wire _VGA_out_VGA_HS;
  wire [7:0] _VGA_out_HEX0;
  wire [9:0] _VGA_out_plot_num_x;
  wire [9:0] _VGA_out_plot_num_y;
  wire [3:0] _VGA_out_VGA_RI;
  wire _VGA_out_p_reset;
  wire _VGA_out_m_clock;
  wire [7:0] _camera_out_in_data;
  wire _camera_out_href;
  wire _camera_out_pclk;
  wire _camera_out_xclk;
  wire _camera_out_c_vsync;
  wire _camera_out_sda;
  wire _camera_out_scl;
  wire _camera_out_reset;
  wire _camera_out_pwdn;
  wire [3:0] _camera_out_VGA_R;
  wire [3:0] _camera_out_VGA_B;
  wire [3:0] _camera_out_VGA_G;
  wire [9:0] _camera_out_out_plot_num_x;
  wire _camera_out_time_RGB;
  wire [9:0] _camera_out_out_plot_num_y;
  wire _camera_out_p_reset;
  wire _camera_out_m_clock;
  wire [3:0] _vram_x_data;
  wire [13:0] _vram_x_rdaddress;
  wire [13:0] _vram_x_wraddress;
  wire _vram_x_wren;
  wire [3:0] _vram_x_q;
  wire _vram_x_p_reset;
  wire _vram_x_m_clock;
  wire [3:0] _vram_x_2_data;
  wire [13:0] _vram_x_2_rdaddress;
  wire [13:0] _vram_x_2_wraddress;
  wire _vram_x_2_wren;
  wire [3:0] _vram_x_2_q;
  wire _vram_x_2_p_reset;
  wire _vram_x_2_m_clock;
  wire [3:0] _vram_x_1_data;
  wire [13:0] _vram_x_1_rdaddress;
  wire [13:0] _vram_x_1_wraddress;
  wire _vram_x_1_wren;
  wire [3:0] _vram_x_1_q;
  wire _vram_x_1_p_reset;
  wire _vram_x_1_m_clock;
  wire [9:0] _net_0;
  wire [9:0] _net_1;
  wire [63:0] _net_2;
  wire [9:0] _net_3;
  wire [9:0] _net_4;
  wire [63:0] _net_5;
  wire _net_6;
  wire [31:0] _net_7;
  wire [31:0] _net_8;
  wire [31:0] _net_9;
  wire [31:0] _net_10;
  wire _net_11;
  wire [31:0] _net_12;
  wire [31:0] _net_13;
  wire [31:0] _net_14;
  wire [31:0] _net_15;
vram vram_x (.clock(m_clock), .data(_vram_x_data), .rdaddress(_vram_x_rdaddress), .wraddress(_vram_x_wraddress), .wren(_vram_x_wren), .q(_vram_x_q));
vram vram_x_2 (.clock(m_clock), .data(_vram_x_2_data), .rdaddress(_vram_x_2_rdaddress), .wraddress(_vram_x_2_wraddress), .wren(_vram_x_2_wren), .q(_vram_x_2_q));
vram vram_x_1 (.clock(m_clock), .data(_vram_x_1_data), .rdaddress(_vram_x_1_rdaddress), .wraddress(_vram_x_1_wraddress), .wren(_vram_x_1_wren), .q(_vram_x_1_q));
camera camera_out (.m_clock(m_clock), .p_reset( p_reset), .out_plot_num_y(_camera_out_out_plot_num_y), .out_plot_num_x(_camera_out_out_plot_num_x), .time_RGB(_camera_out_time_RGB), .VGA_R(_camera_out_VGA_R), .VGA_B(_camera_out_VGA_B), .VGA_G(_camera_out_VGA_G), .sda(_camera_out_sda), .scl(_camera_out_scl), .reset(_camera_out_reset), .pwdn(_camera_out_pwdn), .c_vsync(_camera_out_c_vsync), .xclk(_camera_out_xclk), .pclk(_camera_out_pclk), .href(_camera_out_href), .in_data(_camera_out_in_data));
VGA VGA_out (.m_clock(m_clock), .p_reset( p_reset), .VGA_RI(_VGA_out_VGA_RI), .VGA_R(_VGA_out_VGA_R), .VGA_B(_VGA_out_VGA_B), .VGA_G(_VGA_out_VGA_G), .VGA_VS(_VGA_out_VGA_VS), .VGA_HS(_VGA_out_VGA_HS), .HEX0(_VGA_out_HEX0), .plot_num_x(_VGA_out_plot_num_x), .plot_num_y(_VGA_out_plot_num_y));

   assign  plot_num = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?_net_10:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  plot_nums = 
// synthesis translate_off
// synopsys translate_off
(_net_11)? 
// synthesis translate_on
// synopsys translate_on
((_net_11)?_net_15:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _VGA_out_p_reset = p_reset;
   assign  _VGA_out_m_clock = m_clock;
   assign  _camera_out_in_data = in_data;
   assign  _camera_out_href = href;
   assign  _camera_out_pclk = pclk;
   assign  _camera_out_c_vsync = c_vsync;
   assign  _camera_out_p_reset = p_reset;
   assign  _camera_out_m_clock = m_clock;
   assign  _vram_x_data = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?_camera_out_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_11)? 
// synthesis translate_on
// synopsys translate_on
((_net_11)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
_net_6
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_p_reset = p_reset;
   assign  _vram_x_m_clock = m_clock;
   assign  _vram_x_2_data = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?_camera_out_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_11)? 
// synthesis translate_on
// synopsys translate_on
((_net_11)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
_net_6
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_p_reset = p_reset;
   assign  _vram_x_2_m_clock = m_clock;
   assign  _vram_x_1_data = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?_camera_out_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_11)? 
// synthesis translate_on
// synopsys translate_on
((_net_11)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
_net_6
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_p_reset = p_reset;
   assign  _vram_x_1_m_clock = m_clock;
   assign  _net_0 = _camera_out_out_plot_num_x;
   assign  _net_1 = _camera_out_out_plot_num_y;
   assign  _net_2 = ({({22'b0000000000000000000000,_net_1}),32'b00000000000000000000000000000000});
   assign  _net_3 = _VGA_out_plot_num_x;
   assign  _net_4 = _VGA_out_plot_num_y;
   assign  _net_5 = ({({22'b0000000000000000000000,_net_4}),32'b00000000000000000000000000000000});
   assign  _net_6 = ((((_camera_out_out_plot_num_x >= 10'b0000000000)&(_camera_out_out_plot_num_x < 10'b0010000000))&(_camera_out_out_plot_num_y >= 10'b0000000000))&(_camera_out_out_plot_num_y < 10'b0010000000));
   assign  _net_7 = plot_num_x;
   assign  _net_8 = plot_num_y;
   assign  _net_9 = _net_8;
   assign  _net_10 = (_net_7+_net_9);
   assign  _net_11 = (((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0000000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0010000000))&(_VGA_out_plot_num_y >= 10'b0000000000))&(_VGA_out_plot_num_y < 10'b0010000000));
   assign  _net_12 = VGA_plot_num_x;
   assign  _net_13 = VGA_plot_num_y;
   assign  _net_14 = _net_13;
   assign  _net_15 = (_net_12+_net_14);
   assign  xclk = _camera_out_xclk;
   assign  sda = _camera_out_sda;
   assign  scl = _camera_out_scl;
   assign  reset = _camera_out_reset;
   assign  pwdn = _camera_out_pwdn;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((~_net_11)&_net_11))
 begin $display("Warning: assign collision(cam_test:VGA_R) at %d",$time);
if ((~_net_11)) $display("assert ((~_net_11)) line 56 at %d\n",$time);
if (_net_11) $display("assert (_net_11) line 54 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_R = 
// synthesis translate_off
// synopsys translate_off
(((~_net_11)&_net_11))? 4'bx :(((~_net_11)|_net_11))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_11))?4'b0000:4'b0)|
    ((_net_11)?_vram_x_2_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((~_net_11)&_net_11))
 begin $display("Warning: assign collision(cam_test:VGA_B) at %d",$time);
if ((~_net_11)) $display("assert ((~_net_11)) line 58 at %d\n",$time);
if (_net_11) $display("assert (_net_11) line 52 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_B = 
// synthesis translate_off
// synopsys translate_off
(((~_net_11)&_net_11))? 4'bx :(((~_net_11)|_net_11))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_11))?4'b0000:4'b0)|
    ((_net_11)?_vram_x_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((~_net_11)&_net_11))
 begin $display("Warning: assign collision(cam_test:VGA_G) at %d",$time);
if ((~_net_11)) $display("assert ((~_net_11)) line 57 at %d\n",$time);
if (_net_11) $display("assert (_net_11) line 53 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_G = 
// synthesis translate_off
// synopsys translate_off
(((~_net_11)&_net_11))? 4'bx :(((~_net_11)|_net_11))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_11))?4'b0000:4'b0)|
    ((_net_11)?_vram_x_1_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  VGA_VS = _VGA_out_VGA_VS;
   assign  VGA_HS = _VGA_out_VGA_HS;
   assign  HEX0 = _VGA_out_HEX0;
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_x <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_x <= ({22'b0000000000000000000000,_net_3});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_y <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_y <= (_net_5[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x <= 32'b00000000000000000000000000000000;
else   plot_num_x <= ({22'b0000000000000000000000,_net_0});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y <= 32'b00000000000000000000000000000000;
else   plot_num_y <= (_net_2[56:25]);
end
endmodule

/*Produced by NSL Core(version=20240424), IP ARCH, Inc. Mon Aug 12 00:06:14 2024
 Licensed to :EVALUATION USER*/
