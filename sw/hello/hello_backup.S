	.file	"hello.c"
	.option nopic
	.option norelax
	.attribute arch, "rv32i2p0_m2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"divisible"
	.align	2
.LC1:
	.string	"hello world!"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	puts
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	beqz    a0,.+4
	addi	x0,x0,1
	addi 	x0,x0,1
	call	puts
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 11.1.0"
