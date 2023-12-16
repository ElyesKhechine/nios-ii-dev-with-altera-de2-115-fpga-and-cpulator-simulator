.global _start
_start:

movia r1, 0x10000020
movia r2, 0x3F
movia r3, 0x500000
addi r4, r0, 4

loop:
subi r3, r3, 1
bne r3, r0, loop
stwio r2, 0(r1)
roli r2, r2, 8  
movia r3, 0x500000
subi r4, r4, 1
beq r4, r0, _start
br loop