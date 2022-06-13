Start:
addi $1,$0,1	#数码管1显示值
addi $2,$0,2
addi $3,$0,3
addi $4,$0,4
addi $5,$0,5
addi $6,$0,6
addi $7,$0,7	#数码管7显示值

lui  $9,0x5555
addi $9,$9,0x5555	#送红色发光二极管显示值

add $8,$0,$9		#送绿色发光二极管显示值

#LCD init begin
addi $10,$0,7500	#延时15ms
jal Delay

addi $20,$0,0x3c	#功能设置命令,8位总线,双行显示,显示5×10的点阵字符
jal LCD_command

addi $10,$0,2500	#延时5ms
jal Delay

addi $20,$0,0x3c
jal LCD_command

addi $10,$0,2500	#延时5ms
jal Delay

addi $20,$0,0x3c
jal LCD_command
#LCD init end


#自定义字符'主'，字符集编码：00H
addi $20,$0,0x40	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x04	#00011111
jal LCD_data

addi $20,$0,0x41	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x1f	#00010001
jal LCD_data

addi $20,$0,0x42	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x04	#00010001
jal LCD_data

addi $20,$0,0x43	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x1e	#00011111
jal LCD_data

addi $20,$0,0x44	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x04	#00010001
jal LCD_data

addi $20,$0,0x45	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x04	#00010001
jal LCD_data

addi $20,$0,0x46	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x3f	#00011111
jal LCD_data

addi $20,$0,0x47	#CGRAM存储器地址设置，自定义字符：主
jal LCD_command

addi $20,$0,0x00	#0000000
jal LCD_data
#自定义字符'主'，字符集编码：00H


#自定义字符'月'，字符集编码：01H
addi $20,$0,0x48	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x1e	#00011111
jal LCD_data

addi $20,$0,0x49	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x12	#00010001
jal LCD_data

addi $20,$0,0x4a	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x1e	#00010001
jal LCD_data

addi $20,$0,0x4b	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x12	#00011111
jal LCD_data

addi $20,$0,0x4c	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x1e	#00010001
jal LCD_data

addi $20,$0,0x4d	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x12	#00010001
jal LCD_data

addi $20,$0,0x4e	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x16	#00011111
jal LCD_data

addi $20,$0,0x4f	#CGRAM存储器地址设置，自定义字符：月
jal LCD_command

addi $20,$0,0x12	#0000000
jal LCD_data
#自定义字符'月'，字符集编码：01H


#自定义字符'、、'，字符集编码：02H
addi $20,$0,0x50	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x00	#00011111
jal LCD_data

addi $20,$0,0x51	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x20	#00010001
jal LCD_data

addi $20,$0,0x52	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x08	#00010001
jal LCD_data

addi $20,$0,0x53	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x04	#00011111
jal LCD_data

addi $20,$0,0x54	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x00	#00010001
jal LCD_data

addi $20,$0,0x55	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x20	#00010001
jal LCD_data

addi $20,$0,0x56	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x08	#00011111
jal LCD_data

addi $20,$0,0x57	#CGRAM存储器地址设置，自定义字符：、、
jal LCD_command

addi $20,$0,0x04	#0000000
jal LCD_data
#自定义字符'、、'，字符集编码：02H


#自定义字符'/'，字符集编码：03H
addi $20,$0,0x58	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x00	#00011111
jal LCD_data

addi $20,$0,0x59	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x01	#00010001
jal LCD_data

addi $20,$0,0x5a	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x02	#00010001
jal LCD_data

addi $20,$0,0x5b	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x04	#00011111
jal LCD_data

addi $20,$0,0x5c	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x08	#00010001
jal LCD_data

addi $20,$0,0x5d	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x10	#00010001
jal LCD_data

addi $20,$0,0x5e	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x20	#00011111
jal LCD_data

addi $20,$0,0x5f	#CGRAM存储器地址设置，自定义字符：/
jal LCD_command

addi $20,$0,0x00	#0000000
jal LCD_data
#自定义字符'/'，字符集编码：03H


addi $20,$0,0x01	#清屏
jal LCD_command

addi $20,$0,0x06	#输入方式设置：光标的移动方向为右移,字符不移动
jal LCD_command

