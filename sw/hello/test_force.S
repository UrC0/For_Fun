
test_force.Default.ELF:     file format elf64-littleriscv


Disassembly of section text0:

0000000000f83438 <text0>:
  f83438:	6968                	ld	a0,208(a0)
  f8343a:	e960                	sd	s0,208(a0)
  f8343c:	00000537          	lui	a0,0x0
  f83440:	00050067          	jr	a0 # 0x0
  f83444:	ff8d                	bnez	a5,0xf8337e
  f83446:	12f9                	addi	t0,t0,-2

Disassembly of section text1:

0000000001020000 <text1>:
 1020000:	1780006f          	j	0x1020178
 1020004:	0528                	addi	a0,sp,648
 1020006:	2d3c                	fld	fa5,88(a0)

Disassembly of section text2:

0000000001020080 <text2>:
 1020080:	0169dd13          	srli	s10,s3,0x16
 1020084:	3ffd7d13          	andi	s10,s10,1023
 1020088:	002d1d13          	slli	s10,s10,0x2
 102008c:	01aa0d33          	add	s10,s4,s10
 1020090:	000d0433          	add	s0,s10,zero
 1020094:	000d2b03          	lw	s6,0(s10)
 1020098:	000b0233          	add	tp,s6,zero
 102009c:	00100293          	li	t0,1
 10200a0:	00fb7b13          	andi	s6,s6,15
 10200a4:	005b0463          	beq	s6,t0,0x10200ac
 10200a8:	00008067          	ret
 10200ac:	00019463          	bnez	gp,0x10200b4
 10200b0:	00008067          	ret
 10200b4:	fff18193          	addi	gp,gp,-1
 10200b8:	000202b3          	add	t0,tp,zero
 10200bc:	00a2d293          	srli	t0,t0,0xa
 10200c0:	00c29a13          	slli	s4,t0,0xc
 10200c4:	00c9dd13          	srli	s10,s3,0xc
 10200c8:	3ffd7d13          	andi	s10,s10,1023
 10200cc:	002d1d13          	slli	s10,s10,0x2
 10200d0:	01aa0d33          	add	s10,s4,s10
 10200d4:	000d0433          	add	s0,s10,zero
 10200d8:	000d2b03          	lw	s6,0(s10)
 10200dc:	000b0233          	add	tp,s6,zero
 10200e0:	00100293          	li	t0,1
 10200e4:	00fb7b13          	andi	s6,s6,15
 10200e8:	005b0463          	beq	s6,t0,0x10200f0
 10200ec:	00008067          	ret
 10200f0:	00019463          	bnez	gp,0x10200f8
 10200f4:	00008067          	ret
 10200f8:	fff18193          	addi	gp,gp,-1
 10200fc:	000202b3          	add	t0,tp,zero
 1020100:	00a2d293          	srli	t0,t0,0xa
 1020104:	00c29a13          	slli	s4,t0,0xc
 1020108:	ffc60613          	addi	a2,a2,-4
 102010c:	00362023          	sw	gp,0(a2)
 1020110:	ffc60613          	addi	a2,a2,-4
 1020114:	01462023          	sw	s4,0(a2)
 1020118:	ffc60613          	addi	a2,a2,-4
 102011c:	01362023          	sw	s3,0(a2)
 1020120:	18002a73          	csrr	s4,satp
 1020124:	00300293          	li	t0,3
 1020128:	01929663          	bne	t0,s9,0x1020134
 102012c:	343029f3          	csrr	s3,mtval
 1020130:	0080006f          	j	0x1020138
 1020134:	143029f3          	csrr	s3,stval
 1020138:	00ca1a13          	slli	s4,s4,0xc
 102013c:	00100193          	li	gp,1
 1020140:	ffc60613          	addi	a2,a2,-4
 1020144:	00162023          	sw	ra,0(a2)
 1020148:	f39ff0ef          	jal	ra,0x1020080
 102014c:	00062083          	lw	ra,0(a2)
 1020150:	00460613          	addi	a2,a2,4
 1020154:	000182b3          	add	t0,gp,zero
 1020158:	00062983          	lw	s3,0(a2)
 102015c:	00460613          	addi	a2,a2,4
 1020160:	00062a03          	lw	s4,0(a2)
 1020164:	00460613          	addi	a2,a2,4
 1020168:	00062183          	lw	gp,0(a2)
 102016c:	00460613          	addi	a2,a2,4
 1020170:	00028733          	add	a4,t0,zero
 1020174:	00008067          	ret
 1020178:	ffc60613          	addi	a2,a2,-4
 102017c:	00162023          	sw	ra,0(a2)
 1020180:	ffc60613          	addi	a2,a2,-4
 1020184:	01a62023          	sw	s10,0(a2)
 1020188:	ffc60613          	addi	a2,a2,-4
 102018c:	01662023          	sw	s6,0(a2)
 1020190:	ffc60613          	addi	a2,a2,-4
 1020194:	00562023          	sw	t0,0(a2)
 1020198:	ffc60613          	addi	a2,a2,-4
 102019c:	00462023          	sw	tp,0(a2)
 10201a0:	ffc60613          	addi	a2,a2,-4
 10201a4:	00862023          	sw	s0,0(a2)
 10201a8:	ffc60613          	addi	a2,a2,-4
 10201ac:	00e62023          	sw	a4,0(a2)
 10201b0:	ffc60613          	addi	a2,a2,-4
 10201b4:	01562023          	sw	s5,0(a2)
 10201b8:	ffc60613          	addi	a2,a2,-4
 10201bc:	01962023          	sw	s9,0(a2)
 10201c0:	00300c93          	li	s9,3
 10201c4:	34202af3          	csrr	s5,mcause
 10201c8:	001a9713          	slli	a4,s5,0x1
 10201cc:	00175713          	srli	a4,a4,0x1
 10201d0:	050000ef          	jal	ra,0x1020220
 10201d4:	00062c83          	lw	s9,0(a2)
 10201d8:	00460613          	addi	a2,a2,4
 10201dc:	00062a83          	lw	s5,0(a2)
 10201e0:	00460613          	addi	a2,a2,4
 10201e4:	00062703          	lw	a4,0(a2)
 10201e8:	00460613          	addi	a2,a2,4
 10201ec:	00062403          	lw	s0,0(a2)
 10201f0:	00460613          	addi	a2,a2,4
 10201f4:	00062203          	lw	tp,0(a2)
 10201f8:	00460613          	addi	a2,a2,4
 10201fc:	00062283          	lw	t0,0(a2)
 1020200:	00460613          	addi	a2,a2,4
 1020204:	00062b03          	lw	s6,0(a2)
 1020208:	00460613          	addi	a2,a2,4
 102020c:	00062d03          	lw	s10,0(a2)
 1020210:	00460613          	addi	a2,a2,4
 1020214:	00062083          	lw	ra,0(a2)
 1020218:	00460613          	addi	a2,a2,4
 102021c:	30200073          	mret
 1020220:	00000297          	auipc	t0,0x0
 1020224:	01428293          	addi	t0,t0,20 # 0x1020234
 1020228:	00271b13          	slli	s6,a4,0x2
 102022c:	005b02b3          	add	t0,s6,t0
 1020230:	00028067          	jr	t0
 1020234:	0400006f          	j	0x1020274
 1020238:	0500006f          	j	0x1020288
 102023c:	04c0006f          	j	0x1020288
 1020240:	0480006f          	j	0x1020288
 1020244:	0440006f          	j	0x1020288
 1020248:	0400006f          	j	0x1020288
 102024c:	03c0006f          	j	0x1020288
 1020250:	0380006f          	j	0x1020288
 1020254:	05c0006f          	j	0x10202b0
 1020258:	0580006f          	j	0x10202b0
 102025c:	02c0006f          	j	0x1020288
 1020260:	0500006f          	j	0x10202b0
 1020264:	3740006f          	j	0x10205d8
 1020268:	3700006f          	j	0x10205d8
 102026c:	01c0006f          	j	0x1020288
 1020270:	3680006f          	j	0x10205d8
 1020274:	343022f3          	csrr	t0,mtval
 1020278:	0032e293          	ori	t0,t0,3
 102027c:	0032c293          	xori	t0,t0,3
 1020280:	34129073          	csrw	mepc,t0
 1020284:	00008067          	ret
 1020288:	00100293          	li	t0,1
 102028c:	005c9a63          	bne	s9,t0,0x10202a0
 1020290:	141022f3          	csrr	t0,sepc
 1020294:	00428293          	addi	t0,t0,4
 1020298:	14129073          	csrw	sepc,t0
 102029c:	0100006f          	j	0x10202ac
 10202a0:	341022f3          	csrr	t0,mepc
 10202a4:	00428293          	addi	t0,t0,4
 10202a8:	34129073          	csrw	mepc,t0
 10202ac:	00008067          	ret
 10202b0:	00100293          	li	t0,1
 10202b4:	00520863          	beq	tp,t0,0x10202c4
 10202b8:	00200293          	li	t0,2
 10202bc:	06520063          	beq	tp,t0,0x102031c
 10202c0:	0940006f          	j	0x1020354
 10202c4:	00100293          	li	t0,1
 10202c8:	025c9663          	bne	s9,t0,0x10202f4
 10202cc:	10002b73          	csrr	s6,sstatus
 10202d0:	00100293          	li	t0,1
 10202d4:	00829293          	slli	t0,t0,0x8
 10202d8:	fff2cd13          	not	s10,t0
 10202dc:	016d7b33          	and	s6,s10,s6
 10202e0:	0162eb33          	or	s6,t0,s6
 10202e4:	100b1073          	csrw	sstatus,s6
 10202e8:	00042283          	lw	t0,0(s0)
 10202ec:	14129073          	csrw	sepc,t0
 10202f0:	0280006f          	j	0x1020318
 10202f4:	30002b73          	csrr	s6,mstatus
 10202f8:	00100293          	li	t0,1
 10202fc:	00b29293          	slli	t0,t0,0xb
 1020300:	fff2cd13          	not	s10,t0
 1020304:	016d7b33          	and	s6,s10,s6
 1020308:	0162eb33          	or	s6,t0,s6
 102030c:	300b1073          	csrw	mstatus,s6
 1020310:	00042283          	lw	t0,0(s0)
 1020314:	34129073          	csrw	mepc,t0
 1020318:	0600006f          	j	0x1020378
 102031c:	00100293          	li	t0,1
 1020320:	005c9c63          	bne	s9,t0,0x1020338
 1020324:	00042283          	lw	t0,0(s0)
 1020328:	10029073          	csrw	sstatus,t0
 102032c:	00442283          	lw	t0,4(s0)
 1020330:	14129073          	csrw	sepc,t0
 1020334:	0140006f          	j	0x1020348
 1020338:	00042283          	lw	t0,0(s0)
 102033c:	30029073          	csrw	mstatus,t0
 1020340:	00442283          	lw	t0,4(s0)
 1020344:	34129073          	csrw	mepc,t0
 1020348:	00842283          	lw	t0,8(s0)
 102034c:	18029073          	csrw	satp,t0
 1020350:	0280006f          	j	0x1020378
 1020354:	00100293          	li	t0,1
 1020358:	005c9a63          	bne	s9,t0,0x102036c
 102035c:	141022f3          	csrr	t0,sepc
 1020360:	00428293          	addi	t0,t0,4
 1020364:	14129073          	csrw	sepc,t0
 1020368:	0100006f          	j	0x1020378
 102036c:	341022f3          	csrr	t0,mepc
 1020370:	00428293          	addi	t0,t0,4
 1020374:	34129073          	csrw	mepc,t0
 1020378:	00008067          	ret
 102037c:	343022f3          	csrr	t0,mtval
 1020380:	300021f3          	csrr	gp,mstatus
 1020384:	00b1d193          	srli	gp,gp,0xb
 1020388:	0031f193          	andi	gp,gp,3
 102038c:	00126b13          	ori	s6,tp,1
 1020390:	01620663          	beq	tp,s6,0x102039c
 1020394:	01642023          	sw	s6,0(s0)
 1020398:	00008067          	ret
 102039c:	00000b13          	li	s6,0
 10203a0:	016a0a63          	beq	s4,s6,0x10203b4
 10203a4:	00e27b13          	andi	s6,tp,14
 10203a8:	00000d13          	li	s10,0
 10203ac:	01ab1463          	bne	s6,s10,0x10203b4
 10203b0:	00008067          	ret
 10203b4:	00226b13          	ori	s6,tp,2
 10203b8:	03620863          	beq	tp,s6,0x10203e8
 10203bc:	01642023          	sw	s6,0(s0)
 10203c0:	02027b13          	andi	s6,tp,32
 10203c4:	02000d13          	li	s10,32
 10203c8:	01ab1663          	bne	s6,s10,0x10203d4
 10203cc:	12028073          	sfence.vma	t0
 10203d0:	0140006f          	j	0x10203e4
 10203d4:	18002b73          	csrr	s6,satp
 10203d8:	001b1b13          	slli	s6,s6,0x1
 10203dc:	017b5b13          	srli	s6,s6,0x17
 10203e0:	13628073          	sfence.vma	t0,s6
 10203e4:	00008067          	ret
 10203e8:	00f00b13          	li	s6,15
 10203ec:	03671c63          	bne	a4,s6,0x1020424
 10203f0:	00426b13          	ori	s6,tp,4
 10203f4:	03620863          	beq	tp,s6,0x1020424
 10203f8:	01642023          	sw	s6,0(s0)
 10203fc:	02027b13          	andi	s6,tp,32
 1020400:	02000d13          	li	s10,32
 1020404:	01ab1663          	bne	s6,s10,0x1020410
 1020408:	12028073          	sfence.vma	t0
 102040c:	0140006f          	j	0x1020420
 1020410:	18002b73          	csrr	s6,satp
 1020414:	001b1b13          	slli	s6,s6,0x1
 1020418:	017b5b13          	srli	s6,s6,0x17
 102041c:	13628073          	sfence.vma	t0,s6
 1020420:	00008067          	ret
 1020424:	00c00b13          	li	s6,12
 1020428:	03671c63          	bne	a4,s6,0x1020460
 102042c:	00826b13          	ori	s6,tp,8
 1020430:	03620863          	beq	tp,s6,0x1020460
 1020434:	01642023          	sw	s6,0(s0)
 1020438:	02027b13          	andi	s6,tp,32
 102043c:	02000d13          	li	s10,32
 1020440:	01ab1663          	bne	s6,s10,0x102044c
 1020444:	12028073          	sfence.vma	t0
 1020448:	0140006f          	j	0x102045c
 102044c:	18002b73          	csrr	s6,satp
 1020450:	001b1b13          	slli	s6,s6,0x1
 1020454:	017b5b13          	srli	s6,s6,0x17
 1020458:	13628073          	sfence.vma	t0,s6
 102045c:	00008067          	ret
 1020460:	00000b13          	li	s6,0
 1020464:	03619c63          	bne	gp,s6,0x102049c
 1020468:	01026b13          	ori	s6,tp,16
 102046c:	03620863          	beq	tp,s6,0x102049c
 1020470:	01642023          	sw	s6,0(s0)
 1020474:	02027b13          	andi	s6,tp,32
 1020478:	02000d13          	li	s10,32
 102047c:	01ab1663          	bne	s6,s10,0x1020488
 1020480:	12028073          	sfence.vma	t0
 1020484:	0140006f          	j	0x1020498
 1020488:	18002b73          	csrr	s6,satp
 102048c:	001b1b13          	slli	s6,s6,0x1
 1020490:	017b5b13          	srli	s6,s6,0x17
 1020494:	13628073          	sfence.vma	t0,s6
 1020498:	00008067          	ret
 102049c:	04026b13          	ori	s6,tp,64
 10204a0:	03620863          	beq	tp,s6,0x10204d0
 10204a4:	01642023          	sw	s6,0(s0)
 10204a8:	02027b13          	andi	s6,tp,32
 10204ac:	02000d13          	li	s10,32
 10204b0:	01ab1663          	bne	s6,s10,0x10204bc
 10204b4:	12028073          	sfence.vma	t0
 10204b8:	0140006f          	j	0x10204cc
 10204bc:	18002b73          	csrr	s6,satp
 10204c0:	001b1b13          	slli	s6,s6,0x1
 10204c4:	017b5b13          	srli	s6,s6,0x17
 10204c8:	13628073          	sfence.vma	t0,s6
 10204cc:	00008067          	ret
 10204d0:	00f00b13          	li	s6,15
 10204d4:	03671c63          	bne	a4,s6,0x102050c
 10204d8:	08026b13          	ori	s6,tp,128
 10204dc:	03620863          	beq	tp,s6,0x102050c
 10204e0:	01642023          	sw	s6,0(s0)
 10204e4:	02027b13          	andi	s6,tp,32
 10204e8:	02000d13          	li	s10,32
 10204ec:	01ab1663          	bne	s6,s10,0x10204f8
 10204f0:	12028073          	sfence.vma	t0
 10204f4:	0140006f          	j	0x1020508
 10204f8:	18002b73          	csrr	s6,satp
 10204fc:	001b1b13          	slli	s6,s6,0x1
 1020500:	017b5b13          	srli	s6,s6,0x17
 1020504:	13628073          	sfence.vma	t0,s6
 1020508:	00008067          	ret
 102050c:	00100b13          	li	s6,1
 1020510:	07619e63          	bne	gp,s6,0x102058c
 1020514:	00c00b13          	li	s6,12
 1020518:	03671e63          	bne	a4,s6,0x1020554
 102051c:	01026b13          	ori	s6,tp,16
 1020520:	07621663          	bne	tp,s6,0x102058c
 1020524:	01024b13          	xori	s6,tp,16
 1020528:	01642023          	sw	s6,0(s0)
 102052c:	02027b13          	andi	s6,tp,32
 1020530:	02000d13          	li	s10,32
 1020534:	01ab1663          	bne	s6,s10,0x1020540
 1020538:	12028073          	sfence.vma	t0
 102053c:	0140006f          	j	0x1020550
 1020540:	18002b73          	csrr	s6,satp
 1020544:	001b1b13          	slli	s6,s6,0x1
 1020548:	017b5b13          	srli	s6,s6,0x17
 102054c:	13628073          	sfence.vma	t0,s6
 1020550:	00008067          	ret
 1020554:	01026b13          	ori	s6,tp,16
 1020558:	03621a63          	bne	tp,s6,0x102058c
 102055c:	01024b13          	xori	s6,tp,16
 1020560:	01642023          	sw	s6,0(s0)
 1020564:	02027b13          	andi	s6,tp,32
 1020568:	02000d13          	li	s10,32
 102056c:	01ab1663          	bne	s6,s10,0x1020578
 1020570:	12028073          	sfence.vma	t0
 1020574:	0140006f          	j	0x1020588
 1020578:	18002b73          	csrr	s6,satp
 102057c:	001b1b13          	slli	s6,s6,0x1
 1020580:	017b5b13          	srli	s6,s6,0x17
 1020584:	13628073          	sfence.vma	t0,s6
 1020588:	00008067          	ret
 102058c:	00000b13          	li	s6,0
 1020590:	056a0263          	beq	s4,s6,0x10205d4
 1020594:	3ff00d13          	li	s10,1023
 1020598:	00ad1d13          	slli	s10,s10,0xa
 102059c:	000d0b33          	add	s6,s10,zero
 10205a0:	00100993          	li	s3,1
 10205a4:	013a0e63          	beq	s4,s3,0x10205c0
 10205a8:	009d1d13          	slli	s10,s10,0x9
 10205ac:	01ab6b33          	or	s6,s6,s10
 10205b0:	00200993          	li	s3,2
 10205b4:	013a0663          	beq	s4,s3,0x10205c0
 10205b8:	009d1d13          	slli	s10,s10,0x9
 10205bc:	01ab6b33          	or	s6,s6,s10
 10205c0:	fffb4b13          	not	s6,s6
 10205c4:	01627b33          	and	s6,tp,s6
 10205c8:	01620663          	beq	tp,s6,0x10205d4
 10205cc:	01642023          	sw	s6,0(s0)
 10205d0:	00008067          	ret
 10205d4:	00008067          	ret
 10205d8:	ffc60613          	addi	a2,a2,-4
 10205dc:	00162023          	sw	ra,0(a2)
 10205e0:	ffc60613          	addi	a2,a2,-4
 10205e4:	01362023          	sw	s3,0(a2)
 10205e8:	ffc60613          	addi	a2,a2,-4
 10205ec:	01462023          	sw	s4,0(a2)
 10205f0:	ffc60613          	addi	a2,a2,-4
 10205f4:	00362023          	sw	gp,0(a2)
 10205f8:	ffc60613          	addi	a2,a2,-4
 10205fc:	00162023          	sw	ra,0(a2)
 1020600:	b09ff0ef          	jal	ra,0x1020108
 1020604:	00062083          	lw	ra,0(a2)
 1020608:	00460613          	addi	a2,a2,4
 102060c:	00070a33          	add	s4,a4,zero
 1020610:	000a8733          	add	a4,s5,zero
 1020614:	ffc60613          	addi	a2,a2,-4
 1020618:	00162023          	sw	ra,0(a2)
 102061c:	d61ff0ef          	jal	ra,0x102037c
 1020620:	00062083          	lw	ra,0(a2)
 1020624:	00460613          	addi	a2,a2,4
 1020628:	00062183          	lw	gp,0(a2)
 102062c:	00460613          	addi	a2,a2,4
 1020630:	00062a03          	lw	s4,0(a2)
 1020634:	00460613          	addi	a2,a2,4
 1020638:	00062983          	lw	s3,0(a2)
 102063c:	00460613          	addi	a2,a2,4
 1020640:	00062083          	lw	ra,0(a2)
 1020644:	00460613          	addi	a2,a2,4
 1020648:	00008067          	ret
 102064c:	df16206f          	j	0xf8343c

