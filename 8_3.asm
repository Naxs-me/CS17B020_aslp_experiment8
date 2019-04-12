.data
string:	.asciiz "abcdefghijk"
.text
main:
	la	$s0,string
	la	$s1,string
	li	$t2,10
	add	$s1,$s1,$t2
swap:
	lb	$t0,0($s0)
	lb	$t1,0($s1)
	sb	$t1,0($s0)
	sb	$t0,0($s1)
	addi	$s0,$s0,1
	addi	$s1,$s1,-1
	slt	$t2,$s1,$s0
	beq	$t2,0,swap
	li	$v0,4
	la	$a0,string
	syscall
	j	$ra
	
	
