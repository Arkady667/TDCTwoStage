onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L xbip_utils_v3_0_7 -L c_reg_fd_v12_0_3 -L c_mux_bit_v12_0_3 -L c_shift_ram_v12_0_10 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ShiftRegister xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ShiftRegister.udo}

run -all

quit -force