Disassembly of section text3:

0000000001021000 <text3>:
 1021000:	0800006f          	j	0x1021080
 1021004:	154e                	slli	a0,a0,0x33
 1021006:	f772                	sd	t3,424(sp)

Disassembly of section text4:

0000000001021080 <text4>:
 1021080:	ffc60613          	addi	a2,a2,-4
 1021084:	00162023          	sw	ra,0(a2)
 1021088:	ffc60613          	addi	a2,a2,-4
 102108c:	01a62023          	sw	s10,0(a2)
 1021090:	ffc60613          	addi	a2,a2,-4
 1021094:	01662023          	sw	s6,0(a2)
 1021098:	ffc60613          	addi	a2,a2,-4
 102109c:	00562023          	sw	t0,0(a2)
 10210a0:	ffc60613          	addi	a2,a2,-4
 10210a4:	00462023          	sw	tp,0(a2)
 10210a8:	ffc60613          	addi	a2,a2,-4
 10210ac:	00862023          	sw	s0,0(a2)
 10210b0:	ffc60613          	addi	a2,a2,-4
 10210b4:	00e62023          	sw	a4,0(a2)
 10210b8:	ffc60613          	addi	a2,a2,-4
 10210bc:	01562023          	sw	s5,0(a2)
 10210c0:	ffc60613          	addi	a2,a2,-4
 10210c4:	01962023          	sw	s9,0(a2)
 10210c8:	00100c93          	li	s9,1
 10210cc:	14202af3          	csrr	s5,scause
 10210d0:	001a9713          	slli	a4,s5,0x1
 10210d4:	00175713          	srli	a4,a4,0x1
 10210d8:	050000ef          	jal	ra,0x1021128
 10210dc:	00062c83          	lw	s9,0(a2)
 10210e0:	00460613          	addi	a2,a2,4
 10210e4:	00062a83          	lw	s5,0(a2)
 10210e8:	00460613          	addi	a2,a2,4
 10210ec:	00062703          	lw	a4,0(a2)
 10210f0:	00460613          	addi	a2,a2,4
 10210f4:	00062403          	lw	s0,0(a2)
 10210f8:	00460613          	addi	a2,a2,4
 10210fc:	00062203          	lw	tp,0(a2)
 1021100:	00460613          	addi	a2,a2,4
 1021104:	00062283          	lw	t0,0(a2)
 1021108:	00460613          	addi	a2,a2,4
 102110c:	00062b03          	lw	s6,0(a2)
 1021110:	00460613          	addi	a2,a2,4
 1021114:	00062d03          	lw	s10,0(a2)
 1021118:	00460613          	addi	a2,a2,4
 102111c:	00062083          	lw	ra,0(a2)
 1021120:	00460613          	addi	a2,a2,4
 1021124:	10200073          	sret
 1021128:	00000297          	auipc	t0,0x0
 102112c:	01428293          	addi	t0,t0,20 # 0x102113c
 1021130:	00271b13          	slli	s6,a4,0x2
 1021134:	005b02b3          	add	t0,s6,t0
 1021138:	00028067          	jr	t0
 102113c:	938ff06f          	j	0x1020274
 1021140:	948ff06f          	j	0x1020288
 1021144:	944ff06f          	j	0x1020288
 1021148:	940ff06f          	j	0x1020288
 102114c:	93cff06f          	j	0x1020288
 1021150:	938ff06f          	j	0x1020288
 1021154:	934ff06f          	j	0x1020288
 1021158:	930ff06f          	j	0x1020288
 102115c:	954ff06f          	j	0x10202b0
 1021160:	950ff06f          	j	0x10202b0
 1021164:	924ff06f          	j	0x1020288
 1021168:	948ff06f          	j	0x10202b0
 102116c:	c6cff06f          	j	0x10205d8
 1021170:	c68ff06f          	j	0x10205d8
 1021174:	914ff06f          	j	0x1020288
 1021178:	c60ff06f          	j	0x10205d8
 102117c:	df 63 43 ef           	Address 0x000000000102117c is out of bounds.


