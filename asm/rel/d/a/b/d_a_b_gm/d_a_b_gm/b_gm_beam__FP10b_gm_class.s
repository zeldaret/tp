lbl_805EEE50:
/* 805EEE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EEE54  7C 08 02 A6 */	mflr r0
/* 805EEE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EEE5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EEE60  93 C1 00 08 */	stw r30, 8(r1)
/* 805EEE64  7C 7E 1B 78 */	mr r30, r3
/* 805EEE68  3C 80 80 5F */	lis r4, lit_3774@ha /* 0x805F4188@ha */
/* 805EEE6C  3B E4 41 88 */	addi r31, r4, lit_3774@l /* 0x805F4188@l */
/* 805EEE70  A8 03 07 20 */	lha r0, 0x720(r3)
/* 805EEE74  2C 00 00 02 */	cmpwi r0, 2
/* 805EEE78  41 82 00 4C */	beq lbl_805EEEC4
/* 805EEE7C  40 80 00 10 */	bge lbl_805EEE8C
/* 805EEE80  2C 00 00 00 */	cmpwi r0, 0
/* 805EEE84  41 82 00 18 */	beq lbl_805EEE9C
/* 805EEE88  48 00 01 48 */	b lbl_805EEFD0
lbl_805EEE8C:
/* 805EEE8C  2C 00 00 04 */	cmpwi r0, 4
/* 805EEE90  41 82 00 E0 */	beq lbl_805EEF70
/* 805EEE94  40 80 01 3C */	bge lbl_805EEFD0
/* 805EEE98  48 00 00 8C */	b lbl_805EEF24
lbl_805EEE9C:
/* 805EEE9C  38 00 00 02 */	li r0, 2
/* 805EEEA0  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EEEA4  38 00 00 00 */	li r0, 0
/* 805EEEA8  98 1E 06 F4 */	stb r0, 0x6f4(r30)
/* 805EEEAC  38 80 00 09 */	li r4, 9
/* 805EEEB0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 805EEEB4  38 A0 00 00 */	li r5, 0
/* 805EEEB8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EEEBC  4B FF EB 41 */	bl anm_init__FP10b_gm_classifUcf
/* 805EEEC0  48 00 01 10 */	b lbl_805EEFD0
lbl_805EEEC4:
/* 805EEEC4  38 80 00 01 */	li r4, 1
/* 805EEEC8  98 9E 1A D6 */	stb r4, 0x1ad6(r30)
/* 805EEECC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EEED0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805EEED4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EEED8  40 82 00 18 */	bne lbl_805EEEF0
/* 805EEEDC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EEEE0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EEEE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EEEE8  41 82 00 08 */	beq lbl_805EEEF0
/* 805EEEEC  38 80 00 00 */	li r4, 0
lbl_805EEEF0:
/* 805EEEF0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805EEEF4  41 82 00 DC */	beq lbl_805EEFD0
/* 805EEEF8  7F C3 F3 78 */	mr r3, r30
/* 805EEEFC  38 80 00 0A */	li r4, 0xa
/* 805EEF00  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805EEF04  38 A0 00 02 */	li r5, 2
/* 805EEF08  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EEF0C  4B FF EA F1 */	bl anm_init__FP10b_gm_classifUcf
/* 805EEF10  38 00 00 03 */	li r0, 3
/* 805EEF14  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EEF18  38 00 00 C8 */	li r0, 0xc8
/* 805EEF1C  B0 1E 07 22 */	sth r0, 0x722(r30)
/* 805EEF20  48 00 00 B0 */	b lbl_805EEFD0
lbl_805EEF24:
/* 805EEF24  38 00 00 01 */	li r0, 1
/* 805EEF28  98 1E 1A D6 */	stb r0, 0x1ad6(r30)
/* 805EEF2C  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 805EEF30  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805EEF34  FC 40 08 90 */	fmr f2, f1
/* 805EEF38  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805EEF3C  4B C8 0B 01 */	bl cLib_addCalc2__FPffff
/* 805EEF40  A8 1E 07 22 */	lha r0, 0x722(r30)
/* 805EEF44  2C 00 00 00 */	cmpwi r0, 0
/* 805EEF48  40 82 00 88 */	bne lbl_805EEFD0
/* 805EEF4C  38 00 00 04 */	li r0, 4
/* 805EEF50  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EEF54  7F C3 F3 78 */	mr r3, r30
/* 805EEF58  38 80 00 0B */	li r4, 0xb
/* 805EEF5C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 805EEF60  38 A0 00 00 */	li r5, 0
/* 805EEF64  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EEF68  4B FF EA 95 */	bl anm_init__FP10b_gm_classifUcf
/* 805EEF6C  48 00 00 64 */	b lbl_805EEFD0
lbl_805EEF70:
/* 805EEF70  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 805EEF74  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805EEF78  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805EEF7C  4B C8 0B 05 */	bl cLib_addCalc0__FPfff
/* 805EEF80  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EEF84  38 80 00 01 */	li r4, 1
/* 805EEF88  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805EEF8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EEF90  40 82 00 18 */	bne lbl_805EEFA8
/* 805EEF94  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EEF98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EEF9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EEFA0  41 82 00 08 */	beq lbl_805EEFA8
/* 805EEFA4  38 80 00 00 */	li r4, 0
lbl_805EEFA8:
/* 805EEFA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805EEFAC  41 82 00 24 */	beq lbl_805EEFD0
/* 805EEFB0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EEFB4  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 805EEFB8  38 00 00 01 */	li r0, 1
/* 805EEFBC  B0 1E 07 1E */	sth r0, 0x71e(r30)
/* 805EEFC0  38 00 00 00 */	li r0, 0
/* 805EEFC4  B0 1E 07 22 */	sth r0, 0x722(r30)
/* 805EEFC8  38 00 00 04 */	li r0, 4
/* 805EEFCC  B0 1E 07 20 */	sth r0, 0x720(r30)
lbl_805EEFD0:
/* 805EEFD0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805EEFD4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EEFD8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EEFDC  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 805EEFE0  3C 80 80 5F */	lis r4, l_HIO@ha /* 0x805F47DC@ha */
/* 805EEFE4  38 84 47 DC */	addi r4, r4, l_HIO@l /* 0x805F47DC@l */
/* 805EEFE8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 805EEFEC  EC 03 00 32 */	fmuls f0, f3, f0
/* 805EEFF0  EC 62 00 2A */	fadds f3, f2, f0
/* 805EEFF4  4B C8 0A 49 */	bl cLib_addCalc2__FPffff
/* 805EEFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EEFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EF000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EF004  7C 08 03 A6 */	mtlr r0
/* 805EF008  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF00C  4E 80 00 20 */	blr 
