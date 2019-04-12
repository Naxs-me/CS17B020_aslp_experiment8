.data
array: .word 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0
.text
main:
	li	$t0,0
	li	$t1,1
	la	$s0,array
	la	$s1,array
	li	$t2,56
	add	$s1,$s1,$t2
	j	grouping
	
swap:
	#move	$t2,$a0
	#move	$a0,$a1
	#move	$a1,$t2	
	sw	$a1,0($s0)
	sw	$a0,0($s1)
	addi	$s0,$s0,4
	addi	$s1,$s1,-4
	
grouping:
	slt	$t2,$s1,$s0
	beq	$t2,1,end
	lw	$a0,0($s0)
	beq	$a0,1,find_ele_one
	addi	$s0,$s0,4
	j	grouping
find_ele_one:
	lw	$a1,0($s1)
	beq	$a1,0,find_ele_two
	addi	$s1,$s1,-4
	j	find_ele_one
find_ele_two:
	j	swap
end:
	la	$s0,array
print:
	lw	$a0,0($s0)
	addi	$s0,$s0,4
	addi	$t6,$t6,1
	li	$v0,1
	syscall
	bne	$t6,15,print
	j	$ra
	
	
		
	
