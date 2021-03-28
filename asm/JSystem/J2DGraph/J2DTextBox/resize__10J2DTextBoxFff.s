lbl_80300AF8:
/* 80300AF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80300AFC  7C 08 02 A6 */	mflr r0
/* 80300B00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80300B04  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80300B08  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80300B0C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80300B10  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80300B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80300B18  93 C1 00 08 */	stw r30, 8(r1)
/* 80300B1C  7C 7E 1B 78 */	mr r30, r3
/* 80300B20  FF C0 08 90 */	fmr f30, f1
/* 80300B24  FF E0 10 90 */	fmr f31, f2
/* 80300B28  88 03 00 B5 */	lbz r0, 0xb5(r3)
/* 80300B2C  28 00 00 00 */	cmplwi r0, 0
/* 80300B30  41 82 00 94 */	beq lbl_80300BC4
/* 80300B34  34 1E 00 DC */	addic. r0, r30, 0xdc
/* 80300B38  41 82 00 8C */	beq lbl_80300BC4
/* 80300B3C  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 80300B40  28 03 00 00 */	cmplwi r3, 0
/* 80300B44  41 82 00 80 */	beq lbl_80300BC4
/* 80300B48  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 80300B4C  7F E3 FB 78 */	mr r3, r31
/* 80300B50  81 9F 00 00 */	lwz r12, 0(r31)
/* 80300B54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80300B58  7D 89 03 A6 */	mtctr r12
/* 80300B5C  4E 80 04 21 */	bctrl 
/* 80300B60  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80300B64  28 00 00 11 */	cmplwi r0, 0x11
/* 80300B68  40 82 00 5C */	bne lbl_80300BC4
/* 80300B6C  7F E3 FB 78 */	mr r3, r31
/* 80300B70  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80300B74  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80300B78  EC 41 00 28 */	fsubs f2, f1, f0
/* 80300B7C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80300B80  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80300B84  EC 01 00 28 */	fsubs f0, f1, f0
/* 80300B88  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80300B8C  EC 22 00 2A */	fadds f1, f2, f0
/* 80300B90  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80300B94  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80300B98  EC 62 00 28 */	fsubs f3, f2, f0
/* 80300B9C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80300BA0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80300BA4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80300BA8  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80300BAC  EC 43 00 2A */	fadds f2, f3, f0
/* 80300BB0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80300BB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80300BB8  7D 89 03 A6 */	mtctr r12
/* 80300BBC  4E 80 04 21 */	bctrl 
/* 80300BC0  48 00 00 14 */	b lbl_80300BD4
lbl_80300BC4:
/* 80300BC4  7F C3 F3 78 */	mr r3, r30
/* 80300BC8  FC 20 F0 90 */	fmr f1, f30
/* 80300BCC  FC 40 F8 90 */	fmr f2, f31
/* 80300BD0  4B FF 64 29 */	bl resize__7J2DPaneFff
lbl_80300BD4:
/* 80300BD4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80300BD8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80300BDC  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80300BE0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80300BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80300BE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80300BEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80300BF0  7C 08 03 A6 */	mtlr r0
/* 80300BF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80300BF8  4E 80 00 20 */	blr 
