onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FifoVDL_opt

do {wave.do}

view wave
view structure
view signals

do {FifoVDL.udo}

run -all

quit -force