Disassembly of section text5:

0000000080000000 <text5>:
    80000000:	f1402af3          	csrr	s5,mhartid
    80000004:	001006b7          	lui	a3,0x100
    80000008:	02da86b3          	mul	a3,s5,a3
    8000000c:	80000b37          	lui	s6,0x80000
    80000010:	01668b33          	add	s6,a3,s6
    80000014:	000b0067          	jr	s6 # 0xffffffff80000000

Disassembly of section text6:

000000008000fd70 <text6>:
    8000fd70:	f425                	bnez	s0,0x8000fcd8
    8000fd72:	f590                	sd	a2,40(a1)
    8000fd74:	01e50db3          	add	s11,a0,t5

Disassembly of section text7:

0000000080010018 <text7>:
    80010018:	44be18e3          	bne	t3,a1,0x80010c68
    8001001c:	004a0733          	add	a4,s4,tp

Disassembly of section text8:

00000000800103a0 <text8>:
    800103a0:	00dd0c33          	add	s8,s10,a3
    800103a4:	a20e                	fsd	ft3,256(sp)
    800103a6:	8a56                	mv	s4,s5

Disassembly of section text9:

0000000080010760 <text9>:
    80010760:	ffce                	sd	s3,504(sp)
    80010762:	866362bb          	.4byte	0x866362bb
    80010766:	4ad2                	lw	s5,20(sp)
    80010768:	c3e86ce3          	bltu	a6,t5,0x800103a0
    8001076c:	537d5063          	bge	s10,s7,0x80010c8c
    80010770:	00510a33          	add	s4,sp,t0
    80010774:	24b2                	fld	fs1,264(sp)
    80010776:	f428                	sd	a0,104(s0)

Disassembly of section text10:

0000000080010a90 <text10>:
    80010a90:	7bc0                	ld	s0,176(a5)
    80010a92:	9c4e                	add	s8,s8,s3
    80010a94:	ae0c6063          	bltu	s8,zero,0x8000fd74
    80010a98:	00956ee3          	bltu	a0,s1,0x800112b4
    80010a9c:	005e0033          	add	zero,t3,t0

Disassembly of section text11:

0000000080010c10 <text11>:
    80010c10:	01b68f33          	add	t5,a3,s11
    80010c14:	ad19                	j	0x8001122a
    80010c16:	444c                	lw	a1,12(s0)

Disassembly of section text12:

0000000080010c68 <text12>:
    80010c68:	58bd80e3          	beq	s11,a1,0x800119e8
    80010c6c:	748e806f          	j	0x800f93b4

Disassembly of section text13:

0000000080010c88 <text13>:
    80010c88:	e05a                	sd	s6,0(sp)
    80010c8a:	a0fc                	fsd	fa5,192(s1)
    80010c8c:	b825c663          	blt	a1,sp,0x80010018
    80010c90:	00738733          	add	a4,t2,t2
    80010c94:	2502                	fld	fa0,0(sp)
    80010c96:	98da                	add	a7,a7,s6

Disassembly of section text14:

0000000080010cd8 <text14>:
    80010cd8:	a90896e3          	bne	a7,a6,0x80010764
    80010cdc:	01a98bb3          	add	s7,s3,s10

Disassembly of section text15:

0000000080011000 <text15>:
    80011000:	a8204ae3          	bgtz	sp,0x80010a94
    80011004:	002f8db3          	add	s11,t6,sp

Disassembly of section text16:

00000000800112b0 <text16>:
    800112b0:	63c18b0f          	.4byte	0x63c18b0f
    800112b4:	a24d62e3          	bltu	s10,tp,0x80010cd8
    800112b8:	01b706b3          	add	a3,a4,s11
    800112bc:	68ee                	ld	a7,216(sp)
    800112be:	43 5a             	Address 0x00000000800112be is out of bounds.


Disassembly of section text17:

00000000800119e8 <text17>:
    800119e8:	00df0133          	add	sp,t5,a3
    800119ec:	bf1a                	fsd	ft6,440(sp)
    800119ee:	1b58                	addi	a4,sp,436

Disassembly of section text18:

0000000080045ee8 <text18>:
    80045ee8:	c63e                	sw	a5,12(sp)
    80045eea:	857f                	.2byte	0x857f
    80045eec:	004f0033          	add	zero,t5,tp

Disassembly of section text19:

00000000800f3478 <text19>:
    800f3478:	c62d                	beqz	a2,0x800f34e2
    800f347a:	9c66                	add	s8,s8,s9
    800f347c:	006f04b3          	add	s1,t5,t1

Disassembly of section text20:

00000000800f38f8 <text20>:
    800f38f8:	77ef08e3          	beq	t5,t5,0x800f4868
    800f38fc:	01ce0933          	add	s2,t3,t3

Disassembly of section text21:

00000000800f3b28 <text21>:
    800f3b28:	8890                	.2byte	0x8890
    800f3b2a:	2eba                	fld	ft9,392(sp)
    800f3b2c:	000a0e33          	add	t3,s4,zero

Disassembly of section text22:

00000000800f3f70 <text22>:
    800f3f70:	cb045983          	lhu	s3,-848(s0)
    800f3f74:	01200e33          	add	t3,zero,s2

Disassembly of section text23:

00000000800f4110 <text23>:
    800f4110:	d6e1                	beqz	a3,0x800f40d8
    800f4112:	579d                	li	a5,-25
    800f4114:	fe346263          	bltu	s0,gp,0x800f38f8
    800f4118:	008b8a33          	add	s4,s7,s0
    800f411c:	42ec                	lw	a1,68(a3)
    800f411e:	1f ab             	Address 0x00000000800f411e is out of bounds.


Disassembly of section text24:

00000000800f4308 <text24>:
    800f4308:	8296c2e3          	blt	a3,s1,0x800f3b2c
    800f430c:	96a38863          	beq	t2,a0,0x800f347c
    800f4310:	20fb96e3          	bne	s7,a5,0x800f4d1c
    800f4314:	00590533          	add	a0,s2,t0

Disassembly of section text25:

00000000800f43b0 <text25>:
    800f43b0:	2994                	fld	fa3,16(a1)
    800f43b2:	f9a4                	sd	s1,112(a1)
    800f43b4:	010b8733          	add	a4,s7,a6

Disassembly of section text26:

