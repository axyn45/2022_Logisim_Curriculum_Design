addi $1,$0,0x1234
sll $1,$1,16
addi $1,$1,0x1234

addi $2,$0,0x4321
sll $2,$2,16
addi $2,$2,0x4321

add $3,$1,$2

addi $4,$0,0x5555
sll $4,$4,16
addi $4,$4,0x5555

beq $4,$3,L1
sw $2,0($0)
j L2
L1:sw $1,0($0)

L2:lw $5,0($0)

addi $6,$0,0x12
sb $6,4($0)

addi $6,$0,0x34
sb $6,5($0)

addi $6,$0,0x56
sb $6,6($0)

addi $6,$0,0x78
sb $6,7($0)

jal call1
addi $12,$0,0xcccc
sw $12,0xc($0)

syscall

call1:addi $8,$0,0x8888
sw $8,8($0)
jr $31
