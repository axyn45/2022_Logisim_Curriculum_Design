
lui $10,7
ori $10,$10,0xa120

#��ĸ�λ
addi $2,$0,0
#���ʮλ
addi $3,$0,0
#�ֵĸ�λ
addi $4,$0,0
#�ֵ�ʮλ
addi $5,$0,0
#ʱ�ĸ�λ
addi $6,$0,0
#ʱ�ĸ�λ
addi $7,$0,0

sw $2,0x100($0)
second:jal delay
#��ĸ�λ��1
addi $2,$2,1
p1:
#����ĸ�λ����10��ʮλ��1
beq $2,10,adds
#�����ʮλ����6���ֵĸ�λ��1
beq $3,6,addM
#���ֵĸ�λ����10��ʮλ��1
beq $4,10,addM1
#���ֵ�ʮλ����6��ʱ�ĸ�λ��1
beq $5,6,addH
##��ʱ�ĸ�λ����4�����ʮλ�Ƿ�Ϊ2��Ϊ2������
beq $6,4,check
#��ʱ�ĸ�λ����10��ʮλ��1
beq $6,10,addH1

sw $3,0x104($0)
sw $2,0x100($0)
sw $5,0x114($0)
sw $4,0x110($0)
sw $7,0x11c($0)
sw $6,0x118($0)
j second

delay:
addi $10,$10,-1
bne $10,$0,delay
lui $10,7
ori $10,$10,0xa120
jr $31

adds:
addi $3,$3,1
andi $2,$0,0
j p1

addM:
addi $4,$4,1
andi $3,$0,0
j p1

addM1:
addi $5,$5,1
andi $4,$0,0
j p1

addH:
addi $6,$6,1
andi $5,$0,0
j p1

check:
beq $7,2,rset
j p1

rset:
andi $7,$0,0
andi $6,$0,0
j p1

addH1:
addi $7,$0,1
andi $6,$0,0
j p1
