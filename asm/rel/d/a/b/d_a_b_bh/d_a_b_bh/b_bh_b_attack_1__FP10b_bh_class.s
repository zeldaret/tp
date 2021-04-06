lbl_805AFCA8:
/* 805AFCA8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805AFCAC  7C 08 02 A6 */	mflr r0
/* 805AFCB0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805AFCB4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805AFCB8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805AFCBC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805AFCC0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805AFCC4  39 61 00 50 */	addi r11, r1, 0x50
/* 805AFCC8  4B DB 25 15 */	bl _savegpr_29
/* 805AFCCC  7C 7E 1B 78 */	mr r30, r3
/* 805AFCD0  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805AFCD4  3B E3 31 40 */	addi r31, r3, lit_3764@l /* 0x805B3140@l */
/* 805AFCD8  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805AFCDC  90 01 00 08 */	stw r0, 8(r1)
/* 805AFCE0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805AFCE4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805AFCE8  38 81 00 08 */	addi r4, r1, 8
/* 805AFCEC  4B A6 9B 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805AFCF0  7C 7D 1B 78 */	mr r29, r3
/* 805AFCF4  C3 FF 00 04 */	lfs f31, 4(r31)
/* 805AFCF8  C3 DF 00 0C */	lfs f30, 0xc(r31)
/* 805AFCFC  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 805AFD00  2C 00 00 02 */	cmpwi r0, 2
/* 805AFD04  41 82 00 78 */	beq lbl_805AFD7C
/* 805AFD08  40 80 00 10 */	bge lbl_805AFD18
/* 805AFD0C  2C 00 00 00 */	cmpwi r0, 0
/* 805AFD10  41 82 00 18 */	beq lbl_805AFD28
/* 805AFD14  48 00 02 C0 */	b lbl_805AFFD4
lbl_805AFD18:
/* 805AFD18  2C 00 00 04 */	cmpwi r0, 4
/* 805AFD1C  41 82 02 0C */	beq lbl_805AFF28
/* 805AFD20  40 80 02 B4 */	bge lbl_805AFFD4
/* 805AFD24  48 00 01 84 */	b lbl_805AFEA8
lbl_805AFD28:
/* 805AFD28  7F C3 F3 78 */	mr r3, r30
/* 805AFD2C  38 80 00 06 */	li r4, 6
/* 805AFD30  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805AFD34  38 A0 00 02 */	li r5, 2
/* 805AFD38  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AFD3C  4B FF E5 69 */	bl anm_init__FP10b_bh_classifUcf
/* 805AFD40  38 00 00 02 */	li r0, 2
/* 805AFD44  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AFD48  38 00 00 23 */	li r0, 0x23
/* 805AFD4C  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AFD50  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FF@ha */
/* 805AFD54  38 03 00 FF */	addi r0, r3, 0x00FF /* 0x000700FF@l */
/* 805AFD58  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AFD5C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AFD60  38 81 00 10 */	addi r4, r1, 0x10
/* 805AFD64  38 A0 FF FF */	li r5, -1
/* 805AFD68  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AFD6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AFD70  7D 89 03 A6 */	mtctr r12
/* 805AFD74  4E 80 04 21 */	bctrl 
/* 805AFD78  48 00 02 5C */	b lbl_805AFFD4
lbl_805AFD7C:
/* 805AFD7C  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AFD80  2C 00 00 08 */	cmpwi r0, 8
/* 805AFD84  40 82 00 1C */	bne lbl_805AFDA0
/* 805AFD88  7F C3 F3 78 */	mr r3, r30
/* 805AFD8C  38 80 00 05 */	li r4, 5
/* 805AFD90  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805AFD94  38 A0 00 00 */	li r5, 0
/* 805AFD98  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805AFD9C  4B FF E5 09 */	bl anm_init__FP10b_bh_classifUcf
lbl_805AFDA0:
/* 805AFDA0  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 805AFDA4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805AFDA8  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 805AFDAC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 805AFDB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805AFDB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805AFDB8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805AFDBC  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AFDC0  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AFDC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 805AFDC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AFDCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AFDD0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805AFDD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805AFDD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805AFDDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805AFDE0  80 63 00 00 */	lwz r3, 0(r3)
/* 805AFDE4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805AFDE8  4B A5 C5 F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805AFDEC  38 61 00 2C */	addi r3, r1, 0x2c
/* 805AFDF0  38 81 00 20 */	addi r4, r1, 0x20
/* 805AFDF4  4B CC 10 F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805AFDF8  38 61 00 14 */	addi r3, r1, 0x14
/* 805AFDFC  38 9E 06 B0 */	addi r4, r30, 0x6b0
/* 805AFE00  38 A1 00 20 */	addi r5, r1, 0x20
/* 805AFE04  4B CB 6C E1 */	bl __pl__4cXyzCFRC3Vec
/* 805AFE08  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805AFE0C  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805AFE10  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805AFE14  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 805AFE18  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805AFE1C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 805AFE20  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805AFE24  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 805AFE28  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AFE2C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AFE30  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 805AFE34  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AFE38  4B CB FC 05 */	bl cLib_addCalc2__FPffff
/* 805AFE3C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 805AFE40  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 805AFE44  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AFE48  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AFE4C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 805AFE50  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AFE54  4B CB FB E9 */	bl cLib_addCalc2__FPffff
/* 805AFE58  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 805AFE5C  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 805AFE60  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 805AFE64  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AFE68  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 805AFE6C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805AFE70  4B CB FB CD */	bl cLib_addCalc2__FPffff
/* 805AFE74  38 7E 06 90 */	addi r3, r30, 0x690
/* 805AFE78  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805AFE7C  FC 40 08 90 */	fmr f2, f1
/* 805AFE80  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 805AFE84  4B CB FB B9 */	bl cLib_addCalc2__FPffff
/* 805AFE88  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AFE8C  2C 00 00 00 */	cmpwi r0, 0
/* 805AFE90  40 82 01 44 */	bne lbl_805AFFD4
/* 805AFE94  38 00 00 03 */	li r0, 3
/* 805AFE98  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AFE9C  38 00 00 19 */	li r0, 0x19
/* 805AFEA0  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AFEA4  48 00 01 30 */	b lbl_805AFFD4
lbl_805AFEA8:
/* 805AFEA8  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AFEAC  2C 00 00 16 */	cmpwi r0, 0x16
/* 805AFEB0  40 82 00 30 */	bne lbl_805AFEE0
/* 805AFEB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070100@ha */
/* 805AFEB8  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x00070100@l */
/* 805AFEBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AFEC0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805AFEC4  38 81 00 0C */	addi r4, r1, 0xc
/* 805AFEC8  38 A0 00 00 */	li r5, 0
/* 805AFECC  38 C0 FF FF */	li r6, -1
/* 805AFED0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805AFED4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AFED8  7D 89 03 A6 */	mtctr r12
/* 805AFEDC  4E 80 04 21 */	bctrl 
lbl_805AFEE0:
/* 805AFEE0  C3 FF 00 34 */	lfs f31, 0x34(r31)
/* 805AFEE4  C3 DF 00 0C */	lfs f30, 0xc(r31)
/* 805AFEE8  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AFEEC  2C 00 00 00 */	cmpwi r0, 0
/* 805AFEF0  41 82 00 24 */	beq lbl_805AFF14
/* 805AFEF4  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 805AFEF8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 805AFEFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AFF00  41 80 00 14 */	blt lbl_805AFF14
/* 805AFF04  C0 3E 06 8C */	lfs f1, 0x68c(r30)
/* 805AFF08  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 805AFF0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AFF10  40 81 00 C4 */	ble lbl_805AFFD4
lbl_805AFF14:
/* 805AFF14  38 00 00 0A */	li r0, 0xa
/* 805AFF18  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AFF1C  38 00 00 04 */	li r0, 4
/* 805AFF20  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AFF24  48 00 00 B0 */	b lbl_805AFFD4
lbl_805AFF28:
/* 805AFF28  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 805AFF2C  2C 00 00 00 */	cmpwi r0, 0
/* 805AFF30  40 82 00 A4 */	bne lbl_805AFFD4
/* 805AFF34  38 00 00 14 */	li r0, 0x14
/* 805AFF38  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 805AFF3C  38 00 00 00 */	li r0, 0
/* 805AFF40  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805AFF44  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805AFF48  4B CB 7A 0D */	bl cM_rndF__Ff
/* 805AFF4C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 805AFF50  EC 00 08 2A */	fadds f0, f0, f1
/* 805AFF54  FC 00 00 1E */	fctiwz f0, f0
/* 805AFF58  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805AFF5C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805AFF60  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805AFF64  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805AFF68  4B CB 7A 25 */	bl cM_rndFX__Ff
/* 805AFF6C  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 805AFF70  EC 00 08 2A */	fadds f0, f0, f1
/* 805AFF74  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 805AFF78  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805AFF7C  4B CB 7A 11 */	bl cM_rndFX__Ff
/* 805AFF80  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 805AFF84  EC 00 08 2A */	fadds f0, f0, f1
/* 805AFF88  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 805AFF8C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805AFF90  4B CB 79 FD */	bl cM_rndFX__Ff
/* 805AFF94  C0 7E 06 B4 */	lfs f3, 0x6b4(r30)
/* 805AFF98  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805AFF9C  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805AFFA0  38 63 33 FC */	addi r3, r3, l_HIO@l /* 0x805B33FC@l */
/* 805AFFA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 805AFFA8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805AFFAC  EC 03 00 2A */	fadds f0, f3, f0
/* 805AFFB0  EC 00 08 2A */	fadds f0, f0, f1
/* 805AFFB4  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 805AFFB8  FC 00 F8 90 */	fmr f0, f31
/* 805AFFBC  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 805AFFC0  88 7D 06 EC */	lbz r3, 0x6ec(r29)
/* 805AFFC4  7C 60 07 75 */	extsb. r0, r3
/* 805AFFC8  41 82 00 0C */	beq lbl_805AFFD4
/* 805AFFCC  38 03 FF FF */	addi r0, r3, -1
/* 805AFFD0  98 1D 06 EC */	stb r0, 0x6ec(r29)
lbl_805AFFD4:
/* 805AFFD4  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 805AFFD8  2C 00 00 05 */	cmpwi r0, 5
/* 805AFFDC  40 82 00 4C */	bne lbl_805B0028
/* 805AFFE0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805AFFE4  38 80 00 01 */	li r4, 1
/* 805AFFE8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805AFFEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805AFFF0  40 82 00 18 */	bne lbl_805B0008
/* 805AFFF4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805AFFF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805AFFFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B0000  41 82 00 08 */	beq lbl_805B0008
/* 805B0004  38 80 00 00 */	li r4, 0
lbl_805B0008:
/* 805B0008  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B000C  41 82 00 1C */	beq lbl_805B0028
/* 805B0010  7F C3 F3 78 */	mr r3, r30
/* 805B0014  38 80 00 0E */	li r4, 0xe
/* 805B0018  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805B001C  38 A0 00 02 */	li r5, 2
/* 805B0020  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805B0024  4B FF E2 81 */	bl anm_init__FP10b_bh_classifUcf
lbl_805B0028:
/* 805B0028  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805B002C  FC 20 F8 90 */	fmr f1, f31
/* 805B0030  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805B0034  FC 60 F0 90 */	fmr f3, f30
/* 805B0038  4B CB FA 05 */	bl cLib_addCalc2__FPffff
/* 805B003C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 805B0040  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805B0044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B0048  4C 41 13 82 */	cror 2, 1, 2
/* 805B004C  40 82 00 0C */	bne lbl_805B0058
/* 805B0050  38 00 00 01 */	li r0, 1
/* 805B0054  98 1E 0C E0 */	stb r0, 0xce0(r30)
lbl_805B0058:
/* 805B0058  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805B005C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805B0060  38 A0 00 08 */	li r5, 8
/* 805B0064  38 C0 08 00 */	li r6, 0x800
/* 805B0068  4B CC 05 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 805B006C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805B0070  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805B0074  38 A0 00 08 */	li r5, 8
/* 805B0078  38 C0 04 00 */	li r6, 0x400
/* 805B007C  4B CC 05 8D */	bl cLib_addCalcAngleS2__FPssss
/* 805B0080  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805B0084  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805B0088  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805B008C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805B0090  39 61 00 50 */	addi r11, r1, 0x50
/* 805B0094  4B DB 21 95 */	bl _restgpr_29
/* 805B0098  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B009C  7C 08 03 A6 */	mtlr r0
/* 805B00A0  38 21 00 70 */	addi r1, r1, 0x70
/* 805B00A4  4E 80 00 20 */	blr 
