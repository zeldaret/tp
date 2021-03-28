lbl_801ECF9C:
/* 801ECF9C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801ECFA0  7C 08 02 A6 */	mflr r0
/* 801ECFA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 801ECFA8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801ECFAC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 801ECFB0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801ECFB4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 801ECFB8  39 61 00 50 */	addi r11, r1, 0x50
/* 801ECFBC  48 17 51 FD */	bl _savegpr_20
/* 801ECFC0  7C 77 1B 78 */	mr r23, r3
/* 801ECFC4  8B 23 06 A8 */	lbz r25, 0x6a8(r3)
/* 801ECFC8  88 03 06 B0 */	lbz r0, 0x6b0(r3)
/* 801ECFCC  28 00 00 00 */	cmplwi r0, 0
/* 801ECFD0  41 82 00 14 */	beq lbl_801ECFE4
/* 801ECFD4  28 00 00 02 */	cmplwi r0, 2
/* 801ECFD8  41 82 00 0C */	beq lbl_801ECFE4
/* 801ECFDC  28 00 00 03 */	cmplwi r0, 3
/* 801ECFE0  40 82 02 B4 */	bne lbl_801ED294
lbl_801ECFE4:
/* 801ECFE4  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801ECFE8  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801ECFEC  80 03 01 30 */	lwz r0, 0x130(r3)
/* 801ECFF0  90 01 00 08 */	stw r0, 8(r1)
/* 801ECFF4  57 34 10 3A */	slwi r20, r25, 2
/* 801ECFF8  7C 77 A2 14 */	add r3, r23, r20
/* 801ECFFC  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801ED000  C0 42 A9 E0 */	lfs f2, lit_5366(r2)
/* 801ED004  EC 20 10 28 */	fsubs f1, f0, f2
/* 801ED008  C0 17 05 68 */	lfs f0, 0x568(r23)
/* 801ED00C  EC 21 00 2A */	fadds f1, f1, f0
/* 801ED010  C0 03 03 EC */	lfs f0, 0x3ec(r3)
/* 801ED014  EC 40 10 28 */	fsubs f2, f0, f2
/* 801ED018  C0 17 05 6C */	lfs f0, 0x56c(r23)
/* 801ED01C  EC 42 00 2A */	fadds f2, f2, f0
/* 801ED020  C0 62 A9 A4 */	lfs f3, lit_4307(r2)
/* 801ED024  FC 80 18 90 */	fmr f4, f3
/* 801ED028  38 61 00 08 */	addi r3, r1, 8
/* 801ED02C  38 80 00 06 */	li r4, 6
/* 801ED030  48 0F CB 6D */	bl J2DDrawFrame__FffffQ28JUtility6TColorUc
/* 801ED034  3B 00 00 00 */	li r24, 0
/* 801ED038  3A C0 00 00 */	li r22, 0
/* 801ED03C  1C 19 00 0C */	mulli r0, r25, 0xc
/* 801ED040  7F B7 02 14 */	add r29, r23, r0
/* 801ED044  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801ED048  3B C3 FA FC */	addi r30, r3, g_ringHIO@l
/* 801ED04C  7F 57 A2 14 */	add r26, r23, r20
/* 801ED050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ED054  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 801ED058  3B 9F 00 9C */	addi r28, r31, 0x9c
/* 801ED05C  3B 79 06 90 */	addi r27, r25, 0x690
lbl_801ED060:
/* 801ED060  3B 36 00 98 */	addi r25, r22, 0x98
/* 801ED064  7C 7D C8 2E */	lwzx r3, r29, r25
/* 801ED068  28 03 00 00 */	cmplwi r3, 0
/* 801ED06C  41 82 02 18 */	beq lbl_801ED284
/* 801ED070  80 17 06 2C */	lwz r0, 0x62c(r23)
/* 801ED074  28 00 00 00 */	cmplwi r0, 0
/* 801ED078  41 82 00 48 */	beq lbl_801ED0C0
/* 801ED07C  88 1E 01 52 */	lbz r0, 0x152(r30)
/* 801ED080  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801ED084  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED088  3C 00 43 30 */	lis r0, 0x4330
/* 801ED08C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801ED090  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801ED094  EC 20 08 28 */	fsubs f1, f0, f1
/* 801ED098  C0 17 05 14 */	lfs f0, 0x514(r23)
/* 801ED09C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801ED0A0  FC 00 00 1E */	fctiwz f0, f0
/* 801ED0A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801ED0A8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801ED0AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED0B0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ED0B4  7D 89 03 A6 */	mtctr r12
/* 801ED0B8  4E 80 04 21 */	bctrl 
/* 801ED0BC  48 00 00 2C */	b lbl_801ED0E8
lbl_801ED0C0:
/* 801ED0C0  C0 22 A9 E4 */	lfs f1, lit_5367(r2)
/* 801ED0C4  C0 17 05 14 */	lfs f0, 0x514(r23)
/* 801ED0C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801ED0CC  FC 00 00 1E */	fctiwz f0, f0
/* 801ED0D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801ED0D4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801ED0D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED0DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ED0E0  7D 89 03 A6 */	mtctr r12
/* 801ED0E4  4E 80 04 21 */	bctrl 
lbl_801ED0E8:
/* 801ED0E8  C0 E2 A9 A4 */	lfs f7, lit_4307(r2)
/* 801ED0EC  C0 1A 04 4C */	lfs f0, 0x44c(r26)
/* 801ED0F0  EC 67 00 32 */	fmuls f3, f7, f0
/* 801ED0F4  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 801ED0F8  EC 87 00 32 */	fmuls f4, f7, f0
/* 801ED0FC  C0 C2 A9 B0 */	lfs f6, lit_4310(r2)
/* 801ED100  EC 07 18 28 */	fsubs f0, f7, f3
/* 801ED104  EC 46 00 32 */	fmuls f2, f6, f0
/* 801ED108  C0 1A 03 8C */	lfs f0, 0x38c(r26)
/* 801ED10C  C0 A2 A9 E0 */	lfs f5, lit_5366(r2)
/* 801ED110  EC 20 28 28 */	fsubs f1, f0, f5
/* 801ED114  C0 17 05 68 */	lfs f0, 0x568(r23)
/* 801ED118  EC 01 00 2A */	fadds f0, f1, f0
/* 801ED11C  EF E2 00 2A */	fadds f31, f2, f0
/* 801ED120  EC 07 20 28 */	fsubs f0, f7, f4
/* 801ED124  EC 46 00 32 */	fmuls f2, f6, f0
/* 801ED128  C0 1A 03 EC */	lfs f0, 0x3ec(r26)
/* 801ED12C  EC 20 28 28 */	fsubs f1, f0, f5
/* 801ED130  C0 17 05 6C */	lfs f0, 0x56c(r23)
/* 801ED134  EC 01 00 2A */	fadds f0, f1, f0
/* 801ED138  EF C2 00 2A */	fadds f30, f2, f0
/* 801ED13C  7C 7D C8 2E */	lwzx r3, r29, r25
/* 801ED140  FC 20 F8 90 */	fmr f1, f31
/* 801ED144  FC 40 F0 90 */	fmr f2, f30
/* 801ED148  38 80 00 00 */	li r4, 0
/* 801ED14C  38 A0 00 00 */	li r5, 0
/* 801ED150  38 C0 00 00 */	li r6, 0
/* 801ED154  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED158  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801ED15C  7D 89 03 A6 */	mtctr r12
/* 801ED160  4E 80 04 21 */	bctrl 
/* 801ED164  7F 83 E3 78 */	mr r3, r28
/* 801ED168  7C 97 D8 AE */	lbzx r4, r23, r27
/* 801ED16C  38 A0 00 00 */	li r5, 0
/* 801ED170  4B E4 5E C1 */	bl getItem__17dSv_player_item_cCFib
/* 801ED174  7C 74 1B 78 */	mr r20, r3
/* 801ED178  2C 18 00 00 */	cmpwi r24, 0
/* 801ED17C  40 82 00 10 */	bne lbl_801ED18C
/* 801ED180  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801ED184  28 00 00 76 */	cmplwi r0, 0x76
/* 801ED188  40 82 00 18 */	bne lbl_801ED1A0
lbl_801ED18C:
/* 801ED18C  2C 18 00 02 */	cmpwi r24, 2
/* 801ED190  40 82 00 50 */	bne lbl_801ED1E0
/* 801ED194  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801ED198  28 00 00 76 */	cmplwi r0, 0x76
/* 801ED19C  40 82 00 44 */	bne lbl_801ED1E0
lbl_801ED1A0:
/* 801ED1A0  7E E3 BB 78 */	mr r3, r23
/* 801ED1A4  7C 97 D8 AE */	lbzx r4, r23, r27
/* 801ED1A8  48 00 0E B1 */	bl getItemNum__12dMenu_Ring_cFUc
/* 801ED1AC  7C 75 1B 78 */	mr r21, r3
/* 801ED1B0  7E E3 BB 78 */	mr r3, r23
/* 801ED1B4  7C 97 D8 AE */	lbzx r4, r23, r27
/* 801ED1B8  48 00 0F A5 */	bl getItemMaxNum__12dMenu_Ring_cFUc
/* 801ED1BC  54 65 06 3F */	clrlwi. r5, r3, 0x18
/* 801ED1C0  41 82 00 20 */	beq lbl_801ED1E0
/* 801ED1C4  7E E3 BB 78 */	mr r3, r23
/* 801ED1C8  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 801ED1CC  C0 02 A9 E0 */	lfs f0, lit_5366(r2)
/* 801ED1D0  EC 20 F8 2A */	fadds f1, f0, f31
/* 801ED1D4  C0 02 A9 A4 */	lfs f0, lit_4307(r2)
/* 801ED1D8  EC 40 F0 2A */	fadds f2, f0, f30
/* 801ED1DC  48 00 14 6D */	bl drawNumber__12dMenu_Ring_cFiiff
lbl_801ED1E0:
/* 801ED1E0  2C 18 00 00 */	cmpwi r24, 0
/* 801ED1E4  40 82 00 A0 */	bne lbl_801ED284
/* 801ED1E8  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801ED1EC  28 00 00 48 */	cmplwi r0, 0x48
/* 801ED1F0  40 82 00 94 */	bne lbl_801ED284
/* 801ED1F4  7E E3 BB 78 */	mr r3, r23
/* 801ED1F8  C0 22 A9 E8 */	lfs f1, lit_5368(r2)
/* 801ED1FC  C0 02 A9 E0 */	lfs f0, lit_5366(r2)
/* 801ED200  EC 00 F8 2A */	fadds f0, f0, f31
/* 801ED204  EC 21 00 2A */	fadds f1, f1, f0
/* 801ED208  C0 42 A9 EC */	lfs f2, lit_5369(r2)
/* 801ED20C  C0 02 A9 A4 */	lfs f0, lit_4307(r2)
/* 801ED210  EC 00 F0 2A */	fadds f0, f0, f30
/* 801ED214  EC 42 00 2A */	fadds f2, f2, f0
/* 801ED218  4B FF DE 69 */	bl setKanteraPos__12dMenu_Ring_cFff
/* 801ED21C  80 77 00 54 */	lwz r3, 0x54(r23)
/* 801ED220  C0 22 A9 F0 */	lfs f1, lit_5370(r2)
/* 801ED224  FC 40 08 90 */	fmr f2, f1
/* 801ED228  4B FC 19 CD */	bl setScale__15dKantera_icon_cFff
/* 801ED22C  A0 BF 00 08 */	lhz r5, 8(r31)
/* 801ED230  A0 9F 00 06 */	lhz r4, 6(r31)
/* 801ED234  80 77 00 54 */	lwz r3, 0x54(r23)
/* 801ED238  4B FC 1A 0D */	bl setNowGauge__15dKantera_icon_cFUsUs
/* 801ED23C  7C 7D C8 2E */	lwzx r3, r29, r25
/* 801ED240  88 03 00 B2 */	lbz r0, 0xb2(r3)
/* 801ED244  80 77 00 54 */	lwz r3, 0x54(r23)
/* 801ED248  C8 22 A9 B8 */	lfd f1, lit_4312(r2)
/* 801ED24C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801ED250  3C 00 43 30 */	lis r0, 0x4330
/* 801ED254  90 01 00 18 */	stw r0, 0x18(r1)
/* 801ED258  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801ED25C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801ED260  C0 02 A9 E4 */	lfs f0, lit_5367(r2)
/* 801ED264  EC 21 00 24 */	fdivs f1, f1, f0
/* 801ED268  4B FC 19 15 */	bl setAlphaRate__15dKantera_icon_cFf
/* 801ED26C  80 77 00 54 */	lwz r3, 0x54(r23)
/* 801ED270  80 63 00 04 */	lwz r3, 4(r3)
/* 801ED274  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED278  81 8C 00 08 */	lwz r12, 8(r12)
/* 801ED27C  7D 89 03 A6 */	mtctr r12
/* 801ED280  4E 80 04 21 */	bctrl 
lbl_801ED284:
/* 801ED284  3B 18 00 01 */	addi r24, r24, 1
/* 801ED288  2C 18 00 03 */	cmpwi r24, 3
/* 801ED28C  3A D6 00 04 */	addi r22, r22, 4
/* 801ED290  41 80 FD D0 */	blt lbl_801ED060
lbl_801ED294:
/* 801ED294  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 801ED298  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801ED29C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 801ED2A0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801ED2A4  39 61 00 50 */	addi r11, r1, 0x50
/* 801ED2A8  48 17 4F 5D */	bl _restgpr_20
/* 801ED2AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801ED2B0  7C 08 03 A6 */	mtlr r0
/* 801ED2B4  38 21 00 70 */	addi r1, r1, 0x70
/* 801ED2B8  4E 80 00 20 */	blr 
