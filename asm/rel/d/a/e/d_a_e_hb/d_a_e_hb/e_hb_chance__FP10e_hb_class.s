lbl_804FDC90:
/* 804FDC90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FDC94  7C 08 02 A6 */	mflr r0
/* 804FDC98  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FDC9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804FDCA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804FDCA4  7C 7E 1B 78 */	mr r30, r3
/* 804FDCA8  3C 80 80 50 */	lis r4, lit_3788@ha /* 0x80500B04@ha */
/* 804FDCAC  3B E4 0B 04 */	addi r31, r4, lit_3788@l /* 0x80500B04@l */
/* 804FDCB0  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 804FDCB4  2C 00 00 01 */	cmpwi r0, 1
/* 804FDCB8  41 82 00 88 */	beq lbl_804FDD40
/* 804FDCBC  40 80 00 10 */	bge lbl_804FDCCC
/* 804FDCC0  2C 00 00 00 */	cmpwi r0, 0
/* 804FDCC4  40 80 00 14 */	bge lbl_804FDCD8
/* 804FDCC8  48 00 02 64 */	b lbl_804FDF2C
lbl_804FDCCC:
/* 804FDCCC  2C 00 00 03 */	cmpwi r0, 3
/* 804FDCD0  40 80 02 5C */	bge lbl_804FDF2C
/* 804FDCD4  48 00 02 10 */	b lbl_804FDEE4
lbl_804FDCD8:
/* 804FDCD8  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FDCDC  7C 00 07 75 */	extsb. r0, r0
/* 804FDCE0  41 82 00 1C */	beq lbl_804FDCFC
/* 804FDCE4  38 80 00 0A */	li r4, 0xa
/* 804FDCE8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804FDCEC  38 A0 00 02 */	li r5, 2
/* 804FDCF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FDCF4  4B FF E0 C5 */	bl anm_init__FP10e_hb_classifUcf
/* 804FDCF8  48 00 00 18 */	b lbl_804FDD10
lbl_804FDCFC:
/* 804FDCFC  38 80 00 09 */	li r4, 9
/* 804FDD00  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804FDD04  38 A0 00 02 */	li r5, 2
/* 804FDD08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FDD0C  4B FF E0 AD */	bl anm_init__FP10e_hb_classifUcf
lbl_804FDD10:
/* 804FDD10  7F C3 F3 78 */	mr r3, r30
/* 804FDD14  38 80 00 14 */	li r4, 0x14
/* 804FDD18  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804FDD1C  38 A0 00 02 */	li r5, 2
/* 804FDD20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FDD24  4B FF E1 41 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FDD28  38 00 00 01 */	li r0, 1
/* 804FDD2C  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FDD30  38 00 00 3C */	li r0, 0x3c
/* 804FDD34  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 804FDD38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FDD3C  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_804FDD40:
/* 804FDD40  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 804FDD44  1C 04 03 84 */	mulli r0, r4, 0x384
/* 804FDD48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FDD4C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804FDD50  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804FDD54  7C 23 04 2E */	lfsx f1, r3, r0
/* 804FDD58  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804FDD5C  EC 20 00 72 */	fmuls f1, f0, f1
/* 804FDD60  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804FDD64  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 804FDD68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FDD6C  7C 63 02 14 */	add r3, r3, r0
/* 804FDD70  C0 43 00 04 */	lfs f2, 4(r3)
/* 804FDD74  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804FDD78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804FDD7C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FDD80  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804FDD84  EC 20 08 2A */	fadds f1, f0, f1
/* 804FDD88  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FDD8C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FDD90  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FDD94  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FDD98  4B D7 1C A5 */	bl cLib_addCalc2__FPffff
/* 804FDD9C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804FDDA0  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 804FDDA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FDDA8  EC 21 00 2A */	fadds f1, f1, f0
/* 804FDDAC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FDDB0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FDDB4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FDDB8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FDDBC  4B D7 1C 81 */	bl cLib_addCalc2__FPffff
/* 804FDDC0  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FDDC4  7C 00 07 75 */	extsb. r0, r0
/* 804FDDC8  41 82 00 2C */	beq lbl_804FDDF4
/* 804FDDCC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FDDD0  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 804FDDD4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804FDDD8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804FDDDC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FDDE0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FDDE4  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FDDE8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FDDEC  4B D7 1C 51 */	bl cLib_addCalc2__FPffff
/* 804FDDF0  48 00 00 28 */	b lbl_804FDE18
lbl_804FDDF4:
/* 804FDDF4  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FDDF8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 804FDDFC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804FDE00  EC 21 00 2A */	fadds f1, f1, f0
/* 804FDE04  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FDE08  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FDE0C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FDE10  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FDE14  4B D7 1C 29 */	bl cLib_addCalc2__FPffff
lbl_804FDE18:
/* 804FDE18  38 7E 06 90 */	addi r3, r30, 0x690
/* 804FDE1C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FDE20  FC 40 08 90 */	fmr f2, f1
/* 804FDE24  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804FDE28  4B D7 1C 15 */	bl cLib_addCalc2__FPffff
/* 804FDE2C  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 804FDE30  2C 00 00 32 */	cmpwi r0, 0x32
/* 804FDE34  41 81 00 38 */	bgt lbl_804FDE6C
/* 804FDE38  2C 00 00 0A */	cmpwi r0, 0xa
/* 804FDE3C  41 80 00 30 */	blt lbl_804FDE6C
/* 804FDE40  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070088@ha */
/* 804FDE44  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00070088@l */
/* 804FDE48  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FDE4C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FDE50  38 81 00 0C */	addi r4, r1, 0xc
/* 804FDE54  38 A0 00 00 */	li r5, 0
/* 804FDE58  38 C0 FF FF */	li r6, -1
/* 804FDE5C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FDE60  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804FDE64  7D 89 03 A6 */	mtctr r12
/* 804FDE68  4E 80 04 21 */	bctrl 
lbl_804FDE6C:
/* 804FDE6C  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 804FDE70  2C 00 00 00 */	cmpwi r0, 0
/* 804FDE74  40 82 00 B8 */	bne lbl_804FDF2C
/* 804FDE78  A8 7E 06 6C */	lha r3, 0x66c(r30)
/* 804FDE7C  38 03 00 01 */	addi r0, r3, 1
/* 804FDE80  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FDE84  7F C3 F3 78 */	mr r3, r30
/* 804FDE88  38 80 00 11 */	li r4, 0x11
/* 804FDE8C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804FDE90  38 A0 00 00 */	li r5, 0
/* 804FDE94  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FDE98  4B FF DF 21 */	bl anm_init__FP10e_hb_classifUcf
/* 804FDE9C  7F C3 F3 78 */	mr r3, r30
/* 804FDEA0  38 80 00 13 */	li r4, 0x13
/* 804FDEA4  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804FDEA8  38 A0 00 02 */	li r5, 2
/* 804FDEAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FDEB0  4B FF DF B5 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FDEB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 804FDEB8  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 804FDEBC  90 01 00 08 */	stw r0, 8(r1)
/* 804FDEC0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FDEC4  38 81 00 08 */	addi r4, r1, 8
/* 804FDEC8  38 A0 00 00 */	li r5, 0
/* 804FDECC  38 C0 FF FF */	li r6, -1
/* 804FDED0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FDED4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FDED8  7D 89 03 A6 */	mtctr r12
/* 804FDEDC  4E 80 04 21 */	bctrl 
/* 804FDEE0  48 00 00 4C */	b lbl_804FDF2C
lbl_804FDEE4:
/* 804FDEE4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 804FDEE8  38 80 00 01 */	li r4, 1
/* 804FDEEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804FDEF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FDEF4  40 82 00 18 */	bne lbl_804FDF0C
/* 804FDEF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804FDEFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804FDF00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804FDF04  41 82 00 08 */	beq lbl_804FDF0C
/* 804FDF08  38 80 00 00 */	li r4, 0
lbl_804FDF0C:
/* 804FDF0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804FDF10  41 82 00 1C */	beq lbl_804FDF2C
/* 804FDF14  38 00 00 03 */	li r0, 3
/* 804FDF18  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FDF1C  38 00 00 00 */	li r0, 0
/* 804FDF20  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FDF24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FDF28  D0 1E 08 4C */	stfs f0, 0x84c(r30)
lbl_804FDF2C:
/* 804FDF2C  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FDF30  7C 00 07 75 */	extsb. r0, r0
/* 804FDF34  41 82 00 1C */	beq lbl_804FDF50
/* 804FDF38  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FDF3C  38 80 40 00 */	li r4, 0x4000
/* 804FDF40  38 A0 00 04 */	li r5, 4
/* 804FDF44  38 C0 04 00 */	li r6, 0x400
/* 804FDF48  4B D7 26 C1 */	bl cLib_addCalcAngleS2__FPssss
/* 804FDF4C  48 00 00 18 */	b lbl_804FDF64
lbl_804FDF50:
/* 804FDF50  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FDF54  38 80 C0 00 */	li r4, -16384
/* 804FDF58  38 A0 00 04 */	li r5, 4
/* 804FDF5C  38 C0 04 00 */	li r6, 0x400
/* 804FDF60  4B D7 26 A9 */	bl cLib_addCalcAngleS2__FPssss
lbl_804FDF64:
/* 804FDF64  38 7E 08 48 */	addi r3, r30, 0x848
/* 804FDF68  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 804FDF6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FDF70  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804FDF74  4B D7 1A C9 */	bl cLib_addCalc2__FPffff
/* 804FDF78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804FDF7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804FDF80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FDF84  7C 08 03 A6 */	mtlr r0
/* 804FDF88  38 21 00 30 */	addi r1, r1, 0x30
/* 804FDF8C  4E 80 00 20 */	blr 
