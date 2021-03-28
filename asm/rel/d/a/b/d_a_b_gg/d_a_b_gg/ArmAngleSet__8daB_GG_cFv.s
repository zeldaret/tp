lbl_805EB028:
/* 805EB028  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805EB02C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805EB030  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805EB034  88 84 05 68 */	lbz r4, 0x568(r4)
/* 805EB038  38 04 FF FD */	addi r0, r4, -3
/* 805EB03C  28 00 00 1C */	cmplwi r0, 0x1c
/* 805EB040  4D 81 00 20 */	bgtlr 
/* 805EB044  3C 80 80 5F */	lis r4, lit_9091@ha
/* 805EB048  38 84 D5 6C */	addi r4, r4, lit_9091@l
/* 805EB04C  54 00 10 3A */	slwi r0, r0, 2
/* 805EB050  7C 04 00 2E */	lwzx r0, r4, r0
/* 805EB054  7C 09 03 A6 */	mtctr r0
/* 805EB058  4E 80 04 20 */	bctr 
lbl_805EB05C:
/* 805EB05C  38 00 EE D0 */	li r0, -4400
/* 805EB060  B0 03 06 D0 */	sth r0, 0x6d0(r3)
/* 805EB064  38 00 1B 58 */	li r0, 0x1b58
/* 805EB068  B0 03 06 CC */	sth r0, 0x6cc(r3)
/* 805EB06C  4E 80 00 20 */	blr 
lbl_805EB070:
/* 805EB070  38 00 D0 00 */	li r0, -12288
/* 805EB074  B0 03 06 C8 */	sth r0, 0x6c8(r3)
/* 805EB078  4E 80 00 20 */	blr 
lbl_805EB07C:
/* 805EB07C  38 00 DC D8 */	li r0, -9000
/* 805EB080  B0 03 06 CE */	sth r0, 0x6ce(r3)
/* 805EB084  38 00 3B C4 */	li r0, 0x3bc4
/* 805EB088  B0 03 06 CA */	sth r0, 0x6ca(r3)
lbl_805EB08C:
/* 805EB08C  4E 80 00 20 */	blr 
