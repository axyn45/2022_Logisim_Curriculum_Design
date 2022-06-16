addi $8,$0,0x100

########################################################################
s1:
addi $2,$0,0
addi $7,$0,0x0000000000000001
addi $6,$0,0x000000001
addi $8,$0,0x100

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#2
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#3
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#4
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#5
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#6
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#7
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#8
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#9
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#10
sll $7,$7,1
addi $6,$0,0x000000001
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#11
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#12
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#13
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#14
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#15
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#16
sll $7,$7,1
sll $6,$6,1	
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#17
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
#18
sll $7,$7,1
sll $6,$6,1
sw $7,0x28($8)
sw $6,0x2c($8)
sw $2,0x00($8)
sw $2,0x04($8)
sw $2,0x08($8)
sw $2,0x0c($8)
sw $2,0x10($8)
sw $2,0x14($8)
sw $2,0x18($8)
sw $2,0x1c($8)
addi $2,$2,1

j s1

s2:

addi $9,$0,8
addi $11,$0,7
addi $2,$0,6
addi $3,$0,5
addi $4,$0,4
addi $5,$0,3
addi $6,$0,2
addi $7,$0,1
s2_start:
addi $13,$0,0x0000000000000001
addi $12,$0,0x000000001

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#1
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#2
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#3
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#4
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#5
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#6
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#7
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#8
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#9
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
addi $12,$0,0x000000001
sw $13,0x28($8)
sw $12,0x2c($8)
#10
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#11
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#12
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#13
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#14
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#15
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#16
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#17
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3

sll $13,$13,1
sll $12,$12,1
sw $13,0x28($8)
sw $12,0x2c($8)
#18
sw $9,0x00($8)
sw $11,0x04($8)
sw $2,0x08($8)
sw $3,0x0c($8)
sw $4,0x10($8)
sw $5,0x14($8)
sw $6,0x18($8)
sw $7,0x1c($8)
addi $9,$9,1
addi $11,$11,1
addi $2,$2,1
addi $3,$3,1
addi $4,$4,1
addi $5,$5,1
addi $6,$6,1
addi $7,$7,1

j s2_start


s3:
addi $7,$0,0x000000000000000001
addi $6,$0,0x000000001
addi $5,$0,8

s3_start:

sw $7,0x28($8)
sw $6,0x2c($8)

sw $5,0x00($8)
sw $5,0x04($8)
sw $5,0x08($8)
sw $5,0x0c($8)
sw $5,0x10($8)
sw $5,0x14($8)
sw $5,0x18($8)
sw $5,0x1c($8)

lw $10,0x24($8)
beq $10,0x1,s1 #KEY1
beq $10,0x2,s2 #KEY2
beq $10,0x4,s3 #KEY3
j s3_start

syscall
