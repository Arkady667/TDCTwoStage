onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ShiftRegister -L xil_defaultlib -L xpm -L xbip_utils_v3_0_7 -L c_reg_fd_v12_0_3 -L c_mux_bit_v12_0_3 -L c_shift_ram_v12_0_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ShiftRegister xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ShiftRegister.udo}

run -all

endsim

quit -force