00000000800f45d0 <text26>:
    800f45d0:	b534c2e3          	blt	s1,s3,0x800f4114
    800f45d4:	01cf0933          	add	s2,t5,t3

Disassembly of section text27:

00000000800f4718 <text27>:
    800f4718:	311d1663          	bne	s10,a7,0x800f4a24
    800f471c:	41684ce3          	blt	a6,s6,0x800f5334
    800f4720:	bf7994e3          	bne	s3,s7,0x800f4308
    800f4724:	01f40033          	add	zero,s0,t6

Disassembly of section text28:

00000000800f4868 <text28>:
    800f4868:	f15e0663          	beq	t3,s5,0x800f3f74
    800f486c:	ea58f8e3          	bgeu	a7,t0,0x800f471c
    800f4870:	00788fb3          	add	t6,a7,t2
    800f4874:	127f                	.2byte	0x127f
    800f4876:	0eb2                	slli	t4,t4,0xc

Disassembly of section text29:

00000000800f4ab8 <text29>:
    800f4ab8:	00250f33          	add	t5,a0,sp
    800f4abc:	1f ff 02 18           	Address 0x00000000800f4abc is out of bounds.


Disassembly of section text30:

00000000800f4d18 <text30>:
    800f4d18:	0049                	c.nop	18
    800f4d1a:	fee303c7          	.4byte	0xfee303c7
    800f4d1e:	d954                	sw	a3,52(a0)
    800f4d20:	2a7b6a63          	bltu	s6,t2,0x800f4fd4
    800f4d24:	00830bb3          	add	s7,t1,s0

Disassembly of section text31:

00000000800f4fd0 <text31>:
    800f4fd0:	6965                	lui	s2,0x19
    800f4fd2:	6d71                	lui	s10,0x1c
    800f4fd4:	be7a7063          	bgeu	s4,t2,0x800f43b4
    800f4fd8:	0000006f          	j	0x800f4fd8
    800f4fdc:	00e406b3          	add	a3,s0,a4

Disassembly of section text32:

00000000800f5058 <text32>:
    800f5058:	2d72c263          	blt	t0,s7,0x800f531c
    800f505c:	74a9cae3          	blt	s3,a0,0x800f5fb0
    800f5060:	01238333          	add	t1,t2,s2
    800f5064:	8f14                	.2byte	0x8f14
    800f5066:	bb56                	fsd	fs5,432(sp)

Disassembly of section text33:

00000000800f5318 <text33>:
    800f5318:	0abf53bf 006284b3 	.8byte	0x6284b30abf53bf

Disassembly of section text34:

00000000800f5330 <text34>:
    800f5330:	0424d993          	.4byte	0x424d993
    800f5334:	005c84b3          	add	s1,s9,t0

Disassembly of section text35:

00000000800f5428 <text35>:
    800f5428:	b889                	j	0x800f4c7a
    800f542a:	c263bea7          	fsd	ft6,-963(t2)
    800f542e:	9aa0                	.2byte	0x9aa0
    800f5430:	01a084b3          	add	s1,ra,s10
    800f5434:	a596                	fsd	ft5,200(sp)
    800f5436:	8bad                	andi	a5,a5,11

Disassembly of section text36:

00000000800f5bd8 <text36>:
    800f5bd8:	928a                	add	t0,t0,sp
    800f5bda:	cca1                	beqz	s1,0x800f5c32
    800f5bdc:	0c3e4663          	blt	t3,gp,0x800f5ca8
    800f5be0:	008204b3          	add	s1,tp,s0
    800f5be4:	b3ac                	fsd	fa1,96(a5)
    800f5be6:	355d                	addiw	a0,a0,-9

Disassembly of section text37:

00000000800f5ca8 <text37>:
    800f5ca8:	082a8ce3          	beq	s5,sp,0x800f6540
    800f5cac:	bbc9d663          	bge	s3,t3,0x800f5058
    800f5cb0:	a3c5006f          	j	0x80045eec
    800f5cb4:	006189b3          	add	s3,gp,t1

Disassembly of section text38:

00000000800f5fb0 <text38>:
    800f5fb0:	c6e06e63          	bltu	zero,a4,0x800f542c
    800f5fb4:	01030433          	add	s0,t1,a6

Disassembly of section text39:

00000000800f6320 <text39>:
    800f6320:	010f8033          	add	zero,t6,a6
    800f6324:	562baf2f          	.4byte	0x562baf2f

Disassembly of section text40:

00000000800f6450 <text40>:
    800f6450:	a8d8                	fsd	fa4,144(s1)
    800f6452:	8a00                	.2byte	0x8a00
    800f6454:	015b8933          	add	s2,s7,s5

Disassembly of section text41:

00000000800f6488 <text41>:
    800f6488:	b950                	fsd	fa2,176(a0)
    800f648a:	27d2                	fld	fa5,272(sp)
    800f648c:	82eb54e3          	bge	s6,a4,0x800f5cb4
    800f6490:	e8a208e3          	beq	tp,a0,0x800f6320
    800f6494:	f5659463          	bne	a1,s6,0x800f5bdc
    800f6498:	003806b3          	add	a3,a6,gp
    800f649c:	de46                	sw	a7,60(sp)
    800f649e:	beb2                	fsd	fa2,376(sp)

Disassembly of section text42:

00000000800f6540 <text42>:
    800f6540:	00d88733          	add	a4,a7,a3
    800f6544:	cea8                	sw	a0,88(a3)
    800f6546:	db 5f             	Address 0x00000000800f6546 is out of bounds.


Disassembly of section text43:

00000000800f6578 <text43>:
    800f6578:	42e8                	lw	a0,68(a3)
    800f657a:	f749                	bnez	a4,0x800f6504
    800f657c:	008c88b3          	add	a7,s9,s0

Disassembly of section text44:

00000000800f66e0 <text44>:
    800f66e0:	0c590463          	beq	s2,t0,0x800f67a8
    800f66e4:	4f3b50e3          	bge	s6,s3,0x800f73c4
    800f66e8:	01c88db3          	add	s11,a7,t3
    800f66ec:	eb52                	sd	s4,400(sp)
    800f66ee:	27 15             	Address 0x00000000800f66ee is out of bounds.


Disassembly of section text45:

00000000800f67a8 <text45>:
    800f67a8:	00178db3          	add	s11,a5,ra
    800f67ac:	6f68                	ld	a0,216(a4)
    800f67ae:	a629                	j	0x800f6ab8

Disassembly of section text46:

00000000800f6c20 <text46>:
    800f6c20:	16c6                	slli	a3,a3,0x31
    800f6c22:	fe7d                	bnez	a2,0x800f6c20
    800f6c24:	00f085b3          	add	a1,ra,a5

Disassembly of section text47:

00000000800f6cb8 <text47>:
    800f6cb8:	3645                	addiw	a2,a2,-15
    800f6cba:	3ee8                	fld	fa0,248(a3)
    800f6cbc:	f8d28c63          	beq	t0,a3,0x800f6454
    800f6cc0:	34b9d0e3          	bge	s3,a1,0x800f7800
    800f6cc4:	01b70a33          	add	s4,a4,s11

Disassembly of section text48:

00000000800f6e58 <text48>:
    800f6e58:	013b8d33          	add	s10,s7,s3
    800f6e5c:	5f24                	lw	s1,120(a4)
    800f6e5e:	40ea                	lw	ra,152(sp)

Disassembly of section text49:

00000000800f72b8 <text49>:
    800f72b8:	c3335463          	bge	t1,s3,0x800f66e0
    800f72bc:	00688f33          	add	t5,a7,t1

Disassembly of section text50:

00000000800f72e8 <text50>:
    800f72e8:	25826863          	bltu	tp,s8,0x800f7538
    800f72ec:	92a6ece3          	bltu	a3,a0,0x800f6c24
    800f72f0:	1b3e4ee3          	blt	t3,s3,0x800f7cac
    800f72f4:	012483b3          	add	t2,s1,s2

Disassembly of section text51:

00000000800f73c0 <text51>:
    800f73c0:	ac2a                	fsd	fa0,24(sp)
    800f73c2:	6286                	ld	t0,64(sp)
    800f73c4:	64397863          	bgeu	s2,gp,0x800f7a14
    800f73c8:	50a58463          	beq	a1,a0,0x800f78d0
    800f73cc:	9be45863          	bge	s0,t5,0x800f657c
    800f73d0:	3164e2e3          	bltu	s1,s6,0x800f7ed4
    800f73d4:	a90a72e3          	bgeu	s4,a6,0x800f6e58
    800f73d8:	8b57da63          	bge	a5,s5,0x800f648c
    800f73dc:	01a08033          	add	zero,ra,s10

Disassembly of section text52:

00000000800f7538 <text52>:
    800f7538:	003683b3          	add	t2,a3,gp
    800f753c:	c57a                	sw	t5,136(sp)
    800f753e:	5292                	lw	t0,36(sp)

Disassembly of section text53:

00000000800f7568 <text53>:
    800f7568:	abaa                	fsd	fa0,464(sp)
    800f756a:	7711                	lui	a4,0xfffe4
    800f756c:	019f0a33          	add	s4,t5,s9

Disassembly of section text54:

00000000800f7800 <text54>:
    800f7800:	aed164e3          	bltu	sp,a3,0x800f72e8
    800f7804:	011b81b3          	add	gp,s7,a7

Disassembly of section text55:

00000000800f78d0 <text55>:
    800f78d0:	00370fb3          	add	t6,a4,gp
    800f78d4:	d29a                	sw	t1,100(sp)
    800f78d6:	13 c6             	Address 0x00000000800f78d6 is out of bounds.


Disassembly of section text56:

00000000800f7948 <text56>:
    800f7948:	76ec8ab7          	lui	s5,0x76ec8
    800f794c:	b6231863          	bne	t1,sp,0x800f6cbc
    800f7950:	00af8433          	add	s0,t6,a0
    800f7954:	97c5                	srai	a5,a5,0x31
    800f7956:	afd1                	j	0x800f812a

Disassembly of section text57:

00000000800f7a10 <text57>:
    800f7a10:	72c0                	ld	s0,160(a3)
    800f7a12:	df05                	beqz	a4,0x800f794a
    800f7a14:	00080133          	add	sp,a6,zero

Disassembly of section text58:

00000000800f7ca8 <text58>:
    800f7ca8:	110af4d7          	.4byte	0x110af4d7
    800f7cac:	3c4598e3          	bne	a1,tp,0x800f887c
    800f7cb0:	008482b3          	add	t0,s1,s0
    800f7cb4:	dfb7678f          	.4byte	0xdfb7678f

Disassembly of section text59:

00000000800f7eb0 <text59>:
    800f7eb0:	40b0d4e3          	bge	ra,a1,0x800f8ab8
    800f7eb4:	017a8d33          	add	s10,s5,s7

