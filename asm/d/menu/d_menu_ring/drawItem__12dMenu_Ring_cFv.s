lbl_801ECB14:
/* 801ECB14  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801ECB18  7C 08 02 A6 */	mflr r0
/* 801ECB1C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801ECB20  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801ECB24  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 801ECB28  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801ECB2C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 801ECB30  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801ECB34  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 801ECB38  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 801ECB3C  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 801ECB40  39 61 00 80 */	addi r11, r1, 0x80
/* 801ECB44  48 17 56 69 */	bl _savegpr_17
/* 801ECB48  7C 7B 1B 78 */	mr r27, r3
/* 801ECB4C  A8 63 06 84 */	lha r3, 0x684(r3)
/* 801ECB50  38 03 00 01 */	addi r0, r3, 1
/* 801ECB54  B0 1B 06 84 */	sth r0, 0x684(r27)
/* 801ECB58  A8 9B 06 84 */	lha r4, 0x684(r27)
/* 801ECB5C  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801ECB60  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801ECB64  A8 03 01 38 */	lha r0, 0x138(r3)
/* 801ECB68  7C 04 00 00 */	cmpw r4, r0
/* 801ECB6C  41 80 00 0C */	blt lbl_801ECB78
/* 801ECB70  38 00 00 00 */	li r0, 0
/* 801ECB74  B0 1B 06 84 */	sth r0, 0x684(r27)
lbl_801ECB78:
/* 801ECB78  A8 63 01 38 */	lha r3, 0x138(r3)
/* 801ECB7C  7C 60 0E 70 */	srawi r0, r3, 1
/* 801ECB80  7C 80 01 94 */	addze r4, r0
/* 801ECB84  A8 1B 06 84 */	lha r0, 0x684(r27)
/* 801ECB88  7C 00 20 00 */	cmpw r0, r4
/* 801ECB8C  40 80 00 3C */	bge lbl_801ECBC8
/* 801ECB90  C8 42 A9 C8 */	lfd f2, lit_4596(r2)
/* 801ECB94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801ECB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECB9C  3C 60 43 30 */	lis r3, 0x4330
/* 801ECBA0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801ECBA4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801ECBA8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801ECBAC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801ECBB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801ECBB4  90 61 00 18 */	stw r3, 0x18(r1)
/* 801ECBB8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801ECBBC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801ECBC0  EC 61 00 24 */	fdivs f3, f1, f0
/* 801ECBC4  48 00 00 3C */	b lbl_801ECC00
lbl_801ECBC8:
/* 801ECBC8  7C 00 18 50 */	subf r0, r0, r3
/* 801ECBCC  C8 42 A9 C8 */	lfd f2, lit_4596(r2)
/* 801ECBD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801ECBD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ECBD8  3C 60 43 30 */	lis r3, 0x4330
/* 801ECBDC  90 61 00 20 */	stw r3, 0x20(r1)
/* 801ECBE0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801ECBE4  EC 20 10 28 */	fsubs f1, f0, f2
/* 801ECBE8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801ECBEC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801ECBF0  90 61 00 28 */	stw r3, 0x28(r1)
/* 801ECBF4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801ECBF8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801ECBFC  EC 61 00 24 */	fdivs f3, f1, f0
lbl_801ECC00:
/* 801ECC00  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801ECC04  3A C3 FA FC */	addi r22, r3, g_ringHIO@l
/* 801ECC08  88 96 01 55 */	lbz r4, 0x155(r22)
/* 801ECC0C  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801ECC10  90 81 00 34 */	stw r4, 0x34(r1)
/* 801ECC14  3C 60 43 30 */	lis r3, 0x4330
/* 801ECC18  90 61 00 30 */	stw r3, 0x30(r1)
/* 801ECC1C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801ECC20  EC 40 08 28 */	fsubs f2, f0, f1
/* 801ECC24  88 16 01 56 */	lbz r0, 0x156(r22)
/* 801ECC28  7C 04 00 50 */	subf r0, r4, r0
/* 801ECC2C  C8 22 A9 C8 */	lfd f1, lit_4596(r2)
/* 801ECC30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801ECC34  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801ECC38  90 61 00 38 */	stw r3, 0x38(r1)
/* 801ECC3C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801ECC40  EC 00 08 28 */	fsubs f0, f0, f1
/* 801ECC44  EC 03 00 32 */	fmuls f0, f3, f0
/* 801ECC48  EF E2 00 2A */	fadds f31, f2, f0
/* 801ECC4C  3B A0 00 00 */	li r29, 0
/* 801ECC50  3B 40 00 00 */	li r26, 0
/* 801ECC54  3B 20 00 00 */	li r25, 0
/* 801ECC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ECC5C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 801ECC60  3A 77 00 9C */	addi r19, r23, 0x9c
/* 801ECC64  48 00 02 F4 */	b lbl_801ECF58
lbl_801ECC68:
/* 801ECC68  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801ECC6C  7C 1D 00 00 */	cmpw r29, r0
/* 801ECC70  40 82 00 20 */	bne lbl_801ECC90
/* 801ECC74  88 1B 06 B0 */	lbz r0, 0x6b0(r27)
/* 801ECC78  28 00 00 00 */	cmplwi r0, 0
/* 801ECC7C  41 82 02 D0 */	beq lbl_801ECF4C
/* 801ECC80  28 00 00 02 */	cmplwi r0, 2
/* 801ECC84  41 82 02 C8 */	beq lbl_801ECF4C
/* 801ECC88  28 00 00 03 */	cmplwi r0, 3
/* 801ECC8C  41 82 02 C0 */	beq lbl_801ECF4C
lbl_801ECC90:
/* 801ECC90  80 16 01 34 */	lwz r0, 0x134(r22)
/* 801ECC94  90 01 00 08 */	stw r0, 8(r1)
/* 801ECC98  7F FB CA 14 */	add r31, r27, r25
/* 801ECC9C  C0 1F 03 8C */	lfs f0, 0x38c(r31)
/* 801ECCA0  C0 42 A9 E0 */	lfs f2, lit_5366(r2)
/* 801ECCA4  EC 20 10 28 */	fsubs f1, f0, f2
/* 801ECCA8  C0 1B 05 68 */	lfs f0, 0x568(r27)
/* 801ECCAC  EC 21 00 2A */	fadds f1, f1, f0
/* 801ECCB0  C0 1F 03 EC */	lfs f0, 0x3ec(r31)
/* 801ECCB4  EC 40 10 28 */	fsubs f2, f0, f2
/* 801ECCB8  C0 1B 05 6C */	lfs f0, 0x56c(r27)
/* 801ECCBC  EC 42 00 2A */	fadds f2, f2, f0
/* 801ECCC0  C0 62 A9 A4 */	lfs f3, lit_4307(r2)
/* 801ECCC4  FC 80 18 90 */	fmr f4, f3
/* 801ECCC8  38 61 00 08 */	addi r3, r1, 8
/* 801ECCCC  38 80 00 06 */	li r4, 6
/* 801ECCD0  48 0F CE CD */	bl J2DDrawFrame__FffffQ28JUtility6TColorUc
/* 801ECCD4  C3 C2 A9 9C */	lfs f30, lit_4305(r2)
/* 801ECCD8  88 1B 06 A8 */	lbz r0, 0x6a8(r27)
/* 801ECCDC  7C 1D 00 00 */	cmpw r29, r0
/* 801ECCE0  41 82 00 0C */	beq lbl_801ECCEC
/* 801ECCE4  C0 02 A9 E4 */	lfs f0, lit_5367(r2)
/* 801ECCE8  EF DF 00 24 */	fdivs f30, f31, f0
lbl_801ECCEC:
/* 801ECCEC  3B 80 00 00 */	li r28, 0
/* 801ECCF0  3B 00 00 00 */	li r24, 0
/* 801ECCF4  7E BB D2 14 */	add r21, r27, r26
/* 801ECCF8  3A 9D 06 90 */	addi r20, r29, 0x690
lbl_801ECCFC:
/* 801ECCFC  3B D8 00 98 */	addi r30, r24, 0x98
/* 801ECD00  7C 75 F0 2E */	lwzx r3, r21, r30
/* 801ECD04  28 03 00 00 */	cmplwi r3, 0
/* 801ECD08  41 82 02 34 */	beq lbl_801ECF3C
/* 801ECD0C  80 1B 06 2C */	lwz r0, 0x62c(r27)
/* 801ECD10  28 00 00 00 */	cmplwi r0, 0
/* 801ECD14  41 82 00 48 */	beq lbl_801ECD5C
/* 801ECD18  88 16 01 52 */	lbz r0, 0x152(r22)
/* 801ECD1C  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801ECD20  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801ECD24  3C 00 43 30 */	lis r0, 0x4330
/* 801ECD28  90 01 00 38 */	stw r0, 0x38(r1)
/* 801ECD2C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801ECD30  EC 20 08 28 */	fsubs f1, f0, f1
/* 801ECD34  C0 1B 05 14 */	lfs f0, 0x514(r27)
/* 801ECD38  EC 01 00 32 */	fmuls f0, f1, f0
/* 801ECD3C  FC 00 00 1E */	fctiwz f0, f0
/* 801ECD40  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801ECD44  80 81 00 34 */	lwz r4, 0x34(r1)
/* 801ECD48  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECD4C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ECD50  7D 89 03 A6 */	mtctr r12
/* 801ECD54  4E 80 04 21 */	bctrl 
/* 801ECD58  48 00 00 48 */	b lbl_801ECDA0
lbl_801ECD5C:
/* 801ECD5C  88 16 01 51 */	lbz r0, 0x151(r22)
/* 801ECD60  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801ECD64  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801ECD68  3C 00 43 30 */	lis r0, 0x4330
/* 801ECD6C  90 01 00 38 */	stw r0, 0x38(r1)
/* 801ECD70  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801ECD74  EC 20 08 28 */	fsubs f1, f0, f1
/* 801ECD78  C0 1B 05 14 */	lfs f0, 0x514(r27)
/* 801ECD7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801ECD80  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801ECD84  FC 00 00 1E */	fctiwz f0, f0
/* 801ECD88  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801ECD8C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 801ECD90  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECD94  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ECD98  7D 89 03 A6 */	mtctr r12
/* 801ECD9C  4E 80 04 21 */	bctrl 
lbl_801ECDA0:
/* 801ECDA0  C0 E2 A9 A4 */	lfs f7, lit_4307(r2)
/* 801ECDA4  C0 1F 04 4C */	lfs f0, 0x44c(r31)
/* 801ECDA8  EC 67 00 32 */	fmuls f3, f7, f0
/* 801ECDAC  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 801ECDB0  EC 87 00 32 */	fmuls f4, f7, f0
/* 801ECDB4  C0 C2 A9 B0 */	lfs f6, lit_4310(r2)
/* 801ECDB8  EC 07 18 28 */	fsubs f0, f7, f3
/* 801ECDBC  EC 46 00 32 */	fmuls f2, f6, f0
/* 801ECDC0  C0 1F 03 8C */	lfs f0, 0x38c(r31)
/* 801ECDC4  C0 A2 A9 E0 */	lfs f5, lit_5366(r2)
/* 801ECDC8  EC 20 28 28 */	fsubs f1, f0, f5
/* 801ECDCC  C0 1B 05 68 */	lfs f0, 0x568(r27)
/* 801ECDD0  EC 01 00 2A */	fadds f0, f1, f0
/* 801ECDD4  EF A2 00 2A */	fadds f29, f2, f0
/* 801ECDD8  EC 07 20 28 */	fsubs f0, f7, f4
/* 801ECDDC  EC 46 00 32 */	fmuls f2, f6, f0
/* 801ECDE0  C0 1F 03 EC */	lfs f0, 0x3ec(r31)
/* 801ECDE4  EC 20 28 28 */	fsubs f1, f0, f5
/* 801ECDE8  C0 1B 05 6C */	lfs f0, 0x56c(r27)
/* 801ECDEC  EC 01 00 2A */	fadds f0, f1, f0
/* 801ECDF0  EF 82 00 2A */	fadds f28, f2, f0
/* 801ECDF4  7C 75 F0 2E */	lwzx r3, r21, r30
/* 801ECDF8  FC 20 E8 90 */	fmr f1, f29
/* 801ECDFC  FC 40 E0 90 */	fmr f2, f28
/* 801ECE00  38 80 00 00 */	li r4, 0
/* 801ECE04  38 A0 00 00 */	li r5, 0
/* 801ECE08  38 C0 00 00 */	li r6, 0
/* 801ECE0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECE10  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801ECE14  7D 89 03 A6 */	mtctr r12
/* 801ECE18  4E 80 04 21 */	bctrl 
/* 801ECE1C  7E 63 9B 78 */	mr r3, r19
/* 801ECE20  7C 9B A0 AE */	lbzx r4, r27, r20
/* 801ECE24  38 A0 00 00 */	li r5, 0
/* 801ECE28  4B E4 62 09 */	bl getItem__17dSv_player_item_cCFib
/* 801ECE2C  7C 72 1B 78 */	mr r18, r3
/* 801ECE30  2C 1C 00 00 */	cmpwi r28, 0
/* 801ECE34  40 82 00 10 */	bne lbl_801ECE44
/* 801ECE38  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 801ECE3C  28 00 00 76 */	cmplwi r0, 0x76
/* 801ECE40  40 82 00 18 */	bne lbl_801ECE58
lbl_801ECE44:
/* 801ECE44  2C 1C 00 02 */	cmpwi r28, 2
/* 801ECE48  40 82 00 50 */	bne lbl_801ECE98
/* 801ECE4C  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 801ECE50  28 00 00 76 */	cmplwi r0, 0x76
/* 801ECE54  40 82 00 44 */	bne lbl_801ECE98
lbl_801ECE58:
/* 801ECE58  7F 63 DB 78 */	mr r3, r27
/* 801ECE5C  7C 9B A0 AE */	lbzx r4, r27, r20
/* 801ECE60  48 00 11 F9 */	bl getItemNum__12dMenu_Ring_cFUc
/* 801ECE64  7C 71 1B 78 */	mr r17, r3
/* 801ECE68  7F 63 DB 78 */	mr r3, r27
/* 801ECE6C  7C 9B A0 AE */	lbzx r4, r27, r20
/* 801ECE70  48 00 12 ED */	bl getItemMaxNum__12dMenu_Ring_cFUc
/* 801ECE74  54 65 06 3F */	clrlwi. r5, r3, 0x18
/* 801ECE78  41 82 00 20 */	beq lbl_801ECE98
/* 801ECE7C  7F 63 DB 78 */	mr r3, r27
/* 801ECE80  56 24 06 3E */	clrlwi r4, r17, 0x18
/* 801ECE84  C0 02 A9 E0 */	lfs f0, lit_5366(r2)
/* 801ECE88  EC 20 E8 2A */	fadds f1, f0, f29
/* 801ECE8C  C0 02 A9 A4 */	lfs f0, lit_4307(r2)
/* 801ECE90  EC 40 E0 2A */	fadds f2, f0, f28
/* 801ECE94  48 00 17 B5 */	bl drawNumber__12dMenu_Ring_cFiiff
lbl_801ECE98:
/* 801ECE98  2C 1C 00 00 */	cmpwi r28, 0
/* 801ECE9C  40 82 00 A0 */	bne lbl_801ECF3C
/* 801ECEA0  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 801ECEA4  28 00 00 48 */	cmplwi r0, 0x48
/* 801ECEA8  40 82 00 94 */	bne lbl_801ECF3C
/* 801ECEAC  7F 63 DB 78 */	mr r3, r27
/* 801ECEB0  C0 22 A9 E8 */	lfs f1, lit_5368(r2)
/* 801ECEB4  C0 02 A9 E0 */	lfs f0, lit_5366(r2)
/* 801ECEB8  EC 00 E8 2A */	fadds f0, f0, f29
/* 801ECEBC  EC 21 00 2A */	fadds f1, f1, f0
/* 801ECEC0  C0 42 A9 EC */	lfs f2, lit_5369(r2)
/* 801ECEC4  C0 02 A9 A4 */	lfs f0, lit_4307(r2)
/* 801ECEC8  EC 00 E0 2A */	fadds f0, f0, f28
/* 801ECECC  EC 42 00 2A */	fadds f2, f2, f0
/* 801ECED0  4B FF E1 B1 */	bl setKanteraPos__12dMenu_Ring_cFff
/* 801ECED4  80 7B 00 54 */	lwz r3, 0x54(r27)
/* 801ECED8  C0 22 A9 F0 */	lfs f1, lit_5370(r2)
/* 801ECEDC  FC 40 08 90 */	fmr f2, f1
/* 801ECEE0  4B FC 1D 15 */	bl setScale__15dKantera_icon_cFff
/* 801ECEE4  A0 B7 00 08 */	lhz r5, 8(r23)
/* 801ECEE8  A0 97 00 06 */	lhz r4, 6(r23)
/* 801ECEEC  80 7B 00 54 */	lwz r3, 0x54(r27)
/* 801ECEF0  4B FC 1D 55 */	bl setNowGauge__15dKantera_icon_cFUsUs
/* 801ECEF4  7C 75 F0 2E */	lwzx r3, r21, r30
/* 801ECEF8  88 03 00 B2 */	lbz r0, 0xb2(r3)
/* 801ECEFC  80 7B 00 54 */	lwz r3, 0x54(r27)
/* 801ECF00  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801ECF04  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801ECF08  3C 00 43 30 */	lis r0, 0x4330
/* 801ECF0C  90 01 00 38 */	stw r0, 0x38(r1)
/* 801ECF10  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801ECF14  EC 20 08 28 */	fsubs f1, f0, f1
/* 801ECF18  C0 02 A9 E4 */	lfs f0, lit_5367(r2)
/* 801ECF1C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801ECF20  4B FC 1C 5D */	bl setAlphaRate__15dKantera_icon_cFf
/* 801ECF24  80 7B 00 54 */	lwz r3, 0x54(r27)
/* 801ECF28  80 63 00 04 */	lwz r3, 4(r3)
/* 801ECF2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECF30  81 8C 00 08 */	lwz r12, 8(r12)
/* 801ECF34  7D 89 03 A6 */	mtctr r12
/* 801ECF38  4E 80 04 21 */	bctrl 
lbl_801ECF3C:
/* 801ECF3C  3B 9C 00 01 */	addi r28, r28, 1
/* 801ECF40  2C 1C 00 03 */	cmpwi r28, 3
/* 801ECF44  3B 18 00 04 */	addi r24, r24, 4
/* 801ECF48  41 80 FD B4 */	blt lbl_801ECCFC
lbl_801ECF4C:
/* 801ECF4C  3B BD 00 01 */	addi r29, r29, 1
/* 801ECF50  3B 5A 00 0C */	addi r26, r26, 0xc
/* 801ECF54  3B 39 00 04 */	addi r25, r25, 4
lbl_801ECF58:
/* 801ECF58  88 1B 06 AE */	lbz r0, 0x6ae(r27)
/* 801ECF5C  7C 1D 00 00 */	cmpw r29, r0
/* 801ECF60  41 80 FD 08 */	blt lbl_801ECC68
/* 801ECF64  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 801ECF68  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801ECF6C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 801ECF70  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801ECF74  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 801ECF78  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801ECF7C  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 801ECF80  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 801ECF84  39 61 00 80 */	addi r11, r1, 0x80
/* 801ECF88  48 17 52 71 */	bl _restgpr_17
/* 801ECF8C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801ECF90  7C 08 03 A6 */	mtlr r0
/* 801ECF94  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801ECF98  4E 80 00 20 */	blr 
