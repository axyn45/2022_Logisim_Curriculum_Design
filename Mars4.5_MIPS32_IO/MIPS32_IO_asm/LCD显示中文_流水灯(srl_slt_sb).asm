Start:
addi $1,$0,1	#�����1��ʾֵ
addi $2,$0,2
addi $3,$0,3
addi $4,$0,4
addi $5,$0,5
addi $6,$0,6
addi $7,$0,7	#�����7��ʾֵ

lui  $9,0x5555
addi $9,$9,0x5555	#�ͺ�ɫ�����������ʾֵ

add $8,$0,$9		#����ɫ�����������ʾֵ

#LCD init begin
addi $10,$0,7500	#��ʱ15ms
jal Delay

addi $20,$0,0x3c	#������������,8λ����,˫����ʾ,��ʾ5��10�ĵ����ַ�
jal LCD_command

addi $10,$0,2500	#��ʱ5ms
jal Delay

addi $20,$0,0x3c
jal LCD_command

addi $10,$0,2500	#��ʱ5ms
jal Delay

addi $20,$0,0x3c
jal LCD_command
#LCD init end


#�Զ����ַ�'��'���ַ������룺00H
addi $20,$0,0x40	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x04	#00011111
jal LCD_data

addi $20,$0,0x41	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x1f	#00010001
jal LCD_data

addi $20,$0,0x42	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x04	#00010001
jal LCD_data

addi $20,$0,0x43	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x1e	#00011111
jal LCD_data

addi $20,$0,0x44	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x04	#00010001
jal LCD_data

addi $20,$0,0x45	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x04	#00010001
jal LCD_data

addi $20,$0,0x46	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x3f	#00011111
jal LCD_data

addi $20,$0,0x47	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x00	#0000000
jal LCD_data
#�Զ����ַ�'��'���ַ������룺00H


#�Զ����ַ�'��'���ַ������룺01H
addi $20,$0,0x48	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x1e	#00011111
jal LCD_data

addi $20,$0,0x49	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x12	#00010001
jal LCD_data

addi $20,$0,0x4a	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x1e	#00010001
jal LCD_data

addi $20,$0,0x4b	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x12	#00011111
jal LCD_data

addi $20,$0,0x4c	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x1e	#00010001
jal LCD_data

addi $20,$0,0x4d	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x12	#00010001
jal LCD_data

addi $20,$0,0x4e	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x16	#00011111
jal LCD_data

addi $20,$0,0x4f	#CGRAM�洢����ַ���ã��Զ����ַ�����
jal LCD_command

addi $20,$0,0x12	#0000000
jal LCD_data
#�Զ����ַ�'��'���ַ������룺01H


#�Զ����ַ�'����'���ַ������룺02H
addi $20,$0,0x50	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x00	#00011111
jal LCD_data

addi $20,$0,0x51	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x20	#00010001
jal LCD_data

addi $20,$0,0x52	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x08	#00010001
jal LCD_data

addi $20,$0,0x53	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x04	#00011111
jal LCD_data

addi $20,$0,0x54	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x00	#00010001
jal LCD_data

addi $20,$0,0x55	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x20	#00010001
jal LCD_data

addi $20,$0,0x56	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x08	#00011111
jal LCD_data

addi $20,$0,0x57	#CGRAM�洢����ַ���ã��Զ����ַ�������
jal LCD_command

addi $20,$0,0x04	#0000000
jal LCD_data
#�Զ����ַ�'����'���ַ������룺02H


#�Զ����ַ�'/'���ַ������룺03H
addi $20,$0,0x58	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x00	#00011111
jal LCD_data

addi $20,$0,0x59	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x01	#00010001
jal LCD_data

addi $20,$0,0x5a	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x02	#00010001
jal LCD_data

addi $20,$0,0x5b	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x04	#00011111
jal LCD_data

addi $20,$0,0x5c	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x08	#00010001
jal LCD_data

addi $20,$0,0x5d	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x10	#00010001
jal LCD_data

addi $20,$0,0x5e	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x20	#00011111
jal LCD_data

addi $20,$0,0x5f	#CGRAM�洢����ַ���ã��Զ����ַ���/
jal LCD_command

addi $20,$0,0x00	#0000000
jal LCD_data
#�Զ����ַ�'/'���ַ������룺03H


addi $20,$0,0x01	#����
jal LCD_command

addi $20,$0,0x06	#���뷽ʽ���ã������ƶ�����Ϊ����,�ַ����ƶ�
jal LCD_command

