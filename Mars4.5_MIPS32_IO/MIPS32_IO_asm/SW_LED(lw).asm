start:
addi $8,$0,0x100
lw $7,0x24($8)
sw $7,0x28($8)
j start

syscall
