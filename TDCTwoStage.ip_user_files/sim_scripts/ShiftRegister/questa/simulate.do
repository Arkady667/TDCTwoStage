onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ShiftRegister_opt

do {wave.do}

view wave
view structure
view signals

do {ShiftRegister.udo}

run -all

quit -force