addi $20,$0,0x0f	#��ʾ���ؿ��ƣ���ʾ����ʾ����ʾ��겢��˸
jal LCD_command

addi $20,$0,0x80	#���ݴ洢����ַ���ã����ݴ洢��DDRAM��ַ����Ϊ0x80,(��������)
jal LCD_command

addi $20,$0,0x4d	#��ʾ�ַ�'M'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x79	#��ʾ�ַ�'y'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x20	#��ʾ�ַ�' '
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x6e	#��ʾ�ַ�'n'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x61	#��ʾ�ַ�'a'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x6d	#��ʾ�ַ�'m'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x65	#��ʾ�ַ�'e'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x20	#��ʾ�ַ�' '
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x69	#��ʾ�ַ�'i'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x73	#��ʾ�ַ�'s'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x20	#��ʾ�ַ�' '
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x02	#��ʾ�ַ�'����'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x00	#��ʾ�ַ�'��'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0xcb	#���ݴ洢����ַ���ã����ݴ洢��DDRAM��ַ����Ϊ20H,(��������)
jal LCD_command

addi $20,$0,0x03	#��ʾ�ַ�'/'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $20,$0,0x01	#��ʾ�ַ�'��'
jal LCD_data

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

Next:
sw $0,0x100($0)	#$0�������0
sw $1,0x104($0)	#$1�������1�������1
sw $2,0x108($0)	#$2�������2�������1
sw $3,0x10C($0)	#$3�������3�������1
sw $4,0x110($0)	#$4�������4�������1
sw $5,0x114($0)	#$5�������5�������1
sw $6,0x118($0)	#$6�������6�������1
sw $7,0x11C($0)	#$7�������7�������1

sw $8,0x12C($0)	#$8����ɫ���������

sw $9,0x128($0)	#$9�ͺ�ɫ���������

lui $10,7	#��ʱ0.917504��Լ1�룩
jal Delay

addi $1,$1,-1
addi $2,$2,-1
addi $3,$3,-1
addi $4,$4,-1
addi $5,$5,-1
addi $6,$6,-1
addi $7,$7,-1

sw $8,0($0)
srl  $12,$8,31	#$8�����λ�Ƶ�$12�����λ
sll  $8,$8,1	#$8����1
or $8,$8,$12	#$8��$12������ʵ��$8ѭ������


sw $9,4($0)
srl  $12,$9,31	#$9�����λ�Ƶ�$12�����λ
sll  $9,$9,1	#$9����1
or $9,$9,$12	#$9��$12������ʵ��$9ѭ������


j Next

#��ʱ�ӳ�����ʱʱ��=2*$10����
Delay:addi $10,$10,-1
bne $10,$0,Delay
jr $31

#���������ӳ���$20=command
LCD_command:add $30,$0,$31	#������ӳ���Ƕ��

#�Ϳ����źŵ�����˿ڣ�LCD_EN=0;LCD_RW=0;LCD_RS=0;
addi $28,$0,0x0
sb $28,0x140($0)

sb $20,0x141($0)		#write command

addi $10,$0,2500		#delay 5ms
jal Delay

#�Ϳ����źŵ�����˿ڣ�LCD_EN=1;LCD_RW=0;LCD_RS=0;
addi $28,$0,0x4
sb $28,0x140($0)		#write command

addi $10,$0,2500		#delay 5ms
jal Delay

#�Ϳ����źŵ�����˿ڣ�LCD_EN=0;LCD_RW=0;LCD_RS=0;
addi $28,$0,0x0
sb $28,0x140($0)

add $31,$0,$30		#������ӳ���Ƕ��
jr $31			#�ӳ��򷵻�

#���������ӳ���$20=data
#$20=data
LCD_data:add $30,$0,$31	#������ӳ���Ƕ��

#�Ϳ����źŵ�����˿ڣ�LCD_EN=0;LCD_RW=0;LCD_RS=1;
addi $28,$0,0x1
sb $28,0x140($0)

sb $20,0x141($0)	#write data

addi $10,$0,2500	#delay 5ms
jal Delay

#�Ϳ����źŵ�����˿ڣ�LCD_EN=1;LCD_RW=0;LCD_RS=1;
addi $28,$0,0x5
sb $28,0x140($0)

addi $10,$0,2500	#delay 5ms
jal Delay

#�Ϳ����źŵ�����˿ڣ�LCD_EN=0;LCD_RW=0;LCD_RS=1;
addi $28,$0,0x1
sb $28,0x140($0)

add $31,$0,$30		#������ӳ���Ƕ��
jr $31			#�ӳ��򷵻�
