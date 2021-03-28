lbl_807BFD60:
/* 807BFD60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807BFD64  7C 08 02 A6 */	mflr r0
/* 807BFD68  90 01 00 34 */	stw r0, 0x34(r1)
/* 807BFD6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807BFD70  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807BFD74  7C 7E 1B 78 */	mr r30, r3
/* 807BFD78  3C 60 80 7C */	lis r3, lit_3908@ha
/* 807BFD7C  3B E3 1F B8 */	addi r31, r3, lit_3908@l
/* 807BFD80  80 1E 06 BC */	lwz r0, 0x6bc(r30)
/* 807BFD84  28 00 00 06 */	cmplwi r0, 6
/* 807BFD88  41 81 02 54 */	bgt lbl_807BFFDC
/* 807BFD8C  3C 60 80 7C */	lis r3, lit_5104@ha
/* 807BFD90  38 63 22 38 */	addi r3, r3, lit_5104@l
/* 807BFD94  54 00 10 3A */	slwi r0, r0, 2
/* 807BFD98  7C 03 00 2E */	lwzx r0, r3, r0
/* 807BFD9C  7C 09 03 A6 */	mtctr r0
/* 807BFDA0  4E 80 04 20 */	bctr 
lbl_807BFDA4:
/* 807BFDA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024B@ha */
/* 807BFDA8  38 03 02 4B */	addi r0, r3, 0x024B /* 0x0007024B@l */
/* 807BFDAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 807BFDB0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BFDB4  38 81 00 18 */	addi r4, r1, 0x18
/* 807BFDB8  38 A0 FF FF */	li r5, -1
/* 807BFDBC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BFDC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BFDC4  7D 89 03 A6 */	mtctr r12
/* 807BFDC8  4E 80 04 21 */	bctrl 
/* 807BFDCC  7F C3 F3 78 */	mr r3, r30
/* 807BFDD0  38 80 00 07 */	li r4, 7
/* 807BFDD4  38 A0 00 00 */	li r5, 0
/* 807BFDD8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BFDDC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BFDE0  4B FF DD 01 */	bl setBck__8daE_TT_cFiUcff
/* 807BFDE4  7F C3 F3 78 */	mr r3, r30
/* 807BFDE8  4B FF FF 51 */	bl setDamageInit__8daE_TT_cFv
/* 807BFDEC  48 00 01 F0 */	b lbl_807BFFDC
lbl_807BFDF0:
/* 807BFDF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024B@ha */
/* 807BFDF4  38 03 02 4B */	addi r0, r3, 0x024B /* 0x0007024B@l */
/* 807BFDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BFDFC  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BFE00  38 81 00 14 */	addi r4, r1, 0x14
/* 807BFE04  38 A0 FF FF */	li r5, -1
/* 807BFE08  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BFE0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BFE10  7D 89 03 A6 */	mtctr r12
/* 807BFE14  4E 80 04 21 */	bctrl 
/* 807BFE18  7F C3 F3 78 */	mr r3, r30
/* 807BFE1C  38 80 00 08 */	li r4, 8
/* 807BFE20  38 A0 00 00 */	li r5, 0
/* 807BFE24  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BFE28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BFE2C  4B FF DC B5 */	bl setBck__8daE_TT_cFiUcff
/* 807BFE30  7F C3 F3 78 */	mr r3, r30
/* 807BFE34  4B FF FF 05 */	bl setDamageInit__8daE_TT_cFv
/* 807BFE38  48 00 01 A4 */	b lbl_807BFFDC
lbl_807BFE3C:
/* 807BFE3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024A@ha */
/* 807BFE40  38 03 02 4A */	addi r0, r3, 0x024A /* 0x0007024A@l */
/* 807BFE44  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BFE48  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BFE4C  38 81 00 10 */	addi r4, r1, 0x10
/* 807BFE50  38 A0 FF FF */	li r5, -1
/* 807BFE54  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BFE58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BFE5C  7D 89 03 A6 */	mtctr r12
/* 807BFE60  4E 80 04 21 */	bctrl 
/* 807BFE64  7F C3 F3 78 */	mr r3, r30
/* 807BFE68  38 80 00 06 */	li r4, 6
/* 807BFE6C  38 A0 00 00 */	li r5, 0
/* 807BFE70  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BFE74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BFE78  4B FF DC 69 */	bl setBck__8daE_TT_cFiUcff
/* 807BFE7C  7F C3 F3 78 */	mr r3, r30
/* 807BFE80  4B FF FE B9 */	bl setDamageInit__8daE_TT_cFv
/* 807BFE84  48 00 01 58 */	b lbl_807BFFDC
lbl_807BFE88:
/* 807BFE88  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070254@ha */
/* 807BFE8C  38 03 02 54 */	addi r0, r3, 0x0254 /* 0x00070254@l */
/* 807BFE90  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BFE94  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BFE98  38 81 00 0C */	addi r4, r1, 0xc
/* 807BFE9C  38 A0 FF FF */	li r5, -1
/* 807BFEA0  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BFEA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BFEA8  7D 89 03 A6 */	mtctr r12
/* 807BFEAC  4E 80 04 21 */	bctrl 
/* 807BFEB0  7F C3 F3 78 */	mr r3, r30
/* 807BFEB4  38 80 00 0F */	li r4, 0xf
/* 807BFEB8  38 A0 00 00 */	li r5, 0
/* 807BFEBC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BFEC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BFEC4  4B FF DC 1D */	bl setBck__8daE_TT_cFiUcff
/* 807BFEC8  7F C3 F3 78 */	mr r3, r30
/* 807BFECC  4B FF FE 6D */	bl setDamageInit__8daE_TT_cFv
/* 807BFED0  48 00 01 0C */	b lbl_807BFFDC
lbl_807BFED4:
/* 807BFED4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070252@ha */
/* 807BFED8  38 03 02 52 */	addi r0, r3, 0x0252 /* 0x00070252@l */
/* 807BFEDC  90 01 00 08 */	stw r0, 8(r1)
/* 807BFEE0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BFEE4  38 81 00 08 */	addi r4, r1, 8
/* 807BFEE8  38 A0 FF FF */	li r5, -1
/* 807BFEEC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 807BFEF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BFEF4  7D 89 03 A6 */	mtctr r12
/* 807BFEF8  4E 80 04 21 */	bctrl 
/* 807BFEFC  7F C3 F3 78 */	mr r3, r30
/* 807BFF00  38 80 00 11 */	li r4, 0x11
/* 807BFF04  38 A0 00 00 */	li r5, 0
/* 807BFF08  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807BFF0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807BFF10  4B FF DB D1 */	bl setBck__8daE_TT_cFiUcff
/* 807BFF14  7F C3 F3 78 */	mr r3, r30
/* 807BFF18  4B FF FE 21 */	bl setDamageInit__8daE_TT_cFv
/* 807BFF1C  48 00 00 C0 */	b lbl_807BFFDC
lbl_807BFF20:
/* 807BFF20  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 807BFF24  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807BFF28  41 82 00 B4 */	beq lbl_807BFFDC
lbl_807BFF2C:
/* 807BFF2C  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 807BFF30  28 00 00 00 */	cmplwi r0, 0
/* 807BFF34  41 82 00 2C */	beq lbl_807BFF60
/* 807BFF38  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807BFF3C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807BFF40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BFF44  40 81 00 08 */	ble lbl_807BFF4C
/* 807BFF48  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807BFF4C:
/* 807BFF4C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807BFF50  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BFF54  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807BFF58  4B AB 07 E8 */	b cLib_chaseF__FPfff
/* 807BFF5C  48 00 00 14 */	b lbl_807BFF70
lbl_807BFF60:
/* 807BFF60  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807BFF64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BFF68  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 807BFF6C  4B AB 07 D4 */	b cLib_chaseF__FPfff
lbl_807BFF70:
/* 807BFF70  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BFF74  38 80 00 01 */	li r4, 1
/* 807BFF78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BFF7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BFF80  40 82 00 18 */	bne lbl_807BFF98
/* 807BFF84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807BFF88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BFF8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BFF90  41 82 00 08 */	beq lbl_807BFF98
/* 807BFF94  38 80 00 00 */	li r4, 0
lbl_807BFF98:
/* 807BFF98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BFF9C  41 82 00 40 */	beq lbl_807BFFDC
/* 807BFFA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BFFA4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807BFFA8  7F C3 F3 78 */	mr r3, r30
/* 807BFFAC  4B FF EC 01 */	bl checkPlayerSearch__8daE_TT_cFv
/* 807BFFB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BFFB4  40 82 00 18 */	bne lbl_807BFFCC
/* 807BFFB8  7F C3 F3 78 */	mr r3, r30
/* 807BFFBC  38 80 00 00 */	li r4, 0
/* 807BFFC0  38 A0 00 00 */	li r5, 0
/* 807BFFC4  4B FF DC 21 */	bl setActionMode__8daE_TT_cFii
/* 807BFFC8  48 00 00 14 */	b lbl_807BFFDC
lbl_807BFFCC:
/* 807BFFCC  7F C3 F3 78 */	mr r3, r30
/* 807BFFD0  38 80 00 01 */	li r4, 1
/* 807BFFD4  38 A0 00 00 */	li r5, 0
/* 807BFFD8  4B FF DC 0D */	bl setActionMode__8daE_TT_cFii
lbl_807BFFDC:
/* 807BFFDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807BFFE0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807BFFE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807BFFE8  7C 08 03 A6 */	mtlr r0
/* 807BFFEC  38 21 00 30 */	addi r1, r1, 0x30
/* 807BFFF0  4E 80 00 20 */	blr 
