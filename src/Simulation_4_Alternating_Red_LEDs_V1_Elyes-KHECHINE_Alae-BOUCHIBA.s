# Design an assembly program that alternately turns on all the
# red leds in even positions and all red leds in odd positions
# Note: Observe the assignment of the space address
# address of the NIOS II processor of the parallel interface of the red leds

# ---------------------------- version 1 ---------------------------------

.global _start
_start:

movia r1, 0x10000000                # Parallel port of the red leds
movia r2, 0b101010101010101010      # even positions
movia r3, 0b10101010101010101       # odd positions
                # One second of time
loop:
stwio r2, 0(r1)
movia r4, 0x500000
loopPares:
subi r4, r4, 1
bne r4, r0, loopPares
stwio r3, 0(r1)
movia r4, 0x500000
loopImpares:
subi r4, r4, 1
bne r4, r0, loopImpares
br loop
