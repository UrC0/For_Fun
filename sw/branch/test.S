	.text
	.globl	main
	
main:
	addi t1,t1,0
	beq x13, x19,4
	add x5,x9,x2
	add x5,x9,x2
	add x5,x9,x2
	//bgeu x11, x9, -654
	//bltu x6, x23 , 596
	//bgez x31, 2020
	 jr	ra
	.size	main, .-main
	.ident	"GCC: () 11.1.0"