Disassembly of section text60:

00000000800f7ed0 <text60>:
    800f7ed0:	807a                	c.mv	zero,t5
    800f7ed2:	03336367          	.4byte	0x3336367
    800f7ed6:	0089                	addi	ra,ra,2

Disassembly of section text61:

00000000800f7fe8 <text61>:
    800f7fe8:	e384                	sd	s1,0(a5)
    800f7fea:	d786                	sw	ra,236(sp)
    800f7fec:	961490e3          	bne	s1,ra,0x800f794c
    800f7ff0:	013882b3          	add	t0,a7,s3
    800f7ff4:	2df6                	fld	fs11,344(sp)
    800f7ff6:	83 53             	Address 0x00000000800f7ff6 is out of bounds.


Disassembly of section text62:

00000000800f8098 <text62>:
    800f8098:	cd1e7a63          	bgeu	t3,a7,0x800f756c
    800f809c:	a167ce63          	blt	a5,s6,0x800f72b8
    800f80a0:	01ff8f33          	add	t5,t6,t6
    800f80a4:	73f31c1b          	.4byte	0x73f31c1b

Disassembly of section text63:

00000000800f8198 <text63>:
    800f8198:	00788433          	add	s0,a7,t2
    800f819c:	d3c2                	sw	a6,228(sp)
    800f819e:	63 a7             	Address 0x00000000800f819e is out of bounds.


Disassembly of section text64:

00000000800f83f0 <text64>:
    800f83f0:	eaad                	bnez	a3,0x800f8462
    800f83f2:	18d9                	addi	a7,a7,-10
    800f83f4:	ca3292e3          	bne	t0,gp,0x800f8098
    800f83f8:	01ba8d33          	add	s10,s5,s11
    800f83fc:	409d                	li	ra,7
    800f83fe:	0edd                	addi	t4,t4,23

Disassembly of section text65:

00000000800f84c8 <text65>:
    800f84c8:	00e08433          	add	s0,ra,a4
    800f84cc:	6ee57d4b          	.4byte	0x6ee57d4b

Disassembly of section text66:

00000000800f85c8 <text66>:
    800f85c8:	10f20917          	auipc	s2,0x10f20
    800f85cc:	00b802b3          	add	t0,a6,a1

Disassembly of section text67:

00000000800f8878 <text67>:
    800f8878:	6005                	c.lui	zero,0x1
    800f887a:	76e37f4f          	.4byte	0x76e37f4f
    800f887e:	247c                	fld	fa5,200(s0)
    800f8880:	d536c6e3          	blt	a3,s3,0x800f85cc
    800f8884:	b682e8e3          	bltu	t0,s0,0x800f83f4
    800f8888:	00bc8d33          	add	s10,s9,a1
    800f888c:	5cde                	lw	s9,244(sp)
    800f888e:	53ac                	lw	a1,96(a5)

Disassembly of section text68:

00000000800f89f8 <text68>:
    800f89f8:	b82d                	j	0x800f8232
    800f89fa:	72e371c7          	fmsub.d	ft3,ft6,fa4,fa4
    800f89fe:	4d39                	li	s10,14
    800f8a00:	f8034c63          	bltz	t1,0x800f8198
    800f8a04:	6009d0e3          	bgez	s3,0x800f9804
    800f8a08:	6f89e2e3          	bltu	s3,s8,0x800f98ec
    800f8a0c:	df41f063          	bgeu	gp,s4,0x800f7fec
    800f8a10:	01868833          	add	a6,a3,s8
    800f8a14:	f17b2543          	fmadd.s	fa0,fs6,fs7,ft10,rdn

Disassembly of section text69:

00000000800f8ab8 <text69>:
    800f8ab8:	f49b82e3          	beq	s7,s1,0x800f89fc
    800f8abc:	5d5c5ce3          	bge	s8,s5,0x800f9894
    800f8ac0:	01410233          	add	tp,sp,s4
    800f8ac4:	4b8ffff7          	.4byte	0x4b8ffff7

Disassembly of section text70:

00000000800f8c38 <text70>:
    800f8c38:	b2ea                	fsd	fs10,352(sp)
    800f8c3a:	3a90                	fld	fa2,48(a3)
    800f8c3c:	01a001b3          	add	gp,zero,s10

Disassembly of section text71:

00000000800f8d78 <text71>:
    800f8d78:	7dc48ae3          	beq	s1,t3,0x800f9d4c
    800f8d7c:	f58f0663          	beq	t5,s8,0x800f84c8
    800f8d80:	93e11863          	bne	sp,t5,0x800f7eb0
    800f8d84:	00f901b3          	add	gp,s2,a5

Disassembly of section text72:

00000000800f9008 <text72>:
    800f9008:	013f02b3          	add	t0,t5,s3
    800f900c:	39b0                	fld	fa2,112(a1)
    800f900e:	8b 78             	Address 0x00000000800f900e is out of bounds.


Disassembly of section text73:

00000000800f9100 <text73>:
    800f9100:	5155                	li	sp,-11
    800f9102:	648c                	ld	a1,8(s1)
    800f9104:	14ee4463          	blt	t3,a4,0x800f924c
    800f9108:	00708bb3          	add	s7,ra,t2
    800f910c:	875caed3          	.4byte	0x875caed3

Disassembly of section text74:

00000000800f9248 <text74>:
    800f9248:	4724                	lw	s1,72(a4)
    800f924a:	191c                	addi	a5,sp,176
    800f924c:	30389263          	bne	a7,gp,0x800f9550
    800f9250:	01ca06b3          	add	a3,s4,t3
    800f9254:	ba06                	fsd	ft1,304(sp)
    800f9256:	27 3f             	Address 0x00000000800f9256 is out of bounds.


Disassembly of section text75:

00000000800f92c8 <text75>:
    800f92c8:	001505b3          	add	a1,a0,ra
    800f92cc:	6289                	lui	t0,0x2
    800f92ce:	a73a                	fsd	fa4,392(sp)

Disassembly of section text76:

00000000800f93b0 <text76>:
    800f93b0:	af98                	fsd	fa4,24(a5)
    800f93b2:	a9dc                	fsd	fa5,144(a1)
    800f93b4:	898b04e3          	beq	s6,s8,0x800f8c3c
    800f93b8:	2bb5da63          	bge	a1,s11,0x800f966c
    800f93bc:	c52746e3          	blt	a4,s2,0x800f9008
    800f93c0:	9ae2ece3          	bltu	t0,a4,0x800f8d78
    800f93c4:	01fb8933          	add	s2,s7,t6

Disassembly of section text77:

00000000800f9550 <text77>:
    800f9550:	4802f263          	bgeu	t0,zero,0x800f99d4
    800f9554:	01eb8533          	add	a0,s7,t5

Disassembly of section text78:

00000000800f9668 <text78>:
    800f9668:	1955                	addi	s2,s2,-11 # 0x910185bd
    800f966a:	8e2c                	.2byte	0x8e2c
    800f966c:	003a0b33          	add	s6,s4,gp

Disassembly of section text79:

00000000800f96c0 <text79>:
    800f96c0:	01878433          	add	s0,a5,s8
    800f96c4:	7534                	ld	a3,104(a0)
    800f96c6:	a16c                	fsd	fa1,192(a0)

Disassembly of section text80:

00000000800f9800 <text80>:
    800f9800:	cef5df4b          	.4byte	0xcef5df4b
    800f9804:	01a280b3          	add	ra,t0,s10

Disassembly of section text81:

00000000800f9890 <text81>:
    800f9890:	e03d03fb          	.4byte	0xe03d03fb
    800f9894:	30420ce3          	beq	tp,tp,0x800fa3ac
    800f9898:	01650a33          	add	s4,a0,s6
    800f989c:	a32d67db          	.4byte	0xa32d67db

Disassembly of section text82:

00000000800f98e8 <text82>:
    800f98e8:	4a2e                	lw	s4,200(sp)
    800f98ea:	473a                	lw	a4,140(sp)
    800f98ec:	00120933          	add	s2,tp,ra

Disassembly of section text83:

00000000800f99b0 <text83>:
    800f99b0:	010309b3          	add	s3,t1,a6
    800f99b4:	a59e                	fsd	ft7,200(sp)
    800f99b6:	5b 00             	Address 0x00000000800f99b6 is out of bounds.


Disassembly of section text84:

00000000800f99d0 <text84>:
    800f99d0:	d8fd                	beqz	s1,0x800f99c6
    800f99d2:	d515                	beqz	a0,0x800f98fe
    800f99d4:	3da36463          	bltu	t1,s10,0x800f9d9c
    800f99d8:	820af263          	bgeu	s5,zero,0x800f89fc
    800f99dc:	004b8b33          	add	s6,s7,tp

Disassembly of section text85:

00000000800f9cf0 <text85>:
    800f9cf0:	be651d23          	sh	t1,-1030(a0)
    800f9cf4:	503c72e3          	bgeu	s8,gp,0x800fa9f8
    800f9cf8:	310a8e63          	beq	s5,a6,0x800fa014
    800f9cfc:	39135c63          	bge	t1,a7,0x800fa094
    800f9d00:	00538d33          	add	s10,t2,t0
    800f9d04:	0985                	addi	s3,s3,1
    800f9d06:	18d8                	addi	a4,sp,116

Disassembly of section text86:

00000000800f9d48 <text86>:
    800f9d48:	aec0                	fsd	fs0,152(a3)
    800f9d4a:	d4f5                	beqz	s1,0x800f9d36
    800f9d4c:	01c98033          	add	zero,s3,t3

Disassembly of section text87:

00000000800f9d98 <text87>:
    800f9d98:	9ee2d013          	.4byte	0x9ee2d013
    800f9d9c:	01528ab3          	add	s5,t0,s5

Disassembly of section text88:

00000000800f9f60 <text88>:
    800f9f60:	b58d                	j	0x800f9dc2
    800f9f62:	98c9                	andi	s1,s1,-14
    800f9f64:	771d66e3          	bltu	s10,a7,0x800faed0
    800f9f68:	01318533          	add	a0,gp,s3
    800f9f6c:	9650                	.2byte	0x9650
    800f9f6e:	e135                	bnez	a0,0x800f9fd2

Disassembly of section text89:

00000000800fa010 <text89>:
    800fa010:	cbec                	sw	a1,84(a5)
    800fa012:	6d9f 8ab3 014d      	.byte	0x9f, 0x6d, 0xb3, 0x8a, 0x4d, 0x01

Disassembly of section text90:

00000000800fa090 <text90>:
    800fa090:	7d80                	ld	s0,56(a1)
    800fa092:	c736                	sw	a3,140(sp)
    800fa094:	4efd7ae3          	bgeu	s10,a5,0x800fad88
    800fa098:	01e806b3          	add	a3,a6,t5
    800fa09c:	22eff57b          	.4byte	0x22eff57b

