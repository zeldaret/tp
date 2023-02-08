lbl_80C9B8CC:
/* 80C9B8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9B8D0  7C 08 02 A6 */	mflr r0
/* 80C9B8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9B8D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C9B8DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C9B8E0  7C 7E 1B 78 */	mr r30, r3
/* 80C9B8E4  3C 60 80 CA */	lis r3, lit_3863@ha /* 0x80C9CD4C@ha */
/* 80C9B8E8  3B E3 CD 4C */	addi r31, r3, lit_3863@l /* 0x80C9CD4C@l */
/* 80C9B8EC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C9B8F0  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 80C9B8F4  EC 61 00 32 */	fmuls f3, f1, f0
/* 80C9B8F8  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C9B8FC  28 00 00 01 */	cmplwi r0, 1
/* 80C9B900  41 82 00 48 */	beq lbl_80C9B948
/* 80C9B904  A8 1E 05 80 */	lha r0, 0x580(r30)
/* 80C9B908  1C 00 01 90 */	mulli r0, r0, 0x190
/* 80C9B90C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9B910  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C9B914  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C9B918  7C 43 04 2E */	lfsx f2, r3, r0
/* 80C9B91C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C9B920  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 80C9B924  3C 80 80 CA */	lis r4, l_HIO@ha /* 0x80C9CEB4@ha */
/* 80C9B928  38 84 CE B4 */	addi r4, r4, l_HIO@l /* 0x80C9CEB4@l */
/* 80C9B92C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80C9B930  EC 21 00 2A */	fadds f1, f1, f0
/* 80C9B934  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80C9B938  EC 21 00 2A */	fadds f1, f1, f0
/* 80C9B93C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C9B940  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C9B944  4B 5D 40 F9 */	bl cLib_addCalc2__FPffff
lbl_80C9B948:
/* 80C9B948  A8 1E 05 94 */	lha r0, 0x594(r30)
/* 80C9B94C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9B950  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C9B954  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C9B958  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C9B95C  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 80C9B960  FC 00 00 50 */	fneg f0, f0
/* 80C9B964  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C9B968  FC 00 00 1E */	fctiwz f0, f0
/* 80C9B96C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C9B970  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C9B974  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C9B978  A8 1E 05 96 */	lha r0, 0x596(r30)
/* 80C9B97C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C9B980  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C9B984  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 80C9B988  FC 00 00 50 */	fneg f0, f0
/* 80C9B98C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C9B990  FC 00 00 1E */	fctiwz f0, f0
/* 80C9B994  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C9B998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9B99C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C9B9A0  38 7E 05 98 */	addi r3, r30, 0x598
/* 80C9B9A4  38 80 01 5E */	li r4, 0x15e
/* 80C9B9A8  38 A0 00 01 */	li r5, 1
/* 80C9B9AC  38 C0 00 0A */	li r6, 0xa
/* 80C9B9B0  4B 5D 4C 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80C9B9B4  38 7E 05 9A */	addi r3, r30, 0x59a
/* 80C9B9B8  38 80 01 2C */	li r4, 0x12c
/* 80C9B9BC  38 A0 00 01 */	li r5, 1
/* 80C9B9C0  38 C0 00 0A */	li r6, 0xa
/* 80C9B9C4  4B 5D 4C 45 */	bl cLib_addCalcAngleS2__FPssss
/* 80C9B9C8  38 7E 05 9C */	addi r3, r30, 0x59c
/* 80C9B9CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C9B9D0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C9B9D4  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C9B9D8  4B 5D 40 65 */	bl cLib_addCalc2__FPffff
/* 80C9B9DC  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80C9B9E0  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80C9B9E4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80C9B9E8  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80C9B9EC  4B 5D 40 51 */	bl cLib_addCalc2__FPffff
/* 80C9B9F0  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C9B9F4  A8 1E 05 A0 */	lha r0, 0x5a0(r30)
/* 80C9B9F8  2C 00 00 00 */	cmpwi r0, 0
/* 80C9B9FC  41 82 00 0C */	beq lbl_80C9BA08
/* 80C9BA00  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C9BA04  48 00 00 08 */	b lbl_80C9BA0C
lbl_80C9BA08:
/* 80C9BA08  C0 3F 00 20 */	lfs f1, 0x20(r31)
lbl_80C9BA0C:
/* 80C9BA0C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80C9BA10  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C9BA14  4B 5D 40 29 */	bl cLib_addCalc2__FPffff
/* 80C9BA18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C9BA1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C9BA20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9BA24  7C 08 03 A6 */	mtlr r0
/* 80C9BA28  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9BA2C  4E 80 00 20 */	blr 
