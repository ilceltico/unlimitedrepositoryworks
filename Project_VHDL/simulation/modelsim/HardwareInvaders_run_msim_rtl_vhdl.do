transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/PLL.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/VGA_Timing.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/VGA_RAMDAC.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/vga_package.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/VGA_FrameBuffer.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/HI_package.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/sprite_renderer.vhd}
vcom -93 -work work {C:/Users/Luca/Documents/unlimitedrepositoryworks/Project_VHDL/HardwareInvaders.vhd}

