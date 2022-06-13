 .text
#################################################################################
#本程序实现（字节地址0x200，字地址0x80）开始的8个字单元的降序排序,此程序可在mars mips仿真器中运行,运行时请将Mars Setting中的Memory Configuration设置为Compact，data at address 0
#################################################################################
 .text
sort_init:
 addi $s0,$0,-1
 addi $s1,$0,0
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 addi $s0,$s0,1
 addi $s1,$s1,4
 sw $s0,0x200($s1)
 
 add $s0,$zero,$zero   
 addi $s1,$zero,28   	#排序区间
sort_loop:
 lw $s3,0x200($s0)     
 lw $s4,0x200($s1)
 slt $t0,$s3,$s4
 beq $t0,$0,sort_next   	#不交换位置
 sw $s3, 0x200($s1)	#交换位置
 sw $s4, 0x200($s0)   
sort_next:
 addi $s1, $s1, -4   
 bne $s0, $s1, sort_loop  
 
 addi $s0,$s0,4
 addi $s1,$zero,28
 bne $s0, $s1, sort_loop

 addi   $v0,$zero,10 	# system call for exit
 syscall          	# we are out of here.   
