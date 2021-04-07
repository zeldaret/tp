lbl_805AEB40:
/* 805AEB40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805AEB44  7C 08 02 A6 */	mflr r0
/* 805AEB48  90 01 00 74 */	stw r0, 0x74(r1)
/* 805AEB4C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805AEB50  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805AEB54  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805AEB58  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805AEB5C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805AEB60  93 C1 00 48 */	stw r30, 0x48(r1)
/* 805AEB64  7C 7E 1B 78 */	mr r30, r3
/* 805AEB68  3C 80 80 5B */	lis r4, lit_3764@ha /* 0x805B3140@ha */
/* 805AEB6C  3B E4 31 40 */	addi r31, r4, lit_3764@l /* 0x805B3140@l */
/* 805AEB70  C3 FF 00 04 */	lfs f31, 4(r31)
/* 805AEB74  C3 DF 00 0C */	lfs f30, 0xc(r31)
/* 805AEB78  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 805AEB7C  2C 00 00 02 */	cmpwi r0, 2
/* 805AEB80  41 82 00 AC */	beq lbl_805AEC2C
/* 805AEB84  40 80 00 10 */	bge lbl_805AEB94
/* 805AEB88  2C 00 00 00 */	cmpwi r0, 0
/* 805AEB8C  41 82 00 18 */	beq lbl_805AEBA4
/* 805AEB90  48 00 03 14 */	b lbl_805AEEA4
lbl_805AEB94:
/* 805AEB94  2C 00 00 04 */	cmpwi r0, 4
/* 805AEB98  41 82 02 78 */	beq lbl_805AEE10
/* 805AEB9C  40 80 03 08 */	bge lbl_805AEEA4
/* 805AEBA0  48 00 01 F0 */	b lbl_805AED90
lbl_805AEBA4:
/* 805AEBA4  38 80 00 06 */	li r4, 6
/* 805AEBA8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805AEBAC  38 A0 00 02 */	li r5, 2
/* 805AEBB0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AEBB4  4B FF F6 F1 */	bl anm_init__FP10b_bh_classifUcf
/* 805AEBB8  38 00 00 02 */	li r0, 2
/* 805AEBBC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AEBC0  38 00 00 23 */	li r0, 0x23
/* 805AEBC4  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AEBC8  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 805AEBCC  7C 00 07 75 */	extsb. r0, r0
/* 805AEBD0  41 82 00 30 */	beq lbl_805AEC00
/* 805AEBD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070146@ha */
/* 805AEBD8  38 03 01 46 */	addi r0, r3, 0x0146 /* 0x00070146@l */
/* 805AEBDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AEBE0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AEBE4  38 81 00 10 */	addi r4, r1, 0x10
/* 805AEBE8  38 A0 FF FF */	li r5, -1
/* 805AEBEC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AEBF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AEBF4  7D 89 03 A6 */	mtctr r12
/* 805AEBF8  4E 80 04 21 */	bctrl 
/* 805AEBFC  48 00 02 A8 */	b lbl_805AEEA4
lbl_805AEC00:
/* 805AEC00  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FF@ha */
/* 805AEC04  38 03 00 FF */	addi r0, r3, 0x00FF /* 0x000700FF@l */
/* 805AEC08  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AEC0C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AEC10  38 81 00 0C */	addi r4, r1, 0xc
/* 805AEC14  38 A0 FF FF */	li r5, -1
/* 805AEC18  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AEC1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AEC20  7D 89 03 A6 */	mtctr r12
/* 805AEC24  4E 80 04 21 */	bctrl 
/* 805AEC28  48 00 02 7C */	b lbl_805AEEA4
lbl_805AEC2C:
/* 805AEC2C  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AEC30  2C 00 00 08 */	cmpwi r0, 8
/* 805AEC34  40 82 00 18 */	bne lbl_805AEC4C
/* 805AEC38  38 80 00 05 */	li r4, 5
/* 805AEC3C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805AEC40  38 A0 00 00 */	li r5, 0
/* 805AEC44  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AEC48  4B FF F6 5D */	bl anm_init__FP10b_bh_classifUcf
lbl_805AEC4C:
/* 805AEC4C  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 805AEC50  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805AEC54  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 805AEC58  7C 00 07 75 */	extsb. r0, r0
/* 805AEC5C  41 82 00 2C */	beq lbl_805AEC88
/* 805AEC60  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 805AEC64  28 00 00 00 */	cmplwi r0, 0
/* 805AEC68  40 82 00 14 */	bne lbl_805AEC7C
/* 805AEC6C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 805AEC70  38 03 06 00 */	addi r0, r3, 0x600
/* 805AEC74  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805AEC78  48 00 00 10 */	b lbl_805AEC88
lbl_805AEC7C:
/* 805AEC7C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 805AEC80  38 03 FA 00 */	addi r0, r3, -1536
/* 805AEC84  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_805AEC88:
/* 805AEC88  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 805AEC8C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 805AEC90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805AEC94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AEC98  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805AEC9C  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AECA0  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AECA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 805AECA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AECAC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AECB0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805AECB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805AECB8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805AECBC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805AECC0  80 63 00 00 */	lwz r3, 0(r3)
/* 805AECC4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805AECC8  4B A5 D7 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 805AECCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805AECD0  38 81 00 20 */	addi r4, r1, 0x20
/* 805AECD4  4B CC 22 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805AECD8  38 61 00 14 */	addi r3, r1, 0x14
/* 805AECDC  38 9E 06 A4 */	addi r4, r30, 0x6a4
/* 805AECE0  38 A1 00 20 */	addi r5, r1, 0x20
/* 805AECE4  4B CB 7E 01 */	bl __pl__4cXyzCFRC3Vec
/* 805AECE8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805AECEC  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805AECF0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805AECF4  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 805AECF8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805AECFC  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 805AED00  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805AED04  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 805AED08  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AED0C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AED10  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 805AED14  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AED18  4B CC 0D 25 */	bl cLib_addCalc2__FPffff
/* 805AED1C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 805AED20  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 805AED24  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AED28  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AED2C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 805AED30  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AED34  4B CC 0D 09 */	bl cLib_addCalc2__FPffff
/* 805AED38  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 805AED3C  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 805AED40  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AED44  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AED48  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 805AED4C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AED50  4B CC 0C ED */	bl cLib_addCalc2__FPffff
/* 805AED54  38 7E 06 90 */	addi r3, r30, 0x690
/* 805AED58  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805AED5C  FC 40 08 90 */	fmr f2, f1
/* 805AED60  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 805AED64  4B CC 0C D9 */	bl cLib_addCalc2__FPffff
/* 805AED68  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AED6C  2C 00 00 00 */	cmpwi r0, 0
/* 805AED70  40 82 01 34 */	bne lbl_805AEEA4
/* 805AED74  38 00 00 03 */	li r0, 3
/* 805AED78  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AED7C  38 00 00 19 */	li r0, 0x19
/* 805AED80  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AED84  38 00 00 00 */	li r0, 0
/* 805AED88  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 805AED8C  48 00 01 18 */	b lbl_805AEEA4
lbl_805AED90:
/* 805AED90  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AED94  2C 00 00 16 */	cmpwi r0, 0x16
/* 805AED98  40 82 00 30 */	bne lbl_805AEDC8
/* 805AED9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070100@ha */
/* 805AEDA0  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x00070100@l */
/* 805AEDA4  90 01 00 08 */	stw r0, 8(r1)
/* 805AEDA8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AEDAC  38 81 00 08 */	addi r4, r1, 8
/* 805AEDB0  38 A0 00 00 */	li r5, 0
/* 805AEDB4  38 C0 FF FF */	li r6, -1
/* 805AEDB8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AEDBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AEDC0  7D 89 03 A6 */	mtctr r12
/* 805AEDC4  4E 80 04 21 */	bctrl 
lbl_805AEDC8:
/* 805AEDC8  C3 FF 00 34 */	lfs f31, 0x34(r31)
/* 805AEDCC  C3 DF 00 0C */	lfs f30, 0xc(r31)
/* 805AEDD0  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AEDD4  2C 00 00 00 */	cmpwi r0, 0
/* 805AEDD8  41 82 00 24 */	beq lbl_805AEDFC
/* 805AEDDC  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 805AEDE0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 805AEDE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AEDE8  41 80 00 14 */	blt lbl_805AEDFC
/* 805AEDEC  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 805AEDF0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 805AEDF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AEDF8  40 81 00 AC */	ble lbl_805AEEA4
lbl_805AEDFC:
/* 805AEDFC  38 00 00 14 */	li r0, 0x14
/* 805AEE00  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AEE04  38 00 00 04 */	li r0, 4
/* 805AEE08  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AEE0C  48 00 00 98 */	b lbl_805AEEA4
lbl_805AEE10:
/* 805AEE10  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AEE14  2C 00 00 00 */	cmpwi r0, 0
/* 805AEE18  40 82 00 8C */	bne lbl_805AEEA4
/* 805AEE1C  38 00 00 00 */	li r0, 0
/* 805AEE20  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 805AEE24  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AEE28  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805AEE2C  4B CB 8B 29 */	bl cM_rndF__Ff
/* 805AEE30  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 805AEE34  EC 00 08 2A */	fadds f0, f0, f1
/* 805AEE38  FC 00 00 1E */	fctiwz f0, f0
/* 805AEE3C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AEE40  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AEE44  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AEE48  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805AEE4C  4B CB 8B 41 */	bl cM_rndFX__Ff
/* 805AEE50  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 805AEE54  EC 00 08 2A */	fadds f0, f0, f1
/* 805AEE58  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805AEE5C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805AEE60  4B CB 8B 2D */	bl cM_rndFX__Ff
/* 805AEE64  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 805AEE68  EC 00 08 2A */	fadds f0, f0, f1
/* 805AEE6C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 805AEE70  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805AEE74  4B CB 8B 19 */	bl cM_rndFX__Ff
/* 805AEE78  C0 7E 06 A8 */	lfs f3, 0x6a8(r30)
/* 805AEE7C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805AEE80  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AEE84  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AEE88  C0 03 00 08 */	lfs f0, 8(r3)
/* 805AEE8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805AEE90  EC 03 00 2A */	fadds f0, f3, f0
/* 805AEE94  EC 00 08 2A */	fadds f0, f0, f1
/* 805AEE98  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 805AEE9C  FC 00 F8 90 */	fmr f0, f31
/* 805AEEA0  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_805AEEA4:
/* 805AEEA4  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 805AEEA8  2C 00 00 05 */	cmpwi r0, 5
/* 805AEEAC  40 82 00 4C */	bne lbl_805AEEF8
/* 805AEEB0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805AEEB4  38 80 00 01 */	li r4, 1
/* 805AEEB8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805AEEBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805AEEC0  40 82 00 18 */	bne lbl_805AEED8
/* 805AEEC4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805AEEC8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805AEECC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805AEED0  41 82 00 08 */	beq lbl_805AEED8
/* 805AEED4  38 80 00 00 */	li r4, 0
lbl_805AEED8:
/* 805AEED8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805AEEDC  41 82 00 1C */	beq lbl_805AEEF8
/* 805AEEE0  7F C3 F3 78 */	mr r3, r30
/* 805AEEE4  38 80 00 0E */	li r4, 0xe
/* 805AEEE8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805AEEEC  38 A0 00 02 */	li r5, 2
/* 805AEEF0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AEEF4  4B FF F3 B1 */	bl anm_init__FP10b_bh_classifUcf
lbl_805AEEF8:
/* 805AEEF8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805AEEFC  FC 20 F8 90 */	fmr f1, f31
/* 805AEF00  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AEF04  FC 60 F0 90 */	fmr f3, f30
/* 805AEF08  4B CC 0B 35 */	bl cLib_addCalc2__FPffff
/* 805AEF0C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 805AEF10  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805AEF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AEF18  4C 41 13 82 */	cror 2, 1, 2
/* 805AEF1C  40 82 00 0C */	bne lbl_805AEF28
/* 805AEF20  38 00 00 01 */	li r0, 1
/* 805AEF24  98 1E 0C E0 */	stb r0, 0xce0(r30)
lbl_805AEF28:
/* 805AEF28  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805AEF2C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805AEF30  38 A0 00 08 */	li r5, 8
/* 805AEF34  38 C0 08 00 */	li r6, 0x800
/* 805AEF38  4B CC 16 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 805AEF3C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805AEF40  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805AEF44  38 A0 00 08 */	li r5, 8
/* 805AEF48  38 C0 04 00 */	li r6, 0x400
/* 805AEF4C  4B CC 16 BD */	bl cLib_addCalcAngleS2__FPssss
/* 805AEF50  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805AEF54  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805AEF58  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805AEF5C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805AEF60  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805AEF64  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 805AEF68  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805AEF6C  7C 08 03 A6 */	mtlr r0
/* 805AEF70  38 21 00 70 */	addi r1, r1, 0x70
/* 805AEF74  4E 80 00 20 */	blr 
