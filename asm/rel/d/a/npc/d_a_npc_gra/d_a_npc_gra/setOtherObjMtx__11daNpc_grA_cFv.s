lbl_809C3A54:
/* 809C3A54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C3A58  7C 08 02 A6 */	mflr r0
/* 809C3A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C3A60  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809C3A64  7C 7F 1B 78 */	mr r31, r3
/* 809C3A68  88 03 15 0C */	lbz r0, 0x150c(r3)
/* 809C3A6C  28 00 00 00 */	cmplwi r0, 0
/* 809C3A70  41 82 00 A4 */	beq lbl_809C3B14
/* 809C3A74  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 809C3A78  2C 00 00 07 */	cmpwi r0, 7
/* 809C3A7C  41 82 00 08 */	beq lbl_809C3A84
/* 809C3A80  48 00 00 94 */	b lbl_809C3B14
lbl_809C3A84:
/* 809C3A84  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809C3A88  D0 01 00 08 */	stfs f0, 8(r1)
/* 809C3A8C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809C3A90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C3A94  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809C3A98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C3A9C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C3AA0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C3AA4  4B 99 E6 08 */	b __cvt_fp2unsigned
/* 809C3AA8  38 80 00 1F */	li r4, 0x1f
/* 809C3AAC  7C 03 23 96 */	divwu r0, r3, r4
/* 809C3AB0  7C 00 21 D6 */	mullw r0, r0, r4
/* 809C3AB4  7C 00 18 50 */	subf r0, r0, r3
/* 809C3AB8  3C 60 80 9D */	lis r3, l_offsetHeight@ha
/* 809C3ABC  38 63 AF 08 */	addi r3, r3, l_offsetHeight@l
/* 809C3AC0  7C 03 00 AE */	lbzx r0, r3, r0
/* 809C3AC4  3C 60 80 9D */	lis r3, lit_6463@ha
/* 809C3AC8  C8 23 A4 38 */	lfd f1, lit_6463@l(r3)
/* 809C3ACC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809C3AD0  3C 00 43 30 */	lis r0, 0x4330
/* 809C3AD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 809C3AD8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809C3ADC  EC 20 08 28 */	fsubs f1, f0, f1
/* 809C3AE0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809C3AE4  EC 00 08 2A */	fadds f0, f0, f1
/* 809C3AE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C3AEC  38 61 00 08 */	addi r3, r1, 8
/* 809C3AF0  4B 64 92 74 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809C3AF4  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 809C3AF8  4B 64 94 4C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 809C3AFC  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 809C3B00  4B 64 93 70 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 809C3B04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C3B08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C3B0C  38 9F 14 DC */	addi r4, r31, 0x14dc
/* 809C3B10  4B 98 29 A0 */	b PSMTXCopy
lbl_809C3B14:
/* 809C3B14  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809C3B18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C3B1C  7C 08 03 A6 */	mtlr r0
/* 809C3B20  38 21 00 30 */	addi r1, r1, 0x30
/* 809C3B24  4E 80 00 20 */	blr 