addi $20,$0,0x0f	#显示开关控制：表示开显示，显示光标并闪烁
jal LCD_command

addi $20,$0,0x80	#数据存储器地址设置：数据存储器DDRAM地址设置为0x80,(首行首列)
jal LCD_command

addi $20,$0,0x4d	#显示字符'M'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x79	#显示字符'y'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x20	#显示字符' '
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x6e	#显示字符'n'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x61	#显示字符'a'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x6d	#显示字符'm'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x65	#显示字符'e'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x20	#显示字符' '
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x69	#显示字符'i'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x73	#显示字符's'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x20	#显示字符' '
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x02	#显示字符'、、'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x00	#显示字符'主'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0xcb	#数据存储器地址设置：数据存储器DDRAM地址设置为20H,(次行首列)
jal LCD_command

addi $20,$0,0x03	#显示字符'/'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $20,$0,0x01	#显示字符'月'
jal LCD_data

lui $10,7	#延时0.917504（约1秒）
jal Delay

Next:
sw $0,0x100($0)	#$0送数码管0
sw $1,0x104($0)	#$1送数码管1，后面减1
sw $2,0x108($0)	#$2送数码管2，后面减1
sw $3,0x10C($0)	#$3送数码管3，后面减1
sw $4,0x110($0)	#$4送数码管4，后面减1
sw $5,0x114($0)	#$5送数码管5，后面减1
sw $6,0x118($0)	#$6送数码管6，后面减1
sw $7,0x11C($0)	#$7送数码管7，后面减1

sw $8,0x12C($0)	#$8送绿色发光二极管

sw $9,0x128($0)	#$9送红色发光二极管

lui $10,7	#延时0.917504（约1秒）
jal Delay

addi $1,$1,-1
addi $2,$2,-1
addi $3,$3,-1
addi $4,$4,-1
addi $5,$5,-1
addi $6,$6,-1
addi $7,$7,-1

sw $8,0($0)
srl  $12,$8,31	#$8的最高位移到$12的最低位
sll  $8,$8,1	#$8左移1
or $8,$8,$12	#$8与$12或运算实现$8循环左移


sw $9,4($0)
srl  $12,$9,31	#$9的最高位移到$12的最低位
sll  $9,$9,1	#$9左移1
or $9,$9,$12	#$9与$12或运算实现$9循环左移


j Next

#延时子程序，延时时间=2*$10毫秒
Delay:addi $10,$10,-1
bne $10,$0,Delay
jr $31

#发送命令子程序，$20=command
LCD_command:add $30,$0,$31	#处理调子程序嵌套

#送控制信号到命令端口，LCD_EN=0;LCD_RW=0;LCD_RS=0;
addi $28,$0,0x0
sb $28,0x140($0)

sb $20,0x141($0)		#write command

addi $10,$0,2500		#delay 5ms
jal Delay

#送控制信号到命令端口，LCD_EN=1;LCD_RW=0;LCD_RS=0;
addi $28,$0,0x4
sb $28,0x140($0)		#write command

addi $10,$0,2500		#delay 5ms
jal Delay

#送控制信号到命令端口，LCD_EN=0;LCD_RW=0;LCD_RS=0;
addi $28,$0,0x0
sb $28,0x140($0)

add $31,$0,$30		#处理调子程序嵌套
jr $31			#子程序返回

#发送数据子程序，$20=data
#$20=data
LCD_data:add $30,$0,$31	#处理调子程序嵌套

#送控制信号到命令端口，LCD_EN=0;LCD_RW=0;LCD_RS=1;
addi $28,$0,0x1
sb $28,0x140($0)

sb $20,0x141($0)	#write data

addi $10,$0,2500	#delay 5ms
jal Delay

#送控制信号到命令端口，LCD_EN=1;LCD_RW=0;LCD_RS=1;
addi $28,$0,0x5
sb $28,0x140($0)

addi $10,$0,2500	#delay 5ms
jal Delay

#送控制信号到命令端口，LCD_EN=0;LCD_RW=0;LCD_RS=1;
addi $28,$0,0x1
sb $28,0x140($0)

add $31,$0,$30		#处理调子程序嵌套
jr $31			#子程序返回
