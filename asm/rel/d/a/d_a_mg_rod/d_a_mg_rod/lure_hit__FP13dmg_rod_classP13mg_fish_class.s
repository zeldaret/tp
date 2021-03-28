lbl_804AFA70:
/* 804AFA70  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804AFA74  7C 08 02 A6 */	mflr r0
/* 804AFA78  90 01 00 94 */	stw r0, 0x94(r1)
/* 804AFA7C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804AFA80  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804AFA84  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804AFA88  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804AFA8C  39 61 00 70 */	addi r11, r1, 0x70
/* 804AFA90  4B EB 27 3C */	b _savegpr_25
/* 804AFA94  7C 7A 1B 78 */	mr r26, r3
/* 804AFA98  7C 9B 23 78 */	mr r27, r4
/* 804AFA9C  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804AFAA0  3B C3 B5 34 */	addi r30, r3, lit_3879@l
/* 804AFAA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AFAA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804AFAAC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 804AFAB0  38 00 00 00 */	li r0, 0
/* 804AFAB4  98 1A 15 15 */	stb r0, 0x1515(r26)
/* 804AFAB8  3C 60 80 4C */	lis r3, henna@ha
/* 804AFABC  38 63 BB D0 */	addi r3, r3, henna@l
/* 804AFAC0  80 63 00 00 */	lwz r3, 0(r3)
/* 804AFAC4  28 03 00 00 */	cmplwi r3, 0
/* 804AFAC8  41 82 00 10 */	beq lbl_804AFAD8
/* 804AFACC  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 804AFAD0  60 00 00 01 */	ori r0, r0, 1
/* 804AFAD4  90 03 07 CC */	stw r0, 0x7cc(r3)
lbl_804AFAD8:
/* 804AFAD8  A8 1A 05 88 */	lha r0, 0x588(r26)
/* 804AFADC  2C 00 00 01 */	cmpwi r0, 1
/* 804AFAE0  40 82 00 6C */	bne lbl_804AFB4C
/* 804AFAE4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020080@ha */
/* 804AFAE8  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00020080@l */
/* 804AFAEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AFAF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804AFAF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804AFAF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804AFAFC  38 81 00 0C */	addi r4, r1, 0xc
/* 804AFB00  38 A0 00 00 */	li r5, 0
/* 804AFB04  38 C0 00 00 */	li r6, 0
/* 804AFB08  38 E0 00 00 */	li r7, 0
/* 804AFB0C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804AFB10  FC 40 08 90 */	fmr f2, f1
/* 804AFB14  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 804AFB18  FC 80 18 90 */	fmr f4, f3
/* 804AFB1C  39 00 00 00 */	li r8, 0
/* 804AFB20  4B DF BE 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804AFB24  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804AFB28  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804AFB2C  38 80 04 C7 */	li r4, 0x4c7
/* 804AFB30  4B D6 CE 40 */	b setMeterString__13dMeter2Info_cFl
/* 804AFB34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804AFB38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804AFB3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AFB40  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804AFB44  38 80 00 02 */	li r4, 2
/* 804AFB48  4B E0 2F 40 */	b changeFishingBgm__8Z2SeqMgrFl
lbl_804AFB4C:
/* 804AFB4C  80 1A 14 F0 */	lwz r0, 0x14f0(r26)
/* 804AFB50  2C 00 00 00 */	cmpwi r0, 0
/* 804AFB54  41 82 00 40 */	beq lbl_804AFB94
/* 804AFB58  A8 1B 06 30 */	lha r0, 0x630(r27)
/* 804AFB5C  2C 00 00 00 */	cmpwi r0, 0
/* 804AFB60  40 82 00 34 */	bne lbl_804AFB94
/* 804AFB64  A8 1A 05 88 */	lha r0, 0x588(r26)
/* 804AFB68  2C 00 00 00 */	cmpwi r0, 0
/* 804AFB6C  40 82 00 28 */	bne lbl_804AFB94
/* 804AFB70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AFB74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804AFB78  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804AFB7C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002007D@ha */
/* 804AFB80  38 84 00 7D */	addi r4, r4, 0x007D /* 0x0002007D@l */
/* 804AFB84  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AFB88  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 804AFB8C  7D 89 03 A6 */	mtctr r12
/* 804AFB90  4E 80 04 21 */	bctrl 
lbl_804AFB94:
/* 804AFB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AFB98  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804AFB9C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AFBA0  C0 03 20 58 */	lfs f0, 0x2058(r3)
/* 804AFBA4  C0 7E 01 88 */	lfs f3, 0x188(r30)
/* 804AFBA8  C0 5E 01 98 */	lfs f2, 0x198(r30)
/* 804AFBAC  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804AFBB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AFBB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AFBB8  EC 03 00 2A */	fadds f0, f3, f0
/* 804AFBBC  FC 00 00 1E */	fctiwz f0, f0
/* 804AFBC0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804AFBC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804AFBC8  B0 1A 07 5C */	sth r0, 0x75c(r26)
/* 804AFBCC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AFBD0  C0 03 20 58 */	lfs f0, 0x2058(r3)
/* 804AFBD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AFBD8  FC 00 00 1E */	fctiwz f0, f0
/* 804AFBDC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804AFBE0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804AFBE4  B0 1A 07 5E */	sth r0, 0x75e(r26)
/* 804AFBE8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AFBEC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 804AFBF0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 804AFBF4  D0 1A 0F 64 */	stfs f0, 0xf64(r26)
/* 804AFBF8  C0 1A 0F 60 */	lfs f0, 0xf60(r26)
/* 804AFBFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AFC00  D0 1A 06 F8 */	stfs f0, 0x6f8(r26)
/* 804AFC04  C0 3A 06 F8 */	lfs f1, 0x6f8(r26)
/* 804AFC08  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 804AFC0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFC10  40 81 00 08 */	ble lbl_804AFC18
/* 804AFC14  D0 1A 06 F8 */	stfs f0, 0x6f8(r26)
lbl_804AFC18:
/* 804AFC18  28 1B 00 00 */	cmplwi r27, 0
/* 804AFC1C  41 82 00 38 */	beq lbl_804AFC54
/* 804AFC20  A8 1B 07 32 */	lha r0, 0x732(r27)
/* 804AFC24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AFC28  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804AFC2C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804AFC30  7C 03 04 2E */	lfsx f0, r3, r0
/* 804AFC34  C0 7A 06 F8 */	lfs f3, 0x6f8(r26)
/* 804AFC38  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 804AFC3C  EC 22 00 F2 */	fmuls f1, f2, f3
/* 804AFC40  EC 03 00 32 */	fmuls f0, f3, f0
/* 804AFC44  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AFC48  EC 01 00 2A */	fadds f0, f1, f0
/* 804AFC4C  EC 03 00 2A */	fadds f0, f3, f0
/* 804AFC50  D0 1A 06 F8 */	stfs f0, 0x6f8(r26)
lbl_804AFC54:
/* 804AFC54  28 1B 00 00 */	cmplwi r27, 0
/* 804AFC58  41 82 06 44 */	beq lbl_804B029C
/* 804AFC5C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804AFC60  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804AFC64  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804AFC68  4B DB 6E CC */	b __mi__4cXyzCFRC3Vec
/* 804AFC6C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AFC70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804AFC74  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804AFC78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AFC7C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804AFC80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AFC84  38 61 00 34 */	addi r3, r1, 0x34
/* 804AFC88  4B E9 74 B0 */	b PSVECSquareMag
/* 804AFC8C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AFC90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFC94  40 81 00 58 */	ble lbl_804AFCEC
/* 804AFC98  FC 00 08 34 */	frsqrte f0, f1
/* 804AFC9C  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804AFCA0  FC 44 00 32 */	fmul f2, f4, f0
/* 804AFCA4  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804AFCA8  FC 00 00 32 */	fmul f0, f0, f0
/* 804AFCAC  FC 01 00 32 */	fmul f0, f1, f0
/* 804AFCB0  FC 03 00 28 */	fsub f0, f3, f0
/* 804AFCB4  FC 02 00 32 */	fmul f0, f2, f0
/* 804AFCB8  FC 44 00 32 */	fmul f2, f4, f0
/* 804AFCBC  FC 00 00 32 */	fmul f0, f0, f0
/* 804AFCC0  FC 01 00 32 */	fmul f0, f1, f0
/* 804AFCC4  FC 03 00 28 */	fsub f0, f3, f0
/* 804AFCC8  FC 02 00 32 */	fmul f0, f2, f0
/* 804AFCCC  FC 44 00 32 */	fmul f2, f4, f0
/* 804AFCD0  FC 00 00 32 */	fmul f0, f0, f0
/* 804AFCD4  FC 01 00 32 */	fmul f0, f1, f0
/* 804AFCD8  FC 03 00 28 */	fsub f0, f3, f0
/* 804AFCDC  FC 02 00 32 */	fmul f0, f2, f0
/* 804AFCE0  FC 21 00 32 */	fmul f1, f1, f0
/* 804AFCE4  FC 20 08 18 */	frsp f1, f1
/* 804AFCE8  48 00 00 88 */	b lbl_804AFD70
lbl_804AFCEC:
/* 804AFCEC  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804AFCF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFCF4  40 80 00 10 */	bge lbl_804AFD04
/* 804AFCF8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804AFCFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804AFD00  48 00 00 70 */	b lbl_804AFD70
lbl_804AFD04:
/* 804AFD04  D0 21 00 08 */	stfs f1, 8(r1)
/* 804AFD08  80 81 00 08 */	lwz r4, 8(r1)
/* 804AFD0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AFD10  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AFD14  7C 03 00 00 */	cmpw r3, r0
/* 804AFD18  41 82 00 14 */	beq lbl_804AFD2C
/* 804AFD1C  40 80 00 40 */	bge lbl_804AFD5C
/* 804AFD20  2C 03 00 00 */	cmpwi r3, 0
/* 804AFD24  41 82 00 20 */	beq lbl_804AFD44
/* 804AFD28  48 00 00 34 */	b lbl_804AFD5C
lbl_804AFD2C:
/* 804AFD2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AFD30  41 82 00 0C */	beq lbl_804AFD3C
/* 804AFD34  38 00 00 01 */	li r0, 1
/* 804AFD38  48 00 00 28 */	b lbl_804AFD60
lbl_804AFD3C:
/* 804AFD3C  38 00 00 02 */	li r0, 2
/* 804AFD40  48 00 00 20 */	b lbl_804AFD60
lbl_804AFD44:
/* 804AFD44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AFD48  41 82 00 0C */	beq lbl_804AFD54
/* 804AFD4C  38 00 00 05 */	li r0, 5
/* 804AFD50  48 00 00 10 */	b lbl_804AFD60
lbl_804AFD54:
/* 804AFD54  38 00 00 03 */	li r0, 3
/* 804AFD58  48 00 00 08 */	b lbl_804AFD60
lbl_804AFD5C:
/* 804AFD5C  38 00 00 04 */	li r0, 4
lbl_804AFD60:
/* 804AFD60  2C 00 00 01 */	cmpwi r0, 1
/* 804AFD64  40 82 00 0C */	bne lbl_804AFD70
/* 804AFD68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804AFD6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804AFD70:
/* 804AFD70  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 804AFD74  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 804AFD78  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AFD7C  EC 22 00 2A */	fadds f1, f2, f0
/* 804AFD80  C0 1A 0F 5C */	lfs f0, 0xf5c(r26)
/* 804AFD84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AFD88  40 80 00 08 */	bge lbl_804AFD90
/* 804AFD8C  D0 3A 0F 5C */	stfs f1, 0xf5c(r26)
lbl_804AFD90:
/* 804AFD90  C0 3A 0F 60 */	lfs f1, 0xf60(r26)
/* 804AFD94  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 804AFD98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFD9C  40 81 00 20 */	ble lbl_804AFDBC
/* 804AFDA0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AFDA4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002007F@ha */
/* 804AFDA8  38 84 00 7F */	addi r4, r4, 0x007F /* 0x0002007F@l */
/* 804AFDAC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AFDB0  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 804AFDB4  7D 89 03 A6 */	mtctr r12
/* 804AFDB8  4E 80 04 21 */	bctrl 
lbl_804AFDBC:
/* 804AFDBC  C0 3A 0F 60 */	lfs f1, 0xf60(r26)
/* 804AFDC0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804AFDC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFDC8  40 81 01 C4 */	ble lbl_804AFF8C
/* 804AFDCC  EF E1 00 28 */	fsubs f31, f1, f0
/* 804AFDD0  C3 DA 14 C8 */	lfs f30, 0x14c8(r26)
/* 804AFDD4  FC 00 F2 10 */	fabs f0, f30
/* 804AFDD8  FC 20 00 18 */	frsp f1, f0
/* 804AFDDC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804AFDE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFDE4  40 80 00 08 */	bge lbl_804AFDEC
/* 804AFDE8  C3 DE 00 58 */	lfs f30, 0x58(r30)
lbl_804AFDEC:
/* 804AFDEC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804AFDF0  EF FF 00 32 */	fmuls f31, f31, f0
/* 804AFDF4  C0 3A 14 CC */	lfs f1, 0x14cc(r26)
/* 804AFDF8  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 804AFDFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFE00  40 80 00 0C */	bge lbl_804AFE0C
/* 804AFE04  38 00 00 01 */	li r0, 1
/* 804AFE08  98 1A 15 15 */	stb r0, 0x1515(r26)
lbl_804AFE0C:
/* 804AFE0C  88 1A 15 15 */	lbz r0, 0x1515(r26)
/* 804AFE10  28 00 00 00 */	cmplwi r0, 0
/* 804AFE14  41 82 00 0C */	beq lbl_804AFE20
/* 804AFE18  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 804AFE1C  48 00 00 08 */	b lbl_804AFE24
lbl_804AFE20:
/* 804AFE20  C0 1E 00 5C */	lfs f0, 0x5c(r30)
lbl_804AFE24:
/* 804AFE24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AFE28  40 81 00 08 */	ble lbl_804AFE30
/* 804AFE2C  FF E0 00 90 */	fmr f31, f0
lbl_804AFE30:
/* 804AFE30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804AFE34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804AFE38  80 63 00 00 */	lwz r3, 0(r3)
/* 804AFE3C  A8 9A 06 C4 */	lha r4, 0x6c4(r26)
/* 804AFE40  4B B5 C5 9C */	b mDoMtx_YrotS__FPA4_fs
/* 804AFE44  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 804AFE48  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804AFE4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804AFE50  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AFE54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AFE58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804AFE5C  38 61 00 34 */	addi r3, r1, 0x34
/* 804AFE60  38 81 00 28 */	addi r4, r1, 0x28
/* 804AFE64  4B DC 10 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 804AFE68  38 61 00 28 */	addi r3, r1, 0x28
/* 804AFE6C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804AFE70  7C 65 1B 78 */	mr r5, r3
/* 804AFE74  4B E9 72 1C */	b PSVECAdd
/* 804AFE78  38 61 00 10 */	addi r3, r1, 0x10
/* 804AFE7C  38 81 00 28 */	addi r4, r1, 0x28
/* 804AFE80  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 804AFE84  4B DB 6C B0 */	b __mi__4cXyzCFRC3Vec
/* 804AFE88  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804AFE8C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804AFE90  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804AFE94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AFE98  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804AFE9C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 804AFEA0  4B DB 77 D4 */	b cM_atan2s__Fff
/* 804AFEA4  7C 64 1B 78 */	mr r4, r3
/* 804AFEA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804AFEAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804AFEB0  80 63 00 00 */	lwz r3, 0(r3)
/* 804AFEB4  4B B5 C5 28 */	b mDoMtx_YrotS__FPA4_fs
/* 804AFEB8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AFEBC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804AFEC0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804AFEC4  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 804AFEC8  38 61 00 34 */	addi r3, r1, 0x34
/* 804AFECC  38 81 00 28 */	addi r4, r1, 0x28
/* 804AFED0  4B DC 10 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 804AFED4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 804AFED8  38 81 00 28 */	addi r4, r1, 0x28
/* 804AFEDC  7C 65 1B 78 */	mr r5, r3
/* 804AFEE0  4B E9 71 B0 */	b PSVECAdd
/* 804AFEE4  3B 20 00 00 */	li r25, 0
/* 804AFEE8  3B 80 00 00 */	li r28, 0
/* 804AFEEC  48 00 00 20 */	b lbl_804AFF0C
lbl_804AFEF0:
/* 804AFEF0  38 7C 06 64 */	addi r3, r28, 0x664
/* 804AFEF4  7C 7B 1A 14 */	add r3, r27, r3
/* 804AFEF8  38 81 00 28 */	addi r4, r1, 0x28
/* 804AFEFC  7C 65 1B 78 */	mr r5, r3
/* 804AFF00  4B E9 71 90 */	b PSVECAdd
/* 804AFF04  3B 39 00 01 */	addi r25, r25, 1
/* 804AFF08  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_804AFF0C:
/* 804AFF0C  80 1B 07 2C */	lwz r0, 0x72c(r27)
/* 804AFF10  7C 19 00 00 */	cmpw r25, r0
/* 804AFF14  40 81 FF DC */	ble lbl_804AFEF0
/* 804AFF18  A8 1B 05 B6 */	lha r0, 0x5b6(r27)
/* 804AFF1C  2C 00 00 34 */	cmpwi r0, 0x34
/* 804AFF20  40 82 00 6C */	bne lbl_804AFF8C
/* 804AFF24  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 804AFF28  C0 5A 05 90 */	lfs f2, 0x590(r26)
/* 804AFF2C  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 804AFF30  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 804AFF34  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AFF38  EC 22 00 28 */	fsubs f1, f2, f0
/* 804AFF3C  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 804AFF40  FC 60 F8 90 */	fmr f3, f31
/* 804AFF44  4B DB FA F8 */	b cLib_addCalc2__FPffff
/* 804AFF48  C0 3B 05 F0 */	lfs f1, 0x5f0(r27)
/* 804AFF4C  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 804AFF50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AFF54  40 80 00 38 */	bge lbl_804AFF8C
/* 804AFF58  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 804AFF5C  FC 00 02 10 */	fabs f0, f0
/* 804AFF60  FC 60 00 18 */	frsp f3, f0
/* 804AFF64  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 804AFF68  C0 5A 05 90 */	lfs f2, 0x590(r26)
/* 804AFF6C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 804AFF70  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 804AFF74  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AFF78  EC 22 00 28 */	fsubs f1, f2, f0
/* 804AFF7C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 804AFF80  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 804AFF84  EC 60 18 2A */	fadds f3, f0, f3
/* 804AFF88  4B DB FA B4 */	b cLib_addCalc2__FPffff
lbl_804AFF8C:
/* 804AFF8C  3B 80 00 00 */	li r28, 0
/* 804AFF90  88 1A 0F 80 */	lbz r0, 0xf80(r26)
/* 804AFF94  7C 00 07 75 */	extsb. r0, r0
/* 804AFF98  40 82 00 28 */	bne lbl_804AFFC0
/* 804AFF9C  A8 7B 06 30 */	lha r3, 0x630(r27)
/* 804AFFA0  7C 60 07 35 */	extsh. r0, r3
/* 804AFFA4  41 82 00 2C */	beq lbl_804AFFD0
/* 804AFFA8  2C 03 00 0F */	cmpwi r3, 0xf
/* 804AFFAC  40 80 00 0C */	bge lbl_804AFFB8
/* 804AFFB0  3B 80 00 01 */	li r28, 1
/* 804AFFB4  48 00 00 1C */	b lbl_804AFFD0
lbl_804AFFB8:
/* 804AFFB8  3B 80 00 02 */	li r28, 2
/* 804AFFBC  48 00 00 14 */	b lbl_804AFFD0
lbl_804AFFC0:
/* 804AFFC0  A8 1B 06 30 */	lha r0, 0x630(r27)
/* 804AFFC4  2C 00 00 00 */	cmpwi r0, 0
/* 804AFFC8  41 82 00 08 */	beq lbl_804AFFD0
/* 804AFFCC  3B 80 00 01 */	li r28, 1
lbl_804AFFD0:
/* 804AFFD0  7F 80 07 35 */	extsh. r0, r28
/* 804AFFD4  41 82 02 74 */	beq lbl_804B0248
/* 804AFFD8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804AFFDC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804AFFE0  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 804AFFE4  60 00 00 02 */	ori r0, r0, 2
/* 804AFFE8  B0 03 00 AE */	sth r0, 0xae(r3)
/* 804AFFEC  38 00 00 52 */	li r0, 0x52
/* 804AFFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AFFF4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804AFFF8  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 804AFFFC  38 60 00 00 */	li r3, 0
/* 804B0000  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 804B0004  98 04 5E 3E */	stb r0, 0x5e3e(r4)
/* 804B0008  38 00 00 02 */	li r0, 2
/* 804B000C  98 04 5E 2E */	stb r0, 0x5e2e(r4)
/* 804B0010  98 64 5E 58 */	stb r3, 0x5e58(r4)
/* 804B0014  80 1A 14 F0 */	lwz r0, 0x14f0(r26)
/* 804B0018  2C 00 00 00 */	cmpwi r0, 0
/* 804B001C  41 82 00 18 */	beq lbl_804B0034
/* 804B0020  38 7A 0F 5C */	addi r3, r26, 0xf5c
/* 804B0024  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 804B0028  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B002C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804B0030  4B DB FA 0C */	b cLib_addCalc2__FPffff
lbl_804B0034:
/* 804B0034  38 00 00 00 */	li r0, 0
/* 804B0038  C0 3A 14 CC */	lfs f1, 0x14cc(r26)
/* 804B003C  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 804B0040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B0044  40 80 00 08 */	bge lbl_804B004C
/* 804B0048  38 00 00 01 */	li r0, 1
lbl_804B004C:
/* 804B004C  2C 00 00 00 */	cmpwi r0, 0
/* 804B0050  41 82 02 4C */	beq lbl_804B029C
/* 804B0054  38 60 00 00 */	li r3, 0
/* 804B0058  B0 7B 06 30 */	sth r3, 0x630(r27)
/* 804B005C  7F 80 07 34 */	extsh r0, r28
/* 804B0060  2C 00 00 02 */	cmpwi r0, 2
/* 804B0064  40 82 00 10 */	bne lbl_804B0074
/* 804B0068  38 00 00 04 */	li r0, 4
/* 804B006C  98 1A 10 A7 */	stb r0, 0x10a7(r26)
/* 804B0070  48 00 02 2C */	b lbl_804B029C
lbl_804B0074:
/* 804B0074  38 00 00 34 */	li r0, 0x34
/* 804B0078  B0 1B 05 B6 */	sth r0, 0x5b6(r27)
/* 804B007C  B0 7B 05 B8 */	sth r3, 0x5b8(r27)
/* 804B0080  98 7B 06 5A */	stb r3, 0x65a(r27)
/* 804B0084  98 7A 10 A7 */	stb r3, 0x10a7(r26)
/* 804B0088  88 9B 07 50 */	lbz r4, 0x750(r27)
/* 804B008C  88 1A 0F 80 */	lbz r0, 0xf80(r26)
/* 804B0090  7C 00 07 74 */	extsb r0, r0
/* 804B0094  3C 60 80 4C */	lis r3, learn_d@ha
/* 804B0098  38 63 B9 08 */	addi r3, r3, learn_d@l
/* 804B009C  7C 03 00 AE */	lbzx r0, r3, r0
/* 804B00A0  7C 80 03 78 */	or r0, r4, r0
/* 804B00A4  98 1B 07 50 */	stb r0, 0x750(r27)
/* 804B00A8  C0 3A 0F 60 */	lfs f1, 0xf60(r26)
/* 804B00AC  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 804B00B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B00B4  4C 41 13 82 */	cror 2, 1, 2
/* 804B00B8  40 82 00 18 */	bne lbl_804B00D0
/* 804B00BC  C0 3A 0F 5C */	lfs f1, 0xf5c(r26)
/* 804B00C0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B00C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B00C8  D0 1A 0F 5C */	stfs f0, 0xf5c(r26)
/* 804B00CC  48 00 00 38 */	b lbl_804B0104
lbl_804B00D0:
/* 804B00D0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804B00D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B00D8  4C 41 13 82 */	cror 2, 1, 2
/* 804B00DC  40 82 00 18 */	bne lbl_804B00F4
/* 804B00E0  C0 3A 0F 5C */	lfs f1, 0xf5c(r26)
/* 804B00E4  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804B00E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B00EC  D0 1A 0F 5C */	stfs f0, 0xf5c(r26)
/* 804B00F0  48 00 00 14 */	b lbl_804B0104
lbl_804B00F4:
/* 804B00F4  C0 3A 0F 5C */	lfs f1, 0xf5c(r26)
/* 804B00F8  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 804B00FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B0100  D0 1A 0F 5C */	stfs f0, 0xf5c(r26)
lbl_804B0104:
/* 804B0104  88 1B 06 34 */	lbz r0, 0x634(r27)
/* 804B0108  28 00 00 03 */	cmplwi r0, 3
/* 804B010C  40 82 00 18 */	bne lbl_804B0124
/* 804B0110  38 00 00 05 */	li r0, 5
/* 804B0114  98 1A 10 AA */	stb r0, 0x10aa(r26)
/* 804B0118  38 00 00 14 */	li r0, 0x14
/* 804B011C  98 1A 10 AB */	stb r0, 0x10ab(r26)
/* 804B0120  48 00 00 84 */	b lbl_804B01A4
lbl_804B0124:
/* 804B0124  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 804B0128  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 804B012C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B0130  4C 41 13 82 */	cror 2, 1, 2
/* 804B0134  40 82 00 18 */	bne lbl_804B014C
/* 804B0138  38 00 00 08 */	li r0, 8
/* 804B013C  98 1A 10 AA */	stb r0, 0x10aa(r26)
/* 804B0140  38 00 00 28 */	li r0, 0x28
/* 804B0144  98 1A 10 AB */	stb r0, 0x10ab(r26)
/* 804B0148  48 00 00 5C */	b lbl_804B01A4
lbl_804B014C:
/* 804B014C  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 804B0150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B0154  4C 41 13 82 */	cror 2, 1, 2
/* 804B0158  40 82 00 18 */	bne lbl_804B0170
/* 804B015C  38 00 00 07 */	li r0, 7
/* 804B0160  98 1A 10 AA */	stb r0, 0x10aa(r26)
/* 804B0164  38 00 00 23 */	li r0, 0x23
/* 804B0168  98 1A 10 AB */	stb r0, 0x10ab(r26)
/* 804B016C  48 00 00 38 */	b lbl_804B01A4
lbl_804B0170:
/* 804B0170  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 804B0174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B0178  4C 41 13 82 */	cror 2, 1, 2
/* 804B017C  40 82 00 18 */	bne lbl_804B0194
/* 804B0180  38 00 00 06 */	li r0, 6
/* 804B0184  98 1A 10 AA */	stb r0, 0x10aa(r26)
/* 804B0188  38 00 00 1E */	li r0, 0x1e
/* 804B018C  98 1A 10 AB */	stb r0, 0x10ab(r26)
/* 804B0190  48 00 00 14 */	b lbl_804B01A4
lbl_804B0194:
/* 804B0194  38 00 00 05 */	li r0, 5
/* 804B0198  98 1A 10 AA */	stb r0, 0x10aa(r26)
/* 804B019C  38 00 00 19 */	li r0, 0x19
/* 804B01A0  98 1A 10 AB */	stb r0, 0x10ab(r26)
lbl_804B01A4:
/* 804B01A4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B01A8  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804B01AC  64 00 00 01 */	oris r0, r0, 1
/* 804B01B0  90 03 05 88 */	stw r0, 0x588(r3)
/* 804B01B4  38 00 00 0A */	li r0, 0xa
/* 804B01B8  B0 1A 05 88 */	sth r0, 0x588(r26)
/* 804B01BC  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 804B01C0  D0 1A 14 20 */	stfs f0, 0x1420(r26)
/* 804B01C4  D0 1A 14 1C */	stfs f0, 0x141c(r26)
/* 804B01C8  C0 3A 14 0C */	lfs f1, 0x140c(r26)
/* 804B01CC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 804B01D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B01D4  40 80 00 40 */	bge lbl_804B0214
/* 804B01D8  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804B01DC  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 804B01E0  A8 04 05 9E */	lha r0, 0x59e(r4)
/* 804B01E4  7C 03 02 14 */	add r0, r3, r0
/* 804B01E8  7C 03 07 34 */	extsh r3, r0
/* 804B01EC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804B01F0  7C 03 00 50 */	subf r0, r3, r0
/* 804B01F4  7C 00 07 35 */	extsh. r0, r0
/* 804B01F8  40 80 00 10 */	bge lbl_804B0208
/* 804B01FC  38 00 10 00 */	li r0, 0x1000
/* 804B0200  B0 1A 14 1A */	sth r0, 0x141a(r26)
/* 804B0204  48 00 00 30 */	b lbl_804B0234
lbl_804B0208:
/* 804B0208  38 00 F0 00 */	li r0, -4096
/* 804B020C  B0 1A 14 1A */	sth r0, 0x141a(r26)
/* 804B0210  48 00 00 24 */	b lbl_804B0234
lbl_804B0214:
/* 804B0214  A8 1A 14 1A */	lha r0, 0x141a(r26)
/* 804B0218  2C 00 00 00 */	cmpwi r0, 0
/* 804B021C  40 81 00 10 */	ble lbl_804B022C
/* 804B0220  38 00 10 00 */	li r0, 0x1000
/* 804B0224  B0 1A 14 1A */	sth r0, 0x141a(r26)
/* 804B0228  48 00 00 0C */	b lbl_804B0234
lbl_804B022C:
/* 804B022C  38 00 F0 00 */	li r0, -4096
/* 804B0230  B0 1A 14 1A */	sth r0, 0x141a(r26)
lbl_804B0234:
/* 804B0234  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 804B0238  D0 1A 14 0C */	stfs f0, 0x140c(r26)
/* 804B023C  38 00 00 14 */	li r0, 0x14
/* 804B0240  98 1A 14 07 */	stb r0, 0x1407(r26)
/* 804B0244  48 00 00 58 */	b lbl_804B029C
lbl_804B0248:
/* 804B0248  88 1A 10 A6 */	lbz r0, 0x10a6(r26)
/* 804B024C  7C 00 07 75 */	extsb. r0, r0
/* 804B0250  40 82 00 4C */	bne lbl_804B029C
/* 804B0254  88 1A 10 0F */	lbz r0, 0x100f(r26)
/* 804B0258  7C 00 07 75 */	extsb. r0, r0
/* 804B025C  40 82 00 40 */	bne lbl_804B029C
/* 804B0260  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804B0264  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804B0268  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 804B026C  60 00 00 02 */	ori r0, r0, 2
/* 804B0270  B0 03 00 AE */	sth r0, 0xae(r3)
/* 804B0274  38 00 00 55 */	li r0, 0x55
/* 804B0278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B027C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804B0280  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 804B0284  38 60 00 00 */	li r3, 0
/* 804B0288  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 804B028C  98 04 5E 3E */	stb r0, 0x5e3e(r4)
/* 804B0290  38 00 00 02 */	li r0, 2
/* 804B0294  98 04 5E 2E */	stb r0, 0x5e2e(r4)
/* 804B0298  98 64 5E 58 */	stb r3, 0x5e58(r4)
lbl_804B029C:
/* 804B029C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804B02A0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804B02A4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804B02A8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804B02AC  39 61 00 70 */	addi r11, r1, 0x70
/* 804B02B0  4B EB 1F 68 */	b _restgpr_25
/* 804B02B4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B02B8  7C 08 03 A6 */	mtlr r0
/* 804B02BC  38 21 00 90 */	addi r1, r1, 0x90
/* 804B02C0  4E 80 00 20 */	blr 
