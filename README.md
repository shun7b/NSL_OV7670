# NSL_OV7670　FPGAカメラ制御した。<br>
top module cam_test.v
<br>camera 制御　camear.v
<br>VGA設定　VGA.v
<br>FPGA DE0CVボード使用した。
<br>カメラ制御はvram.vに画像データを保存するようにした。（１２８＊１２８の対応）
<br>nsl2vl でNSLをverilogHDLにした。
<br>ただし、cam_test.vは変更した。
<br>１２８＊１２８の配列に画像データを書き込みVGAで表示した。
<br>GPIOでカメラとFPGAを通信した。
<br>GPIOのピンはcam_test.qsfを参照
<br>VGA.v,cam_test.v,camera.v,vram.vのみで論理合成するとできた。
