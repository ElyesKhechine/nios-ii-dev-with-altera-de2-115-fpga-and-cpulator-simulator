# Design an assembly program that alternately turns on all the
# red leds in even positions and all red leds in odd positions
# Note: Observe the assignment of the space address
# address of the NIOS II processor of the parallel interface of the red leds


# ---------------------------- version 2 ---------------------------------

.global _start
_start:

movia r2, 0x10000000  # Red LEDs
movia r3, 0b101010101010101010
movia r4, 0b010101010101010101
movia r5, 0x500000

buclePrincipal:

stwio r3, 0(r2)
addi r6, r0, r5

loopPares:

subi r6, r6, 1
bne r6, r0, loopPares
stwio r4, 0(r2)
addi r6, r0, r5

loopImpares:

subi r6, r6, 1
bne r6, r0, loopImpares
br buclePrincipal