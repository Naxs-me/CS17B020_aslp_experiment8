	.data
array:	.word 1, 2, 2, 4, 2, 6, 7
	.text
main:
	li	$s0,2
	li	$s1,0
	la	$t5,array
	li	$t1,0
loop:
	lw	$t0,0($t5)
	bne	$s0,$t0,notadd
	addi	$s1,$s1,1
notadd:
	addi	$t5,$t5,4
	addi	$t1,$t1,1
	bne	$t1,7,loop
	j	$ra
	
