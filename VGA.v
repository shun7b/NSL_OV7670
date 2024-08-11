
/*Produced by NSL Core(version=20240424), IP ARCH, Inc. Sat Aug 10 09:11:44 2024
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module VGA ( p_reset , m_clock , VGA_R , VGA_B , VGA_G , VGA_VS , VGA_HS , HEX0 , plot_num_x , plot_num_y , VGA_RI );
  input p_reset, m_clock;
  wire p_reset, m_clock;
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
  output [9:0] plot_num_x;
  wire [9:0] plot_num_x;
  output [9:0] plot_num_y;
  wire [9:0] plot_num_y;
  input [3:0] VGA_RI;
  wire [3:0] VGA_RI;
  reg [3:0] rVGA_R;
  reg [3:0] rVGA_G;
  reg [3:0] rVGA_B;
  reg vga_clock;
  reg [31:0] count;
  reg [9:0] hs_cnt;
  reg [9:0] vs_cnt;
  reg i_vs;
  reg i_hs;
  reg i_hdisp;
  reg i_vdisp;
  reg [7:0] first;
  wire h_count;
  wire v_count;
  reg [7:0] encode [0:15];
  wire _net_0;
  wire [3:0] _net_1;
  wire [7:0] _net_2;
  wire [7:0] _net_3;
  wire _net_4;
  wire _net_5;
  wire _net_6;
  wire _net_7;
  wire _net_8;
  wire _net_9;
  wire _net_10;
  wire _net_11;
  wire _net_12;
  wire _net_13;
  wire _net_14;


// synthesis translate_off
// synopsys translate_off
always @(posedge h_count)
  begin
#1 if (h_count===1'bx)
 begin
$display("Warning: control hazard(VGA:h_count) at %d",$time);
 end
#1 if ((((vga_clock != 1'b0))===1'bx) || (1'b1)===1'bx) $display("hazard ((vga_clock != 1'b0) || 1'b1) line 42 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  h_count = (vga_clock != 1'b0);

// synthesis translate_off
// synopsys translate_off
always @(posedge v_count)
  begin
#1 if (v_count===1'bx)
 begin
$display("Warning: control hazard(VGA:v_count) at %d",$time);
 end
#1 if ((((h_count&_net_4))===1'bx) || (1'b1)===1'bx) $display("hazard ((h_count&_net_4) || 1'b1) line 48 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  v_count = (h_count&_net_4);
   assign  _net_0 = (count==32'b00000010111110101111000010000000);
   assign  _net_1 = (_net_2[3:0]);
   assign  _net_2 = first;
   assign  _net_3 = (encode[_net_1]);
   assign  _net_4 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1100011111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_5 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?((hs_cnt > 10'b0000000111)&(hs_cnt < 10'b1010000111)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_6 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b0000000111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_7 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1011110111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_8 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1010010111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_9 = 
// synthesis translate_off
// synopsys translate_off
(h_count)? 
// synthesis translate_on
// synopsys translate_on
((h_count)?(hs_cnt==10'b1010000111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_10 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b1000001100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_11 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b1000001100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_12 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b0111101011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_13 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b0111101001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_14 = 
// synthesis translate_off
// synopsys translate_off
(v_count)? 
// synthesis translate_on
// synopsys translate_on
((v_count)?(vs_cnt==10'b0111011111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  VGA_R = rVGA_R;
   assign  VGA_B = rVGA_B;
   assign  VGA_G = rVGA_G;
   assign  VGA_VS = (~i_vs);
   assign  VGA_HS = (~i_hs);
   assign  HEX0 = (~_net_3);
   assign  plot_num_x = hs_cnt;
   assign  plot_num_y = vs_cnt;
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     rVGA_R <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((h_count&_net_9)&(h_count&_net_8))|(((h_count&_net_9)|(h_count&_net_8))&(h_count&_net_7)))|((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))&(h_count&_net_6)))|(((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))&(h_count&_net_5))))   rVGA_R <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_9))
      rVGA_R <= 4'b0000;
else if ((h_count&_net_8))
      rVGA_R <= 4'b0000;
else if ((h_count&_net_7))
      rVGA_R <= 4'b0000;
else if ((h_count&_net_6))
      rVGA_R <= 4'b0000;
else if ((h_count&_net_5))
      rVGA_R <= VGA_RI;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))|(h_count&_net_5))==1'b1) ||
 ((((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))|(h_count&_net_5))==1'b0) ) begin
 if ((((((h_count&_net_9)&(h_count&_net_8))|(((h_count&_net_9)|(h_count&_net_8))&(h_count&_net_7)))|((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))&(h_count&_net_6)))|(((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))&(h_count&_net_5))))
 begin $display("Warning: assign collision(VGA:rVGA_R) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:rVGA_R) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     rVGA_G <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((h_count&_net_9)&(h_count&_net_8))|(((h_count&_net_9)|(h_count&_net_8))&(h_count&_net_7)))|((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))&(h_count&_net_6)))|(((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))&(h_count&_net_5))))   rVGA_G <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_9))
      rVGA_G <= 4'b0000;
else if ((h_count&_net_8))
      rVGA_G <= 4'b0000;
else if ((h_count&_net_7))
      rVGA_G <= 4'b0000;
else if ((h_count&_net_6))
      rVGA_G <= 4'b0000;
else if ((h_count&_net_5))
      rVGA_G <= 4'b0000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))|(h_count&_net_5))==1'b1) ||
 ((((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))|(h_count&_net_5))==1'b0) ) begin
 if ((((((h_count&_net_9)&(h_count&_net_8))|(((h_count&_net_9)|(h_count&_net_8))&(h_count&_net_7)))|((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))&(h_count&_net_6)))|(((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))&(h_count&_net_5))))
 begin $display("Warning: assign collision(VGA:rVGA_G) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:rVGA_G) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     rVGA_B <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((h_count&_net_9)&(h_count&_net_8))|(((h_count&_net_9)|(h_count&_net_8))&(h_count&_net_7)))|((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))&(h_count&_net_6)))|(((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))&(h_count&_net_5))))   rVGA_B <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_9))
      rVGA_B <= 4'b0000;
else if ((h_count&_net_8))
      rVGA_B <= 4'b0000;
else if ((h_count&_net_7))
      rVGA_B <= 4'b0000;
else if ((h_count&_net_6))
      rVGA_B <= 4'b0000;
else if ((h_count&_net_5))
      rVGA_B <= 4'b0000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))|(h_count&_net_5))==1'b1) ||
 ((((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))|(h_count&_net_5))==1'b0) ) begin
 if ((((((h_count&_net_9)&(h_count&_net_8))|(((h_count&_net_9)|(h_count&_net_8))&(h_count&_net_7)))|((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))&(h_count&_net_6)))|(((((h_count&_net_9)|(h_count&_net_8))|(h_count&_net_7))|(h_count&_net_6))&(h_count&_net_5))))
 begin $display("Warning: assign collision(VGA:rVGA_B) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:rVGA_B) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     vga_clock <= 1'b0;
else   vga_clock <= (~vga_clock);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((~_net_0)&_net_0))   count <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~_net_0))
      count <= (count+32'b00000000000000000000000000000001);
else if (_net_0)
      count <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((~_net_0)|_net_0)==1'b1) ||
 (((~_net_0)|_net_0)==1'b0) ) begin
 if (((~_net_0)&_net_0))
 begin $display("Warning: assign collision(VGA:count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     hs_cnt <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((h_count&(~_net_4))&(h_count&_net_4)))   hs_cnt <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&(~_net_4)))
      hs_cnt <= (hs_cnt+10'b0000000001);
else if ((h_count&_net_4))
      hs_cnt <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((h_count&(~_net_4))|(h_count&_net_4))==1'b1) ||
 (((h_count&(~_net_4))|(h_count&_net_4))==1'b0) ) begin
 if (((h_count&(~_net_4))&(h_count&_net_4)))
 begin $display("Warning: assign collision(VGA:hs_cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:hs_cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     vs_cnt <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((v_count&(~_net_10))&(v_count&_net_10)))   vs_cnt <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((v_count&(~_net_10)))
      vs_cnt <= (vs_cnt+10'b0000000001);
else if ((v_count&_net_10))
      vs_cnt <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((v_count&(~_net_10))|(v_count&_net_10))==1'b1) ||
 (((v_count&(~_net_10))|(v_count&_net_10))==1'b0) ) begin
 if (((v_count&(~_net_10))&(v_count&_net_10)))
 begin $display("Warning: assign collision(VGA:vs_cnt) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:vs_cnt) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_vs <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((v_count&_net_13)&(v_count&_net_12)))   i_vs <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((v_count&_net_13))
      i_vs <= 1'b1;
else if ((v_count&_net_12))
      i_vs <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((v_count&_net_13)|(v_count&_net_12))==1'b1) ||
 (((v_count&_net_13)|(v_count&_net_12))==1'b0) ) begin
 if (((v_count&_net_13)&(v_count&_net_12)))
 begin $display("Warning: assign collision(VGA:i_vs) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:i_vs) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_hs <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((h_count&_net_8)&(h_count&_net_7)))   i_hs <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_8))
      i_hs <= 1'b1;
else if ((h_count&_net_7))
      i_hs <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((h_count&_net_8)|(h_count&_net_7))==1'b1) ||
 (((h_count&_net_8)|(h_count&_net_7))==1'b0) ) begin
 if (((h_count&_net_8)&(h_count&_net_7)))
 begin $display("Warning: assign collision(VGA:i_hs) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:i_hs) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_hdisp <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((h_count&_net_9)&(h_count&_net_6)))   i_hdisp <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((h_count&_net_9))
      i_hdisp <= 1'b1;
else if ((h_count&_net_6))
      i_hdisp <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((h_count&_net_9)|(h_count&_net_6))==1'b1) ||
 (((h_count&_net_9)|(h_count&_net_6))==1'b0) ) begin
 if (((h_count&_net_9)&(h_count&_net_6)))
 begin $display("Warning: assign collision(VGA:i_hdisp) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:i_hdisp) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     i_vdisp <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((v_count&_net_14)&(v_count&_net_11)))   i_vdisp <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((v_count&_net_14))
      i_vdisp <= 1'b1;
else if ((v_count&_net_11))
      i_vdisp <= 1'b0;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((v_count&_net_14)|(v_count&_net_11))==1'b1) ||
 (((v_count&_net_14)|(v_count&_net_11))==1'b0) ) begin
 if (((v_count&_net_14)&(v_count&_net_11)))
 begin $display("Warning: assign collision(VGA:i_vdisp) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(VGA:i_vdisp) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     first <= 8'b00000000;
else if (_net_0)
      first <= (first+8'b00000001);
end
initial begin
    encode[0] = 8'b00111111;
    encode[1] = 8'b00000110;
    encode[2] = 8'b01011011;
    encode[3] = 8'b01001111;
    encode[4] = 8'b01100110;
    encode[5] = 8'b01101101;
    encode[6] = 8'b01111101;
    encode[7] = 8'b00100111;
    encode[8] = 8'b01111111;
    encode[9] = 8'b01101111;
    encode[10] = 8'b01110111;
    encode[11] = 8'b01111100;
    encode[12] = 8'b00111001;
    encode[13] = 8'b01011110;
    encode[14] = 8'b01111001;
    encode[15] = 8'b01110001;
end
endmodule

/*Produced by NSL Core(version=20240424), IP ARCH, Inc. Sat Aug 10 09:11:44 2024
 Licensed to :EVALUATION USER*/
