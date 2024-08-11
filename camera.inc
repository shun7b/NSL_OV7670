declare camera{
    input in_data[8];
	input href;
	input pclk;
	output xclk;
    input c_vsync;
	output sda,scl,reset,pwdn;
	output VGA_R[4],VGA_B[4],VGA_G[4];
	output out_plot_num_x[10],time_RGB;
	
	output out_plot_num_y[10];
}