Disassembly of section text91:

00000000800fa0f8 <text91>:
    800fa0f8:	804dc663          	blt	s11,tp,0x800f9104
    800fa0fc:	016a86b3          	add	a3,s5,s6

Disassembly of section text92:

00000000800fa240 <text92>:
    800fa240:	00a6                	slli	ra,ra,0x9
    800fa242:	2768                	fld	fa0,200(a4)
    800fa244:	31058263          	beq	a1,a6,0x800fa548
    800fa248:	d1279ee3          	bne	a5,s2,0x800f9f64
    800fa24c:	01800433          	add	s0,zero,s8

Disassembly of section text93:

00000000800fa328 <text93>:
    800fa328:	920e                	add	tp,tp,gp
    800fa32a:	4904                	lw	s1,16(a0)
    800fa32c:	01700b33          	add	s6,zero,s7

Disassembly of section text94:

00000000800fa3a8 <text94>:
    800fa3a8:	4079                	c.li	zero,30
    800fa3aa:	c46333e7          	.4byte	0xc46333e7
    800fa3ae:	7c54                	ld	a3,184(s0)
    800fa3b0:	01c203b3          	add	t2,tp,t3
    800fa3b4:	faea                	sd	s10,368(sp)
    800fa3b6:	44fd                	li	s1,31

Disassembly of section text95:

00000000800fa548 <text95>:
    800fa548:	018a8d33          	add	s10,s5,s8
    800fa54c:	c5e0                	sw	s0,76(a1)
    800fa54e:	b085                	j	0x800f9dae

Disassembly of section text96:

00000000800fa748 <text96>:
    800fa748:	f63c                	sd	a5,104(a2)
    800fa74a:	42631f13          	.4byte	0x42631f13
    800fa74e:	d4e3a6bf 5463952f 	.8byte	0x5463952fd4e3a6bf
    800fa756:	a944                	fsd	fs1,144(a0)
    800fa758:	d83fde63          	bge	t6,gp,0x800f9cf4
    800fa75c:	01f18733          	add	a4,gp,t6

Disassembly of section text97:

00000000800fa7d0 <text97>:
    800fa7d0:	1b31                	addi	s6,s6,-20
    800fa7d2:	2f11                	addiw	t5,t5,4
    800fa7d4:	00d20733          	add	a4,tp,a3

Disassembly of section text98:

00000000800fa808 <text98>:
    800fa808:	00638433          	add	s0,t2,t1
    800fa80c:	7bb0                	ld	a2,112(a5)
    800fa80e:	3e50                	fld	fa2,184(a2)

Disassembly of section text99:

00000000800fa968 <text99>:
    800fa968:	f10c                	sd	a1,32(a0)
    800fa96a:	fa6c                	sd	a1,240(a2)
    800fa96c:	00a30c33          	add	s8,t1,a0

Disassembly of section text100:

00000000800fa9f8 <text100>:
    800fa9f8:	00300333          	add	t1,zero,gp
    800fa9fc:	9781                	srai	a5,a5,0x20
    800fa9fe:	e65a                	sd	s6,264(sp)

Disassembly of section text101:

00000000800fab70 <text101>:
    800fab70:	5750fabb          	.4byte	0x5750fabb
    800fab74:	c634f0e3          	bgeu	s1,gp,0x800fa7d4
    800fab78:	ed859663          	bne	a1,s8,0x800fa244
    800fab7c:	003a0a33          	add	s4,s4,gp

Disassembly of section text102:

00000000800fad88 <text102>:
    800fad88:	bedc02e3          	beq	s8,a3,0x800fa96c
    800fad8c:	41f8e463          	bltu	a7,t6,0x800fb194
    800fad90:	b6a35463          	bge	t1,a0,0x800fa0f8
    800fad94:	018483b3          	add	t2,s1,s8

Disassembly of section text103:

00000000800faed0 <text103>:
    800faed0:	c5cbce63          	blt	s7,t3,0x800fa32c
    800faed4:	933a4ae3          	blt	s4,s3,0x800fa808
    800faed8:	86ea4ae3          	blt	s4,a4,0x800fa74c
    800faedc:	001b0433          	add	s0,s6,ra

Disassembly of section text104:

00000000800fb190 <text104>:
    800fb190:	9f542e93          	slti	t4,s0,-1547
    800fb194:	01fc0433          	add	s0,s8,t6

Disassembly of section data0:

