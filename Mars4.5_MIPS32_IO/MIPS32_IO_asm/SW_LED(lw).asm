start:
addi $7,$0,0x0000000000000001
addi $6,$0,0x000000001
addi $8,$0,0x100

#1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

#5
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

#10
sll $7,$7,1
addi $6,$0,0x000000001
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)

j start
syscall
