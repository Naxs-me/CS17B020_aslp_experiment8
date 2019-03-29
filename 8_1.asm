array:	.word 1,2,3,4,5,6,7

main:
	li	$s0,2
	li	$s1,0
	la	$t0,array
	li	$t1,0
loop:
	bne	$s0,0($t0),notadd
	addi	$s1,$s1,1
notadd:
	addi	$t0,$t0,4
	addi	$t1,$t1,1
	beq	$t1,7,loop
	j	$ra
	
