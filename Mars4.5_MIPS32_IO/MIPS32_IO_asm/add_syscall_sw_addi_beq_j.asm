addi $1,$0,0x1234
addi $2,$0,0x4321
add $3,$1,$2
addi $4,$0,0x4555
beq $4,$3,L1
sw $2,0($0)
j L2
L1:sw $1,0($0)
L2:syscall
