.equ svsg, 0xff200020

.global _start
_start:
    // r0: store the address of 7 segment display
    // r1: load the input list
    // r2: load and store indivisual elements from input

        LDR R0,=svsg
        LDR R1,=list
        MOV R3,#0

 loop:
        LDR R2,[R1,R3]
        STR R2,[R0]
        ADD R3,#4
        CMP R3,#40
        BNE loop


.section .data
list:
        .word 63,6,91,79,102,109,125,7,127,111
        // binary converts to corresponding segment to light up for each number



