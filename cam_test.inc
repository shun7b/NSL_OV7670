declare cam_test{
    input in_data[8];
	input href;
	input pclk;
	output xclk;
    input c_vsync;
	output sda,scl,reset,pwdn;
    output VGA_R[4],VGA_B[4],VGA_G[4],VGA_VS,VGA_HS,HEX0[8];
}