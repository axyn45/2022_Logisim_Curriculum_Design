addi $8,$0,0x100
addi $17,$17,0x1
addi $16,$0,0x20000
addi $15,$0,0x1
addi $13,$0,0x1
start:
sw $17,0x28($8)
beq $13,0x2,l7#ÓÒÒÆ
beq $13,0x1,l8#×óÒÆ
l9:
lw $14,0x30($8)#¶ÁÈ¡°´¼ü
beq $14,0x1,l4 #KEY1
beq $14,0x2,l5 #KEY2
beq $14,0x4,l6 #KEY3
beq $17,$16,l1
beq $17,$15,l2
l3:
j start

l1:addi $17,$0,0x1
j l3
l2:addi $17,$0,0x20000
j l3
l4:addi $13,$0,0x2#ÓÒÒÆ
j l3
l5:addi $13,$0,0x1#×óÒÆ
j l3
l6:addi $17,$0,0x1
j l3
l7:srl $17,$17,1
j l9
l8:sll $17,$17,1
j l9