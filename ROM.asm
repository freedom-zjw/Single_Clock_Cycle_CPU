main:
addi  $17,$0,0x1111   #$s1=0x1111
addiu $17,$0,0x2222  #$s1=0x2222
andi  $17,$17,0x22    #$s1=0x22
ori   $18,$17,0x2200  #$s2=0x2222
xori  $17,$18,0x2200  #$s1=0x22
lui   $18,0x0022  #$s2=0x220000
addi  $17,$18,0x22   #$s1=0x220022
sw    $17, 0($16)  #$s0= 0x220022
lw    $18, 0($16)  #$s2= 0x220022
bne $17,$18,exit
slti $19,$17,1     #$s3=0;
sltiu $17,$19,1    #$s3=1;
lw  $19, 0($16)    #$s3 =0x220022
add $17,$18,$19    #$s1= 0x440044
sub $19,$17,$18    #$s3= 0x220022
addi $18,$0,2      #s2=  0x0002
and $17,$19,$18    #s1=  0x0002
nor $19,$17,$18    #s3=  0xfffffffd
or  $19,$19,$18    #s3=  0xffffffff
xor $17,$19,$18    #s1= 0xfffffffd;
lw  $17, 0($16)    #$s1= 0x220022
srl  $19,$17,16   #$s3=0x0022
sll  $17,$19,16   #$s1=0x220000
beq $17,$19,exit   
slt  $19,$17,$18   #$s3=0
j main
exit:
addi  $17,$0,0
j main


