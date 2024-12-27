#define LIMIT_PC 126
#define SCL_FULL_TIME 200
#define SCL_HARF_TIME 100
#define WAIT_STA 10
#define WAIT 207
#define WAIT_PC 59900//59698
#define MAX_COUNT 26
#define BIT_SCL 16
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