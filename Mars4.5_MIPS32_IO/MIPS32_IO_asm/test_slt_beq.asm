addi $1,$0,1
addi $2,$0,4
addi $3,$0,4
slt $4,$3,$2
beq $4,$1,l1
addi $5,$0,0x1111
sw $5,0($0)
j l2
l1:addi $5,$0,0x2222
sw $5,0($0)
l2:syscall
