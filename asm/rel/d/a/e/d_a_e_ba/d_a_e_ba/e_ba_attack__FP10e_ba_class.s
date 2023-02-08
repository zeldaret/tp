lbl_8067FD68:
/* 8067FD68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067FD6C  7C 08 02 A6 */	mflr r0
/* 8067FD70  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067FD74  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8067FD78  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8067FD7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8067FD80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8067FD84  7C 7E 1B 78 */	mr r30, r3
/* 8067FD88  3C 80 80 68 */	lis r4, lit_3947@ha /* 0x806823BC@ha */
/* 8067FD8C  3B E4 23 BC */	addi r31, r4, lit_3947@l /* 0x806823BC@l */
/* 8067FD90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067FD94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067FD98  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 8067FD9C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8067FDA0  FC 20 F8 90 */	fmr f1, f31
/* 8067FDA4  D3 E3 06 90 */	stfs f31, 0x690(r3)
/* 8067FDA8  A8 03 06 74 */	lha r0, 0x674(r3)
/* 8067FDAC  2C 00 00 02 */	cmpwi r0, 2
/* 8067FDB0  41 82 00 C4 */	beq lbl_8067FE74
/* 8067FDB4  40 80 00 14 */	bge lbl_8067FDC8
/* 8067FDB8  2C 00 00 00 */	cmpwi r0, 0
/* 8067FDBC  41 82 00 18 */	beq lbl_8067FDD4
/* 8067FDC0  40 80 00 3C */	bge lbl_8067FDFC
/* 8067FDC4  48 00 01 50 */	b lbl_8067FF14
lbl_8067FDC8:
/* 8067FDC8  2C 00 00 04 */	cmpwi r0, 4
/* 8067FDCC  40 80 01 48 */	bge lbl_8067FF14
/* 8067FDD0  48 00 01 20 */	b lbl_8067FEF0
lbl_8067FDD4:
/* 8067FDD4  38 80 00 06 */	li r4, 6
/* 8067FDD8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8067FDDC  38 A0 00 02 */	li r5, 2
/* 8067FDE0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8067FDE4  4B FF EF AD */	bl anm_init__FP10e_ba_classifUcf
/* 8067FDE8  38 00 00 01 */	li r0, 1
/* 8067FDEC  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FDF0  38 00 00 14 */	li r0, 0x14
/* 8067FDF4  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8067FDF8  48 00 01 1C */	b lbl_8067FF14
lbl_8067FDFC:
/* 8067FDFC  C0 05 04 D0 */	lfs f0, 0x4d0(r5)
/* 8067FE00  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8067FE04  C0 05 04 D4 */	lfs f0, 0x4d4(r5)
/* 8067FE08  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8067FE0C  C0 05 04 D8 */	lfs f0, 0x4d8(r5)
/* 8067FE10  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8067FE14  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8067FE18  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8067FE1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8067FE20  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8067FE24  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8067FE28  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 8067FE2C  A8 1E 06 A8 */	lha r0, 0x6a8(r30)
/* 8067FE30  2C 00 00 00 */	cmpwi r0, 0
/* 8067FE34  40 82 00 E0 */	bne lbl_8067FF14
/* 8067FE38  38 00 00 02 */	li r0, 2
/* 8067FE3C  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FE40  38 00 00 0F */	li r0, 0xf
/* 8067FE44  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 8067FE48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B4@ha */
/* 8067FE4C  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000700B4@l */
/* 8067FE50  90 01 00 08 */	stw r0, 8(r1)
/* 8067FE54  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8067FE58  38 81 00 08 */	addi r4, r1, 8
/* 8067FE5C  38 A0 FF FF */	li r5, -1
/* 8067FE60  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 8067FE64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8067FE68  7D 89 03 A6 */	mtctr r12
/* 8067FE6C  4E 80 04 21 */	bctrl 
/* 8067FE70  48 00 00 A4 */	b lbl_8067FF14
lbl_8067FE74:
/* 8067FE74  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80682648@ha */
/* 8067FE78  38 63 26 48 */	addi r3, r3, l_HIO@l /* 0x80682648@l */
/* 8067FE7C  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8067FE80  80 1E 09 7C */	lwz r0, 0x97c(r30)
/* 8067FE84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8067FE88  41 82 00 50 */	beq lbl_8067FED8
/* 8067FE8C  38 00 00 0A */	li r0, 0xa
/* 8067FE90  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067FE94  38 60 00 00 */	li r3, 0
/* 8067FE98  B0 7E 06 74 */	sth r3, 0x674(r30)
/* 8067FE9C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8067FEA0  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8067FEA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8067FEA8  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8067FEAC  98 7E 06 A4 */	stb r3, 0x6a4(r30)
/* 8067FEB0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8067FEB4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8067FEB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8067FEBC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8067FEC0  38 64 5B D4 */	addi r3, r4, 0x5bd4
/* 8067FEC4  38 80 00 02 */	li r4, 2
/* 8067FEC8  38 A0 00 1F */	li r5, 0x1f
/* 8067FECC  38 C1 00 0C */	addi r6, r1, 0xc
/* 8067FED0  4B 9E FB 55 */	bl StartShock__12dVibration_cFii4cXyz
/* 8067FED4  48 00 00 40 */	b lbl_8067FF14
lbl_8067FED8:
/* 8067FED8  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 8067FEDC  2C 00 00 00 */	cmpwi r0, 0
/* 8067FEE0  40 82 00 34 */	bne lbl_8067FF14
/* 8067FEE4  38 00 00 03 */	li r0, 3
/* 8067FEE8  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FEEC  48 00 00 28 */	b lbl_8067FF14
lbl_8067FEF0:
/* 8067FEF0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8067FEF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8067FEF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067FEFC  4C 40 13 82 */	cror 2, 0, 2
/* 8067FF00  40 82 00 14 */	bne lbl_8067FF14
/* 8067FF04  38 00 00 02 */	li r0, 2
/* 8067FF08  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067FF0C  38 00 00 00 */	li r0, 0
/* 8067FF10  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_8067FF14:
/* 8067FF14  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8067FF18  FC 20 F8 90 */	fmr f1, f31
/* 8067FF1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8067FF20  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 8067FF24  3C 80 80 68 */	lis r4, l_HIO@ha /* 0x80682648@ha */
/* 8067FF28  38 84 26 48 */	addi r4, r4, l_HIO@l /* 0x80682648@l */
/* 8067FF2C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8067FF30  EC 63 00 32 */	fmuls f3, f3, f0
/* 8067FF34  4B BE FB 09 */	bl cLib_addCalc2__FPffff
/* 8067FF38  7F C3 F3 78 */	mr r3, r30
/* 8067FF3C  4B FF F6 09 */	bl fly_move__FP10e_ba_class
/* 8067FF40  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8067FF44  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8067FF48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8067FF4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8067FF50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067FF54  7C 08 03 A6 */	mtlr r0
/* 8067FF58  38 21 00 30 */	addi r1, r1, 0x30
/* 8067FF5C  4E 80 00 20 */	blr 
