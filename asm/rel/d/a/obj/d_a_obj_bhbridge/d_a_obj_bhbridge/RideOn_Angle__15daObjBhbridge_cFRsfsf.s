lbl_80BB5318:
/* 80BB5318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB531C  7C 08 02 A6 */	mflr r0
/* 80BB5320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB5324  7C 83 23 78 */	mr r3, r4
/* 80BB5328  7C A0 07 34 */	extsh r0, r5
/* 80BB532C  3C 80 80 BB */	lis r4, lit_3655@ha
/* 80BB5330  C8 64 5F 00 */	lfd f3, lit_3655@l(r4)
/* 80BB5334  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5338  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB533C  3C 00 43 30 */	lis r0, 0x4330
/* 80BB5340  90 01 00 08 */	stw r0, 8(r1)
/* 80BB5344  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BB5348  EC 60 18 28 */	fsubs f3, f0, f3
/* 80BB534C  EC 01 10 24 */	fdivs f0, f1, f2
/* 80BB5350  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BB5354  FC 00 00 1E */	fctiwz f0, f0
/* 80BB5358  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BB535C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BB5360  38 A0 00 01 */	li r5, 1
/* 80BB5364  38 C0 01 00 */	li r6, 0x100
/* 80BB5368  38 E0 00 01 */	li r7, 1
/* 80BB536C  4B 6B B1 D4 */	b cLib_addCalcAngleS__FPsssss
/* 80BB5370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB5374  7C 08 03 A6 */	mtlr r0
/* 80BB5378  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB537C  4E 80 00 20 */	blr 
