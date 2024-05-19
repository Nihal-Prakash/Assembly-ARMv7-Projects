//the LED addresses are compatible to CPU simulator (https://cpulator.01xz.net/?sys=arm-de1soc)

.equ svsg, 0xff200020
.global _start

_start:
        // r0: store the address of 7 segment display
        // r1: load the input list
        // r2: load and store indivisual elements from input

        LDR R0,=svsg
        LDR R1,=list

        LDR R2,[R1]
        STR R2,[R0]

        LDR R2,[R1,#4]
        STR R2,[R0]

        LDR R2,[R1,#8]
        STR R2,[R0]

        LDR R2,[R1,#12]
        STR R2,[R0]

        LDR R2,[R1,#16]
        STR R2,[R0]

        LDR R2,[R1,#20]
        STR R2,[R0]

        LDR R2,[R1,#24]
        STR R2,[R0]

        LDR R2,[R1,#28]
        STR R2,[R0]

        LDR R2,[R1,#32]
        STR R2,[R0]

        LDR R2,[R1,#36]
        STR R2,[R0]



.section .data
list:
        .word 63,6,91,79,102,109,125,7,127,111
        // binary converts to corresponding segment to light up for each number