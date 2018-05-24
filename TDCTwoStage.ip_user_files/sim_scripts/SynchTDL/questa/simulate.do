onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SynchTDL_opt

do {wave.do}

view wave
view structure
view signals

do {SynchTDL.udo}

run -all

quit -force
