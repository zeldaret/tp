lbl_807FFC38:
/* 807FFC38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807FFC3C  7C 08 02 A6 */	mflr r0
/* 807FFC40  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FFC44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807FFC48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807FFC4C  7C 7E 1B 78 */	mr r30, r3
/* 807FFC50  3C 80 80 80 */	lis r4, lit_3902@ha
/* 807FFC54  3B E4 42 7C */	addi r31, r4, lit_3902@l
/* 807FFC58  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807FFC5C  2C 00 00 01 */	cmpwi r0, 1
/* 807FFC60  41 82 00 88 */	beq lbl_807FFCE8
/* 807FFC64  40 80 00 10 */	bge lbl_807FFC74
/* 807FFC68  2C 00 00 00 */	cmpwi r0, 0
/* 807FFC6C  40 80 00 14 */	bge lbl_807FFC80
/* 807FFC70  48 00 02 64 */	b lbl_807FFED4
lbl_807FFC74:
/* 807FFC74  2C 00 00 03 */	cmpwi r0, 3
/* 807FFC78  40 80 02 5C */	bge lbl_807FFED4
/* 807FFC7C  48 00 02 10 */	b lbl_807FFE8C
lbl_807FFC80:
/* 807FFC80  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FFC84  7C 00 07 75 */	extsb. r0, r0
/* 807FFC88  41 82 00 1C */	beq lbl_807FFCA4
/* 807FFC8C  38 80 00 0B */	li r4, 0xb
/* 807FFC90  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FFC94  38 A0 00 02 */	li r5, 2
/* 807FFC98  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FFC9C  4B FF DA 21 */	bl anm_init__FP10e_yh_classifUcf
/* 807FFCA0  48 00 00 18 */	b lbl_807FFCB8
lbl_807FFCA4:
/* 807FFCA4  38 80 00 0A */	li r4, 0xa
/* 807FFCA8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FFCAC  38 A0 00 02 */	li r5, 2
/* 807FFCB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FFCB4  4B FF DA 09 */	bl anm_init__FP10e_yh_classifUcf
lbl_807FFCB8:
/* 807FFCB8  7F C3 F3 78 */	mr r3, r30
/* 807FFCBC  38 80 00 15 */	li r4, 0x15
/* 807FFCC0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807FFCC4  38 A0 00 02 */	li r5, 2
/* 807FFCC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FFCCC  4B FF DA 9D */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FFCD0  38 00 00 01 */	li r0, 1
/* 807FFCD4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FFCD8  38 00 00 3C */	li r0, 0x3c
/* 807FFCDC  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807FFCE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FFCE4  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_807FFCE8:
/* 807FFCE8  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 807FFCEC  1C 04 03 84 */	mulli r0, r4, 0x384
/* 807FFCF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FFCF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807FFCF8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807FFCFC  7C 23 04 2E */	lfsx f1, r3, r0
/* 807FFD00  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807FFD04  EC 20 00 72 */	fmuls f1, f0, f1
/* 807FFD08  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807FFD0C  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 807FFD10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FFD14  7C 63 02 14 */	add r3, r3, r0
/* 807FFD18  C0 43 00 04 */	lfs f2, 4(r3)
/* 807FFD1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807FFD20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807FFD24  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807FFD28  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807FFD2C  EC 20 08 2A */	fadds f1, f0, f1
/* 807FFD30  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FFD34  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FFD38  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FFD3C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFD40  4B A6 FC FC */	b cLib_addCalc2__FPffff
/* 807FFD44  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807FFD48  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 807FFD4C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807FFD50  EC 21 00 2A */	fadds f1, f1, f0
/* 807FFD54  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FFD58  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FFD5C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FFD60  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFD64  4B A6 FC D8 */	b cLib_addCalc2__FPffff
/* 807FFD68  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FFD6C  7C 00 07 75 */	extsb. r0, r0
/* 807FFD70  41 82 00 2C */	beq lbl_807FFD9C
/* 807FFD74  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FFD78  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807FFD7C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 807FFD80  EC 21 00 28 */	fsubs f1, f1, f0
/* 807FFD84  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FFD88  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FFD8C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FFD90  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFD94  4B A6 FC A8 */	b cLib_addCalc2__FPffff
/* 807FFD98  48 00 00 28 */	b lbl_807FFDC0
lbl_807FFD9C:
/* 807FFD9C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807FFDA0  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807FFDA4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807FFDA8  EC 21 00 2A */	fadds f1, f1, f0
/* 807FFDAC  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807FFDB0  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807FFDB4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807FFDB8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FFDBC  4B A6 FC 80 */	b cLib_addCalc2__FPffff
lbl_807FFDC0:
/* 807FFDC0  38 7E 06 90 */	addi r3, r30, 0x690
/* 807FFDC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807FFDC8  FC 40 08 90 */	fmr f2, f1
/* 807FFDCC  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 807FFDD0  4B A6 FC 6C */	b cLib_addCalc2__FPffff
/* 807FFDD4  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FFDD8  2C 00 00 32 */	cmpwi r0, 0x32
/* 807FFDDC  41 81 00 38 */	bgt lbl_807FFE14
/* 807FFDE0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807FFDE4  41 80 00 30 */	blt lbl_807FFE14
/* 807FFDE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070088@ha */
/* 807FFDEC  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00070088@l */
/* 807FFDF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FFDF4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FFDF8  38 81 00 0C */	addi r4, r1, 0xc
/* 807FFDFC  38 A0 00 00 */	li r5, 0
/* 807FFE00  38 C0 FF FF */	li r6, -1
/* 807FFE04  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FFE08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807FFE0C  7D 89 03 A6 */	mtctr r12
/* 807FFE10  4E 80 04 21 */	bctrl 
lbl_807FFE14:
/* 807FFE14  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807FFE18  2C 00 00 00 */	cmpwi r0, 0
/* 807FFE1C  40 82 00 B8 */	bne lbl_807FFED4
/* 807FFE20  A8 7E 06 70 */	lha r3, 0x670(r30)
/* 807FFE24  38 03 00 01 */	addi r0, r3, 1
/* 807FFE28  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FFE2C  7F C3 F3 78 */	mr r3, r30
/* 807FFE30  38 80 00 12 */	li r4, 0x12
/* 807FFE34  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807FFE38  38 A0 00 00 */	li r5, 0
/* 807FFE3C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FFE40  4B FF D8 7D */	bl anm_init__FP10e_yh_classifUcf
/* 807FFE44  7F C3 F3 78 */	mr r3, r30
/* 807FFE48  38 80 00 14 */	li r4, 0x14
/* 807FFE4C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807FFE50  38 A0 00 02 */	li r5, 2
/* 807FFE54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FFE58  4B FF D9 11 */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FFE5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807FFE60  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807FFE64  90 01 00 08 */	stw r0, 8(r1)
/* 807FFE68  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807FFE6C  38 81 00 08 */	addi r4, r1, 8
/* 807FFE70  38 A0 00 00 */	li r5, 0
/* 807FFE74  38 C0 FF FF */	li r6, -1
/* 807FFE78  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807FFE7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FFE80  7D 89 03 A6 */	mtctr r12
/* 807FFE84  4E 80 04 21 */	bctrl 
/* 807FFE88  48 00 00 4C */	b lbl_807FFED4
lbl_807FFE8C:
/* 807FFE8C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807FFE90  38 80 00 01 */	li r4, 1
/* 807FFE94  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807FFE98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FFE9C  40 82 00 18 */	bne lbl_807FFEB4
/* 807FFEA0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807FFEA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807FFEA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807FFEAC  41 82 00 08 */	beq lbl_807FFEB4
/* 807FFEB0  38 80 00 00 */	li r4, 0
lbl_807FFEB4:
/* 807FFEB4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807FFEB8  41 82 00 1C */	beq lbl_807FFED4
/* 807FFEBC  38 00 00 03 */	li r0, 3
/* 807FFEC0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807FFEC4  38 00 00 00 */	li r0, 0
/* 807FFEC8  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807FFECC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FFED0  D0 1E 08 4C */	stfs f0, 0x84c(r30)
lbl_807FFED4:
/* 807FFED4  88 1E 08 54 */	lbz r0, 0x854(r30)
/* 807FFED8  7C 00 07 75 */	extsb. r0, r0
/* 807FFEDC  41 82 00 1C */	beq lbl_807FFEF8
/* 807FFEE0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FFEE4  38 80 40 00 */	li r4, 0x4000
/* 807FFEE8  38 A0 00 04 */	li r5, 4
/* 807FFEEC  38 C0 04 00 */	li r6, 0x400
/* 807FFEF0  4B A7 07 18 */	b cLib_addCalcAngleS2__FPssss
/* 807FFEF4  48 00 00 18 */	b lbl_807FFF0C
lbl_807FFEF8:
/* 807FFEF8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807FFEFC  38 80 C0 00 */	li r4, -16384
/* 807FFF00  38 A0 00 04 */	li r5, 4
/* 807FFF04  38 C0 04 00 */	li r6, 0x400
/* 807FFF08  4B A7 07 00 */	b cLib_addCalcAngleS2__FPssss
lbl_807FFF0C:
/* 807FFF0C  38 7E 08 48 */	addi r3, r30, 0x848
/* 807FFF10  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807FFF14  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807FFF18  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 807FFF1C  4B A6 FB 20 */	b cLib_addCalc2__FPffff
/* 807FFF20  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807FFF24  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807FFF28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807FFF2C  7C 08 03 A6 */	mtlr r0
/* 807FFF30  38 21 00 30 */	addi r1, r1, 0x30
/* 807FFF34  4E 80 00 20 */	blr 
