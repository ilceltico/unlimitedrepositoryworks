transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/VGA_RAMDAC.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/VGA_package.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/PLL.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/VGA_Timing.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/tetris_package.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/VGA_Framebuffer.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/Tetris_View.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/Tetris_Datapath.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/Tetris_Controller.vhd}
vcom -93 -work work {C:/Users/Luca/Desktop/tetris-vhdl-master/Tetris_DE1.vhd}

