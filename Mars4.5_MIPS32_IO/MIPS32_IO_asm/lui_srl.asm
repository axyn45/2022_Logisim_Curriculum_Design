addi $9,$0,0x5555
lui $8,0x5555
or $8,$8,$9
srl $12,$8,31
sll $8,$8,1
or $8,$8,$12
sw $8,0($0)
syscall
