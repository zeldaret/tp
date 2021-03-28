lbl_80D43ACC:
/* 80D43ACC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D43AD0  7C 08 02 A6 */	mflr r0
/* 80D43AD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D43AD8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D43ADC  7C 7F 1B 78 */	mr r31, r3
/* 80D43AE0  3C 60 80 D4 */	lis r3, lit_4658@ha
/* 80D43AE4  C8 23 3F 90 */	lfd f1, lit_4658@l(r3)
/* 80D43AE8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80D43AEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D43AF0  3C 00 43 30 */	lis r0, 0x4330
/* 80D43AF4  90 01 00 08 */	stw r0, 8(r1)
/* 80D43AF8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D43AFC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D43B00  4B 52 3E 54 */	b cM_rndF__Ff
/* 80D43B04  3C 60 80 D4 */	lis r3, lit_4658@ha
/* 80D43B08  C8 43 3F 90 */	lfd f2, lit_4658@l(r3)
/* 80D43B0C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80D43B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43B14  3C 00 43 30 */	lis r0, 0x4330
/* 80D43B18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D43B1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D43B20  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D43B24  EC 00 08 2A */	fadds f0, f0, f1
/* 80D43B28  FC 00 00 1E */	fctiwz f0, f0
/* 80D43B2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D43B30  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80D43B34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D43B38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D43B3C  7C 08 03 A6 */	mtlr r0
/* 80D43B40  38 21 00 30 */	addi r1, r1, 0x30
/* 80D43B44  4E 80 00 20 */	blr 
