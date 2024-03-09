# ---- ALL BEFORE MEMORY INTERFACING 

# ADDI TEST - works

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
add_force reset 1
run 10 ns
add_force CPU_no_mem/dflow/reg_file/registers[1] -radix hex 0000000F
add_force memorydatain 00100000001000000000000000001000
add_force reset 0
run 100 ns

# ADDU TEST - works

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
add_force reset 1
run 10 ns
add_force CPU_no_mem/dflow/reg_file/registers[1] -radix hex 0000000F
add_force CPU_no_mem/dflow/reg_file/registers[2] -radix hex 0000000F
add_force memorydatain 00000000001000100000000000100001
add_force reset 0
run 100 ns

# J TEST - pretty sure this works

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
add_force reset 1
run 10 ns
add_force memorydatain 00001000001010101011110000110000
add_force reset 0
run 20 ns

# SUB TEST

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
add_force reset 1
run 10 ns
add_force CPU_no_mem/dflow/reg_file/registers[1] -radix hex 0000000F
add_force CPU_no_mem/dflow/reg_file/registers[2] -radix hex 0000000E
# r1 - r2 => r0
# r0 = 1
add_force memorydatain 00000000001000100000000000100010
add_force reset 0
run 100 ns

# LUI TEST

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
add_force reset 1
run 10 ns
add_force memorydatain 00111100000000010000000011111111
#add_force memorydatain 00100000001000000000000000001000
add_force reset 0
run 50 ns



# ---- AFTER MEM INTERFACING

# LUI

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
for {set i 0} {$i < 16} {incr i} {
	remove_force /cpu_tb/U_1/mw_U_0ram_table[$i]
}
add_wave {{/cpu_tb/U_1}} 
#lui $1, 0x00001001
#3C0100FF
add_force {/cpu_tb/U_1/mw_U_0ram_table[0]} 00111100000000010000000011111111
run 2500ps
add_force reset 1
run 5 ns
add_force reset 0

run 100 ns

# LW

restart
add_force clock 1 {0 5ns} -repeat_every 10ns
for {set i 0} {$i < 16} {incr i} {
	remove_force /cpu_tb/U_1/mw_U_0ram_table[$i]
}
add_wave {{/cpu_tb/U_1}}

#lui $1, 0x00001001
# sw, r1, 16 (00ff0000 -> mem address 16)
# lw  r2, 16 (00ff0000 -> r2)
add_force {/cpu_tb/U_1/mw_U_0ram_table[0]} 00111100000000010000000011111111
add_force {/cpu_tb/U_1/mw_U_0ram_table[1]} 101011 00000 00001 0000000000010000
add_force {/cpu_tb/U_1/mw_U_0ram_table[2]} 100011 00000 00010 0000000000010000

run 2500ps
add_force reset 1
run 5 ns
add_force reset 0

run 100 ns

# Test 10 - RUN SEPARATELY

# multu $1, $2
# mfhi $3 000000 00 0000 0000 00011 010000
# mflo $4 000000 00 0000 0000 00100 010010

restart

add_wave {{/cpu_tb/U_1}} 
for {set i 0} {$i < 16} {incr i} {
	remove_force /cpu_tb/U_1/mw_U_0ram_table[$i]
}
#forcing a clock with 10 ns period
add_force clock 1 {0 5ns} -repeat_every 10ns

add_force {/cpu_tb/cpu/dflow/reg_file/registers[1]} -radix hex {FEDCBA98}
add_force {/cpu_tb/cpu/dflow/reg_file/registers[2]} -radix hex {F1234567}


# you can use any of the following commands as an example on how to initilaize a memory location with a value
add_force {/cpu_tb/U_1/mw_U_0ram_table[0]} -radix hex {00220019} 
add_force {/cpu_tb/U_1/mw_U_0ram_table[1]} -radix hex {000000D0} 
add_force {/cpu_tb/U_1/mw_U_0ram_table[2]} -radix hex {00000112} 
add_force {/cpu_tb/U_1/mw_U_0ram_table[3]} -radix hex {00000000}
add_force {/cpu_tb/U_1/mw_U_0ram_table[4]} -radix hex {00000000}
add_force {/cpu_tb/U_1/mw_U_0ram_table[5]} -radix hex {00000000}
add_force {/cpu_tb/U_1/mw_U_0ram_table[6]} -radix hex {00000000}
add_force {/cpu_tb/U_1/mw_U_0ram_table[7]} -radix hex {00000000}

#give a reset signal
run 2500ps
add_force reset 1
run 5 ns
add_force reset 0

run 1000 us