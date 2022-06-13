addi $1,$0,1
addi $2,$0,1
Next:sw $2,0x12C($0)
#延时1S
lui $10,7

ori $10,$10,0xa120

jal Delay
xor $2,$2,$1
j Next

#$10为入口参数，延时时间为$10*2um
Delay:addi $10,$10,-1
bne $10,$0,Delay
jr $31