00000000c9df2480 <data0>:
    c9df2480:	a602                	fsd	ft0,264(sp)
    c9df2482:	d423de2f          	.4byte	0xd423de2f
    c9df2486:	0c727b53          	.4byte	0xc727b53
    c9df248a:	1b51                	addi	s6,s6,-12
    c9df248c:	2bae                	fld	fs7,200(sp)
    c9df248e:	a878                	fsd	fa4,208(s0)
    c9df2490:	4dfadbf7          	.4byte	0x4dfadbf7
    c9df2494:	bf79                	j	0xc9df2432
    c9df2496:	96a6                	add	a3,a3,s1
    c9df2498:	e27f                	.2byte	0xe27f
    c9df249a:	c402                	sw	zero,8(sp)
    c9df249c:	63f5                	lui	t2,0x1d
    c9df249e:	5c00                	lw	s0,56(s0)
    c9df24a0:	dbf8210b          	.4byte	0xdbf8210b
    c9df24a4:	34c5                	addiw	s1,s1,-15
    c9df24a6:	7756                	ld	a4,368(sp)
    c9df24a8:	284d8e4f          	fnmadd.s	ft8,fs11,ft4,ft5,rne
    c9df24ac:	87b6                	mv	a5,a3
    c9df24ae:	15b9                	addi	a1,a1,-18
    c9df24b0:	5cce82f3          	.4byte	0x5cce82f3
    c9df24b4:	f351                	bnez	a4,0xc9df2438
    c9df24b6:	6ba8                	ld	a0,80(a5)
    c9df24b8:	d4a6                	sw	s1,104(sp)
    c9df24ba:	0e74                	addi	a3,sp,796
    c9df24bc:	938d                	srli	a5,a5,0x23
    c9df24be:	c646                	sw	a7,12(sp)
    c9df24c0:	e790                	sd	a2,8(a5)
    c9df24c2:	2490                	fld	fa2,8(s1)
    c9df24c4:	2c14                	fld	fa3,24(s0)
    c9df24c6:	7ed5                	lui	t4,0xffff5
    c9df24c8:	a116                	fsd	ft5,128(sp)
    c9df24ca:	9e68                	.2byte	0x9e68
    c9df24cc:	d0a9                	beqz	s1,0xc9df240e
    c9df24ce:	c11e                	sw	t2,128(sp)
    c9df24d0:	8f7d9297          	auipc	t0,0x8f7d9
    c9df24d4:	ed2d                	bnez	a0,0xc9df254e
    c9df24d6:	7f0e                	ld	t5,224(sp)
    c9df24d8:	062d306f          	j	0xc9ec553a
    c9df24dc:	fb44                	sd	s1,176(a4)
    c9df24de:	f4c1                	bnez	s1,0xc9df2466
    c9df24e0:	249d                	addiw	s1,s1,7
    c9df24e2:	25bb4d97          	auipc	s11,0x25bb4
    c9df24e6:	44f6                	lw	s1,92(sp)
    c9df24e8:	0a5d                	addi	s4,s4,23
    c9df24ea:	c9a8                	sw	a0,80(a1)
    c9df24ec:	cae66573          	csrrsi	a0,0xcae,12
    c9df24f0:	f1204b7b          	.4byte	0xf1204b7b
    c9df24f4:	ca18                	sw	a4,16(a2)
    c9df24f6:	ada5                	j	0xc9df2b6e
    c9df24f8:	8dbc                	.2byte	0x8dbc
    c9df24fa:	3d59                	addiw	s10,s10,-10 # 0x1bff6
    c9df24fc:	e5e4                	sd	s1,200(a1)
    c9df24fe:	de6c                	sw	a1,124(a2)
    c9df2500:	a375                	j	0xc9df2aac
    c9df2502:	7754                	ld	a3,168(a4)
    c9df2504:	1c72                	slli	s8,s8,0x3c
    c9df2506:	7cd96847          	.4byte	0x7cd96847
    c9df250a:	5dbe                	lw	s11,236(sp)
    c9df250c:	e1a0eb7b          	.4byte	0xe1a0eb7b
    c9df2510:	92b4                	.2byte	0x92b4
    c9df2512:	5aa5aa57          	.4byte	0x5aa5aa57
    c9df2516:	aa62                	fsd	fs8,272(sp)
    c9df2518:	50df72ab          	.4byte	0x50df72ab
    c9df251c:	0a76                	slli	s4,s4,0x1d
    c9df251e:	c2e8                	sw	a0,68(a3)
    c9df2520:	b0fbc397          	auipc	t2,0xb0fbc
    c9df2524:	d381                	beqz	a5,0xc9df2424
    c9df2526:	add1                	j	0xc9df2bfa
    c9df2528:	b8a5                	j	0xc9df1da0
    c9df252a:	f346                	sd	a7,416(sp)
    c9df252c:	44be                	lw	s1,204(sp)
    c9df252e:	995c                	.2byte	0x995c
    c9df2530:	2ff3296f          	jal	s2,0xc9e2502e
    c9df2534:	68bd                	lui	a7,0xf
    c9df2536:	615c                	ld	a5,128(a0)
    c9df2538:	46e9                	li	a3,26
    c9df253a:	fcb2                	sd	a2,120(sp)
    c9df253c:	6f47b9fb          	.4byte	0x6f47b9fb
    c9df2540:	6099                	lui	ra,0x6
    c9df2542:	2664                	fld	fs1,200(a2)
    c9df2544:	342c                	fld	fa1,104(s0)
    c9df2546:	8c26a7e7          	.4byte	0x8c26a7e7
    c9df254a:	9342                	add	t1,t1,a6
    c9df254c:	f72d                	bnez	a4,0xc9df24b6
    c9df254e:	fa06b85b          	.4byte	0xfa06b85b
    c9df2552:	2465                	addiw	s0,s0,25
    c9df2554:	b8de                	fsd	fs7,112(sp)
    c9df2556:	c021                	beqz	s0,0xc9df2596
    c9df2558:	c49d                	beqz	s1,0xc9df2586
    c9df255a:	ad15                	j	0xc9df2b8e
    c9df255c:	c098                	sw	a4,0(s1)
    c9df255e:	9d54                	.2byte	0x9d54
    c9df2560:	d01c01fb          	.4byte	0xd01c01fb
    c9df2564:	3a0d                	addiw	s4,s4,-29
    c9df2566:	ee1d                	bnez	a2,0xc9df25a4
    c9df2568:	07dd                	addi	a5,a5,23
    c9df256a:	2f06                	fld	ft10,64(sp)
    c9df256c:	5460                	lw	s0,108(s0)
    c9df256e:	0544                	addi	s1,sp,644
    c9df2570:	6906                	ld	s2,64(sp)
    c9df2572:	a7fc                	fsd	fa5,200(a5)
    c9df2574:	aef8                	fsd	fa4,216(a3)
    c9df2576:	0f01                	addi	t5,t5,0
    c9df2578:	1ea2103b          	.4byte	0x1ea2103b
    c9df257c:	d0fc                	sw	a5,100(s1)
    c9df257e:	e2dc                	sd	a5,128(a3)
    c9df2580:	0f35                	addi	t5,t5,13
    c9df2582:	261e                	fld	fa2,448(sp)
    c9df2584:	5c75                	li	s8,-3
    c9df2586:	df04                	sw	s1,56(a4)
    c9df2588:	f924                	sd	s1,112(a0)
    c9df258a:	7195                	lui	gp,0xfffe5
    c9df258c:	1f94                	addi	a3,sp,1008
    c9df258e:	8648                	.2byte	0x8648
    c9df2590:	823a                	mv	tp,a4
    c9df2592:	a4c5                	j	0xc9df2872
    c9df2594:	b7c4                	fsd	fs1,168(a5)
    c9df2596:	59f6                	lw	s3,124(sp)
    c9df2598:	216e                	fld	ft2,216(sp)
    c9df259a:	a4a5                	j	0xc9df2802
    c9df259c:	325e8793          	addi	a5,t4,805 # 0xffffffffffff5325
    c9df25a0:	b058483b          	.4byte	0xb058483b
    c9df25a4:	8a5f 2feb 336f      	.byte	0x5f, 0x8a, 0xeb, 0x2f, 0x6f, 0x33
    c9df25aa:	3592                	fld	fa1,288(sp)
    c9df25ac:	94a0c377          	.4byte	0x94a0c377
    c9df25b0:	2615                	addiw	a2,a2,5
    c9df25b2:	f77f11e7          	.4byte	0xf77f11e7
    c9df25b6:	9f9a                	add	t6,t6,t1
    c9df25b8:	1d6a6bfb          	.4byte	0x1d6a6bfb
    c9df25bc:	0e5d                	addi	t3,t3,23
    c9df25be:	25bd                	addiw	a1,a1,15
    c9df25c0:	393a                	fld	fs2,424(sp)
    c9df25c2:	25d1                	addiw	a1,a1,20
    c9df25c4:	1330                	addi	a2,sp,424
    c9df25c6:	fc6bab4b          	.4byte	0xfc6bab4b
    c9df25ca:	8a1c9377          	.4byte	0x8a1c9377
    c9df25ce:	8778                	.2byte	0x8778
    c9df25d0:	1db5                	addi	s11,s11,-19 # 0xef9a64cf
    c9df25d2:	d446                	sw	a7,40(sp)
    c9df25d4:	708c                	ld	a1,32(s1)
    c9df25d6:	7412                	ld	s0,288(sp)
    c9df25d8:	fc55                	bnez	s0,0xc9df2594
    c9df25da:	de15                	beqz	a2,0xc9df2516
    c9df25dc:	12fe                	slli	t0,t0,0x3f
    c9df25de:	6b38                	ld	a4,80(a4)
    c9df25e0:	50467117          	auipc	sp,0x50467
    c9df25e4:	dc29                	beqz	s0,0xc9df253e
    c9df25e6:	b1b6                	fsd	fa3,224(sp)
    c9df25e8:	b11a                	fsd	ft6,160(sp)
    c9df25ea:	5935                	li	s2,-19
    c9df25ec:	8484                	.2byte	0x8484
    c9df25ee:	e97f                	.2byte	0xe97f
    c9df25f0:	ff0d                	bnez	a4,0xc9df252a
    c9df25f2:	e104                	sd	s1,0(a0)
    c9df25f4:	4ad46147          	fmsub.d	ft2,fs0,fa3,fs1,unknown
    c9df25f8:	cadd                	beqz	a3,0xc9df26ae
    c9df25fa:	bae5                	j	0xc9df1ff2
    c9df25fc:	25c19f97          	auipc	t6,0x25c19
    c9df2600:	3dea                	fld	fs11,184(sp)
    c9df2602:	813a                	mv	sp,a4
    c9df2604:	7ef6                	ld	t4,376(sp)
    c9df2606:	8cfc                	.2byte	0x8cfc
    c9df2608:	ed79                	bnez	a0,0xc9df26e6
    c9df260a:	62cd                	lui	t0,0x13
    c9df260c:	bcc8                	fsd	fa0,184(s1)
    c9df260e:	0b8a47e3          	blt	s4,s8,0xc9df2ebc
    c9df2612:	a885                	j	0xc9df2682
    c9df2614:	eed2                	sd	s4,344(sp)
    c9df2616:	039ec1eb          	.4byte	0x39ec1eb
    c9df261a:	aa7cd877          	.4byte	0xaa7cd877
    c9df261e:	a78d                	j	0xc9df2d80
    c9df2620:	a0456ab3          	.4byte	0xa0456ab3
    c9df2624:	cc24                	sw	s1,88(s0)
    c9df2626:	89b8                	.2byte	0x89b8
    c9df2628:	c4ae                	sw	a1,72(sp)
    c9df262a:	2855                	addiw	a6,a6,21
    c9df262c:	9f20                	.2byte	0x9f20
    c9df262e:	591e4513          	xori	a0,t3,1425
    c9df2632:	a5fc7bc3          	.4byte	0xa5fc7bc3
    c9df2636:	6b6a                	ld	s6,152(sp)
    c9df2638:	f6e2                	sd	s8,360(sp)
    c9df263a:	6e51                	lui	t3,0x14
    c9df263c:	12b95923          	.4byte	0x12b95923
    c9df2640:	dcd8de37          	lui	t3,0xdcd8d
    c9df2644:	4834                	lw	a3,80(s0)
    c9df2646:	9a49                	andi	a2,a2,-14
    c9df2648:	6d32d727          	.4byte	0x6d32d727
    c9df264c:	7a7122b3          	.4byte	0x7a7122b3
    c9df2650:	87f6f2cb          	.4byte	0x87f6f2cb
    c9df2654:	43bc                	lw	a5,64(a5)
    c9df2656:	da1e                	sw	t2,52(sp)
    c9df2658:	936a                	add	t1,t1,s10
    c9df265a:	e5a4                	sd	s1,72(a1)
    c9df265c:	af75                	j	0xc9df2e18
    c9df265e:	c2fe7fa3          	.4byte	0xc2fe7fa3
    c9df2662:	4f7a                	lw	t5,156(sp)
    c9df2664:	b94a                	fsd	fs2,176(sp)
    c9df2666:	b639                	j	0xc9df2174
    c9df2668:	adac                	fsd	fa1,88(a1)
    c9df266a:	ecaa                	sd	a0,88(sp)
    c9df266c:	749a                	ld	s1,416(sp)
    c9df266e:	73a3b8d3          	.4byte	0x73a3b8d3
    c9df2672:	53ea                	lw	t2,184(sp)
    c9df2674:	0d0a                	slli	s10,s10,0x2
    c9df2676:	3707c72f          	.4byte	0x3707c72f
    c9df267a:	a395                	j	0xc9df2bde
    c9df267c:	038a                	slli	t2,t2,0x2
    c9df267e:	f326                	sd	s1,416(sp)
    c9df2680:	be0984f3          	.4byte	0xbe0984f3
    c9df2684:	b9a8                	fsd	fa0,112(a1)
    c9df2686:	99a0                	.2byte	0x99a0
    c9df2688:	7015                	c.lui	zero,0xfffe5
    c9df268a:	77e6                	ld	a5,120(sp)
    c9df268c:	7022                	.2byte	0x7022
    c9df268e:	0714                	addi	a3,sp,896
    c9df2690:	f15c                	sd	a5,160(a0)
    c9df2692:	76fd                	lui	a3,0xfffff
    c9df2694:	7e9356af          	.4byte	0x7e9356af
    c9df2698:	d301                	beqz	a4,0xc9df2598
    c9df269a:	a12d                	j	0xc9df2ac4
    c9df269c:	1a4c                	addi	a1,sp,308
    c9df269e:	9cf5                	.2byte	0x9cf5
    c9df26a0:	fc26                	sd	s1,56(sp)
    c9df26a2:	2cd5                	addiw	s9,s9,21
    c9df26a4:	cdbe                	sw	a5,216(sp)
    c9df26a6:	db69                	beqz	a4,0xc9df2678
    c9df26a8:	56b8                	lw	a4,104(a3)
    c9df26aa:	f841                	bnez	s0,0xc9df263a
    c9df26ac:	5df6                	lw	s11,124(sp)
    c9df26ae:	ae48                	fsd	fa0,152(a2)
    c9df26b0:	72f34603          	lbu	a2,1839(t1)
    c9df26b4:	42c5                	li	t0,17
    c9df26b6:	00cc                	addi	a1,sp,68
    c9df26b8:	f64689fb          	.4byte	0xf64689fb
    c9df26bc:	efa62197          	auipc	gp,0xefa62
    c9df26c0:	da48                	sw	a0,52(a2)
    c9df26c2:	a449                	j	0xc9df2944
    c9df26c4:	2ad5                	addiw	s5,s5,21 # 0x76ec8015
    c9df26c6:	3712                	fld	fa4,288(sp)
    c9df26c8:	3408                	fld	fa0,40(s0)
    c9df26ca:	8e54b8a3          	sd	t0,-1807(s1)
    c9df26ce:	b814                	fsd	fa3,48(s0)
    c9df26d0:	ce42                	sw	a6,28(sp)
    c9df26d2:	60e5                	lui	ra,0x19
    c9df26d4:	d805                	beqz	s0,0xc9df2604
    c9df26d6:	462c                	lw	a1,72(a2)
    c9df26d8:	edae                	sd	a1,216(sp)
    c9df26da:	0c30                	addi	a2,sp,536
    c9df26dc:	6504                	ld	s1,8(a0)
    c9df26de:	ffa41db7          	lui	s11,0xffa41
    c9df26e2:	c00e                	sw	gp,0(sp)
    c9df26e4:	dd689ae7          	.4byte	0xdd689ae7
    c9df26e8:	68279037          	lui	zero,0x68279
    c9df26ec:	ce6a                	sw	s10,28(sp)
    c9df26ee:	3036                	fld	ft0,360(sp)
    c9df26f0:	2ba8                	fld	fa0,80(a5)
    c9df26f2:	447c                	lw	a5,76(s0)
    c9df26f4:	9a68                	.2byte	0x9a68
    c9df26f6:	4c0d                	li	s8,3
    c9df26f8:	47b2333f d83b1197 	.8byte	0xd83b119747b2333f
    c9df2700:	3938                	fld	fa4,112(a0)
    c9df2702:	804dff8b          	.4byte	0x804dff8b
    c9df2706:	608c                	ld	a1,0(s1)
    c9df2708:	bb34                	fsd	fa3,112(a4)
    c9df270a:	0ef4                	addi	a3,sp,860
    c9df270c:	f1c2                	sd	a6,224(sp)
    c9df270e:	ffa4                	sd	s1,120(a5)
    c9df2710:	872e                	mv	a4,a1
    c9df2712:	3c16                	fld	fs8,352(sp)
    c9df2714:	752962af          	.4byte	0x752962af
    c9df2718:	2f4a                	fld	ft10,144(sp)
    c9df271a:	8f22                	mv	t5,s0
    c9df271c:	6c76                	ld	s8,344(sp)
    c9df271e:	cc92                	sw	tp,88(sp)
    c9df2720:	6228                	ld	a0,64(a2)
    c9df2722:	9b60                	.2byte	0x9b60
    c9df2724:	afd2                	fsd	fs4,472(sp)
    c9df2726:	c25c                	sw	a5,4(a2)
    c9df2728:	22a6                	fld	ft5,72(sp)
    c9df272a:	b1f96abf 2da1b45a 	.8byte	0x2da1b45ab1f96abf
    c9df2732:	dfd5                	beqz	a5,0xc9df26ee
    c9df2734:	82ed                	srli	a3,a3,0x1b
    c9df2736:	d0dd                	beqz	s1,0xc9df26dc
    c9df2738:	2f92                	fld	ft11,256(sp)
    c9df273a:	362e                	fld	fa2,232(sp)
    c9df273c:	b178                	fsd	fa4,224(a0)
    c9df273e:	738e                	ld	t2,224(sp)
    c9df2740:	a2b5                	j	0xc9df28ac
    c9df2742:	c725                	beqz	a4,0xc9df27aa
    c9df2744:	064a                	slli	a2,a2,0x12
    c9df2746:	83aa                	mv	t2,a0
    c9df2748:	ac44                	fsd	fs1,152(s0)
    c9df274a:	d5d1                	beqz	a1,0xc9df26d6
    c9df274c:	abe0                	fsd	fs0,208(a5)
    c9df274e:	704e                	.2byte	0x704e
    c9df2750:	d6b17147          	.4byte	0xd6b17147
    c9df2754:	337e                	fld	ft6,504(sp)
    c9df2756:	864e                	mv	a2,s3
    c9df2758:	13cdef4f          	fnmadd.d	ft10,fs11,ft8,ft2,unknown
    c9df275c:	dc0e                	sw	gp,56(sp)
    c9df275e:	6101                	addi	sp,sp,0
    c9df2760:	36f0                	fld	fa2,232(a3)
    c9df2762:	8335                	srli	a4,a4,0xd
    c9df2764:	7c81                	lui	s9,0xfffe0
    c9df2766:	17de                	slli	a5,a5,0x37
    c9df2768:	1e69                	addi	t3,t3,-6 # 0xffffffffdcd8cffa
    c9df276a:	d81c                	sw	a5,48(s0)
    c9df276c:	8526                	mv	a0,s1
    c9df276e:	087f                	.2byte	0x87f
    c9df2770:	24c1                	addiw	s1,s1,16
    c9df2772:	ad53bd17          	auipc	s10,0xad53b
    c9df2776:	e898                	sd	a4,16(s1)
    c9df2778:	7ee5                	lui	t4,0xffff9
    c9df277a:	e929aee7          	.4byte	0xe929aee7
    c9df277e:	128d                	addi	t0,t0,-29 # 0x12fe3
    c9df2780:	6872                	ld	a6,280(sp)
    c9df2782:	9582                	jalr	a1
    c9df2784:	88fc                	.2byte	0x88fc
    c9df2786:	e7a9                	bnez	a5,0xc9df27d0
    c9df2788:	38e4                	fld	fs1,240(s1)
    c9df278a:	2458                	fld	fa4,136(s0)
    c9df278c:	9c04                	.2byte	0x9c04
    c9df278e:	4fc3a87b          	.4byte	0x4fc3a87b
    c9df2792:	5559                	li	a0,-10
    c9df2794:	3838                	fld	fa4,112(s0)
    c9df2796:	a7e6                	fsd	fs9,456(sp)
    c9df2798:	eca0                	sd	s0,88(s1)
    c9df279a:	fe99                	bnez	a3,0xc9df26b8
    c9df279c:	84eeda0f          	.4byte	0x84eeda0f
    c9df27a0:	f2ec                	sd	a1,224(a3)
    c9df27a2:	b281                	j	0xc9df20e2
    c9df27a4:	c57c                	sw	a5,76(a0)
    c9df27a6:	ca16                	sw	t0,20(sp)
    c9df27a8:	2336                	fld	ft6,328(sp)
    c9df27aa:	7b8d                	lui	s7,0xfffe3
    c9df27ac:	2b65ed0f          	.4byte	0x2b65ed0f
    c9df27b0:	4d2c                	lw	a1,88(a0)
    c9df27b2:	958d                	srai	a1,a1,0x23
    c9df27b4:	0a85                	addi	s5,s5,1
    c9df27b6:	1420fae3          	bgeu	ra,sp,0xc9df310a
    c9df27ba:	24ad                	addiw	s1,s1,11
    c9df27bc:	016c                	addi	a1,sp,140
    c9df27be:	c076325b          	.4byte	0xc076325b
    c9df27c2:	5985                	li	s3,-31
    c9df27c4:	107d                	c.nop	-1
    c9df27c6:	711c                	ld	a5,32(a0)
    c9df27c8:	9e34                	.2byte	0x9e34
    c9df27ca:	402a                	.2byte	0x402a
    c9df27cc:	70dd                	lui	ra,0xffff7
    c9df27ce:	67dfde8b          	.4byte	0x67dfde8b
    c9df27d2:	20e5                	addiw	ra,ra,25 # 0xffffffffffff7019
    c9df27d4:	8a194f8f          	.4byte	0x8a194f8f
    c9df27d8:	fd44                	sd	s1,184(a0)
    c9df27da:	2154                	fld	fa3,128(a0)
    c9df27dc:	a3ed                	j	0xc9df2dc6
    c9df27de:	3535                	addiw	a0,a0,-19
    c9df27e0:	c966                	sw	s9,144(sp)
    c9df27e2:	aa08                	fsd	fa0,16(a2)
    c9df27e4:	be2a3f4f          	.4byte	0xbe2a3f4f
    c9df27e8:	7dc8                	ld	a0,184(a1)
    c9df27ea:	52b4a607          	flw	fa2,1323(s1)
    c9df27ee:	07ebedd3          	.4byte	0x7ebedd3
    c9df27f2:	ad72                	fsd	ft8,152(sp)
    c9df27f4:	0a5e                	slli	s4,s4,0x17
    c9df27f6:	06ee                	slli	a3,a3,0x1b
    c9df27f8:	7cd4                	ld	a3,184(s1)
    c9df27fa:	80c0                	.2byte	0x80c0
    c9df27fc:	5586c63b          	.4byte	0x5586c63b
    c9df2800:	3a51                	addiw	s4,s4,-12
    c9df2802:	99cd                	andi	a1,a1,-13
    c9df2804:	5c3a59a7          	.4byte	0x5c3a59a7
    c9df2808:	d9cd1287          	.4byte	0xd9cd1287
    c9df280c:	9760                	.2byte	0x9760
    c9df280e:	d702                	sw	zero,172(sp)
    c9df2810:	2980                	fld	fs0,16(a1)
    c9df2812:	de81                	beqz	a3,0xc9df272a
    c9df2814:	6066                	.2byte	0x6066
    c9df2816:	ddda                	sw	s6,248(sp)
    c9df2818:	3fb7278b          	.4byte	0x3fb7278b
    c9df281c:	307e761b          	.4byte	0x307e761b
    c9df2820:	b7dd4f47          	.4byte	0xb7dd4f47
    c9df2824:	1270                	addi	a2,sp,300
    c9df2826:	bd99                	j	0xc9df267c
    c9df2828:	618d                	lui	gp,0x3
    c9df282a:	ae14                	fsd	fa3,24(a2)
    c9df282c:	b91ddd4f          	fnmadd.s	fs10,fs11,fa7,fs7,unknown
    c9df2830:	9685585b          	.4byte	0x9685585b
    c9df2834:	ff4c0a73          	.4byte	0xff4c0a73
    c9df2838:	9a95                	andi	a3,a3,-27
    c9df283a:	1649                	addi	a2,a2,-14
    c9df283c:	50dd                	li	ra,-9
    c9df283e:	24abdf5b          	.4byte	0x24abdf5b
    c9df2842:	9728                	.2byte	0x9728
    c9df2844:	594e                	lw	s2,240(sp)
    c9df2846:	4370                	lw	a2,68(a4)
    c9df2848:	5c02                	lw	s8,32(sp)
    c9df284a:	c415                	beqz	s0,0xc9df2876
    c9df284c:	624a                	ld	tp,144(sp)
    c9df284e:	4524                	lw	s1,72(a0)
    c9df2850:	6e3c                	ld	a5,88(a2)
    c9df2852:	f5778f57          	.4byte	0xf5778f57
    c9df2856:	1a08                	addi	a0,sp,304
    c9df2858:	f6b5                	bnez	a3,0xc9df27c4
    c9df285a:	2c89                	addiw	s9,s9,2 # 0xfffffffffffe0002
    c9df285c:	696fd997          	auipc	s3,0x696fd
    c9df2860:	40ee                	lw	ra,216(sp)
    c9df2862:	78c89d43          	fmadd.s	fs10,fa7,fa2,fa5,rtz
    c9df2866:	857a                	mv	a0,t5
    c9df2868:	7b59                	lui	s6,0xffff6
    c9df286a:	f8cc                	sd	a1,176(s1)
    c9df286c:	a44d                	j	0xc9df2b0e
    c9df286e:	951d                	srai	a0,a0,0x27
    c9df2870:	5b1a                	lw	s6,164(sp)
    c9df2872:	64e8                	ld	a0,200(s1)
    c9df2874:	18e5                	addi	a7,a7,-7 # 0xeff9
    c9df2876:	f36e                	sd	s11,416(sp)
    c9df2878:	4b64                	lw	s1,84(a4)
    c9df287a:	5675                	li	a2,-3
    c9df287c:	29db83a7          	.4byte	0x29db83a7
