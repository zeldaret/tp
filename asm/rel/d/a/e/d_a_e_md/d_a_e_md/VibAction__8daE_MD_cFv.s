lbl_80709A04:
/* 80709A04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80709A08  7C 08 02 A6 */	mflr r0
/* 80709A0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80709A10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80709A14  7C 7F 1B 78 */	mr r31, r3
/* 80709A18  A8 03 05 CE */	lha r0, 0x5ce(r3)
/* 80709A1C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80709A20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80709A24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80709A28  7C 43 04 2E */	lfsx f2, r3, r0
/* 80709A2C  A8 1F 05 CA */	lha r0, 0x5ca(r31)
/* 80709A30  3C 60 80 71 */	lis r3, lit_4045@ha
/* 80709A34  C8 23 A5 44 */	lfd f1, lit_4045@l(r3)
/* 80709A38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80709A3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80709A40  3C 00 43 30 */	lis r0, 0x4330
/* 80709A44  90 01 00 08 */	stw r0, 8(r1)
/* 80709A48  C8 01 00 08 */	lfd f0, 8(r1)
/* 80709A4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80709A50  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80709A54  FC 00 00 1E */	fctiwz f0, f0
/* 80709A58  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80709A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80709A60  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80709A64  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80709A68  38 80 00 10 */	li r4, 0x10
/* 80709A6C  38 A0 00 03 */	li r5, 3
/* 80709A70  38 C0 01 00 */	li r6, 0x100
/* 80709A74  38 E0 00 00 */	li r7, 0
/* 80709A78  4B B6 6A C8 */	b cLib_addCalcAngleS__FPsssss
/* 80709A7C  A8 7F 05 CE */	lha r3, 0x5ce(r31)
/* 80709A80  A8 1F 05 CC */	lha r0, 0x5cc(r31)
/* 80709A84  7C 03 02 14 */	add r0, r3, r0
/* 80709A88  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 80709A8C  38 7F 05 CA */	addi r3, r31, 0x5ca
/* 80709A90  38 80 00 00 */	li r4, 0
/* 80709A94  38 A0 00 10 */	li r5, 0x10
/* 80709A98  4B B6 70 F8 */	b cLib_chaseAngleS__FPsss
/* 80709A9C  30 03 FF FF */	addic r0, r3, -1
/* 80709AA0  7C 00 19 10 */	subfe r0, r0, r3
/* 80709AA4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80709AA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80709AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80709AB0  7C 08 03 A6 */	mtlr r0
/* 80709AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80709AB8  4E 80 00 20 */	blr 
