lbl_804EF99C:
/* 804EF99C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804EF9A0  7C 08 02 A6 */	mflr r0
/* 804EF9A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804EF9A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804EF9AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804EF9B0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804EF9B4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804EF9B8  39 61 00 50 */	addi r11, r1, 0x50
/* 804EF9BC  4B E7 27 F5 */	bl _savegpr_18
/* 804EF9C0  7C 76 1B 78 */	mr r22, r3
/* 804EF9C4  7C 97 23 78 */	mr r23, r4
/* 804EF9C8  7C B8 2B 78 */	mr r24, r5
/* 804EF9CC  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804EF9D0  3B 83 A6 BC */	addi r28, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804EF9D4  C0 3C 00 8C */	lfs f1, 0x8c(r28)
/* 804EF9D8  C0 04 61 74 */	lfs f0, 0x6174(r4)
/* 804EF9DC  EF C1 00 32 */	fmuls f30, f1, f0
/* 804EF9E0  C0 1C 00 90 */	lfs f0, 0x90(r28)
/* 804EF9E4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804EF9E8  40 81 00 08 */	ble lbl_804EF9F0
/* 804EF9EC  FF C0 00 90 */	fmr f30, f0
lbl_804EF9F0:
/* 804EF9F0  C0 37 61 78 */	lfs f1, 0x6178(r23)
/* 804EF9F4  C0 1C 00 94 */	lfs f0, 0x94(r28)
/* 804EF9F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EF9FC  40 81 00 08 */	ble lbl_804EFA04
/* 804EFA00  FC 20 00 90 */	fmr f1, f0
lbl_804EFA04:
/* 804EFA04  3B 20 00 00 */	li r25, 0
/* 804EFA08  3A A0 00 00 */	li r21, 0
/* 804EFA0C  3A 80 00 00 */	li r20, 0
/* 804EFA10  3A 60 00 00 */	li r19, 0
/* 804EFA14  3A 40 00 00 */	li r18, 0
/* 804EFA18  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804EFA1C  EF E0 08 28 */	fsubs f31, f0, f1
/* 804EFA20  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804EFA24  3B A3 AE A4 */	addi r29, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804EFA28  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EFA2C  3B C3 07 68 */	addi r30, r3, calc_mtx@l /* 0x80450768@l */
/* 804EFA30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804EFA34  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 804EFA38  48 00 01 CC */	b lbl_804EFC04
lbl_804EFA3C:
/* 804EFA3C  7F 77 92 14 */	add r27, r23, r18
/* 804EFA40  C0 3B 00 74 */	lfs f1, 0x74(r27)
/* 804EFA44  C0 5B 00 78 */	lfs f2, 0x78(r27)
/* 804EFA48  C0 7B 00 7C */	lfs f3, 0x7c(r27)
/* 804EFA4C  38 60 00 00 */	li r3, 0
/* 804EFA50  4B D8 14 0D */	bl MtxTrans__FfffUc
/* 804EFA54  80 7E 00 00 */	lwz r3, 0(r30)
/* 804EFA58  7F 57 9A 14 */	add r26, r23, r19
/* 804EFA5C  A8 9A 04 1E */	lha r4, 0x41e(r26)
/* 804EFA60  4B B1 C9 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 804EFA64  80 7E 00 00 */	lwz r3, 0(r30)
/* 804EFA68  A8 9A 04 1C */	lha r4, 0x41c(r26)
/* 804EFA6C  4B B1 C9 31 */	bl mDoMtx_XrotM__FPA4_fs
/* 804EFA70  80 B7 61 D0 */	lwz r5, 0x61d0(r23)
/* 804EFA74  38 05 FF FE */	addi r0, r5, -2
/* 804EFA78  7C 19 00 00 */	cmpw r25, r0
/* 804EFA7C  40 82 00 10 */	bne lbl_804EFA8C
/* 804EFA80  88 17 61 7C */	lbz r0, 0x617c(r23)
/* 804EFA84  7C 00 07 75 */	extsb. r0, r0
/* 804EFA88  40 82 00 44 */	bne lbl_804EFACC
lbl_804EFA8C:
/* 804EFA8C  3C 60 80 50 */	lis r3, chain_z@ha /* 0x804FA978@ha */
/* 804EFA90  38 63 A9 78 */	addi r3, r3, chain_z@l /* 0x804FA978@l */
/* 804EFA94  7C 03 A4 2E */	lfsx f0, r3, r20
/* 804EFA98  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804EFA9C  FC 00 00 1E */	fctiwz f0, f0
/* 804EFAA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804EFAA4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804EFAA8  7C 19 2A 14 */	add r0, r25, r5
/* 804EFAAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804EFAB0  41 82 00 0C */	beq lbl_804EFABC
/* 804EFAB4  38 04 40 00 */	addi r0, r4, 0x4000
/* 804EFAB8  7C 04 07 34 */	extsh r4, r0
lbl_804EFABC:
/* 804EFABC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EFAC0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EFAC4  80 63 00 00 */	lwz r3, 0(r3)
/* 804EFAC8  4B B1 CA 05 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_804EFACC:
/* 804EFACC  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 804EFAD0  FC 40 08 90 */	fmr f2, f1
/* 804EFAD4  EC 61 F0 2A */	fadds f3, f1, f30
/* 804EFAD8  38 60 00 01 */	li r3, 1
/* 804EFADC  4B D8 13 C9 */	bl MtxScale__FfffUc
/* 804EFAE0  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 804EFAE4  FC 40 08 90 */	fmr f2, f1
/* 804EFAE8  C0 7C 00 98 */	lfs f3, 0x98(r28)
/* 804EFAEC  38 60 00 01 */	li r3, 1
/* 804EFAF0  4B D8 13 6D */	bl MtxTrans__FfffUc
/* 804EFAF4  2C 18 00 02 */	cmpwi r24, 2
/* 804EFAF8  41 80 00 24 */	blt lbl_804EFB1C
/* 804EFAFC  80 77 61 D0 */	lwz r3, 0x61d0(r23)
/* 804EFB00  38 03 FF FE */	addi r0, r3, -2
/* 804EFB04  7C 19 00 00 */	cmpw r25, r0
/* 804EFB08  40 82 00 0C */	bne lbl_804EFB14
/* 804EFB0C  83 57 00 60 */	lwz r26, 0x60(r23)
/* 804EFB10  48 00 00 10 */	b lbl_804EFB20
lbl_804EFB14:
/* 804EFB14  7F 57 A0 2E */	lwzx r26, r23, r20
/* 804EFB18  48 00 00 08 */	b lbl_804EFB20
lbl_804EFB1C:
/* 804EFB1C  7F 57 A0 2E */	lwzx r26, r23, r20
lbl_804EFB20:
/* 804EFB20  80 7E 00 00 */	lwz r3, 0(r30)
/* 804EFB24  38 9A 00 24 */	addi r4, r26, 0x24
/* 804EFB28  4B E5 69 89 */	bl PSMTXCopy
/* 804EFB2C  7F E3 FB 78 */	mr r3, r31
/* 804EFB30  38 80 00 00 */	li r4, 0
/* 804EFB34  38 BB 00 74 */	addi r5, r27, 0x74
/* 804EFB38  3B 75 04 B8 */	addi r27, r21, 0x4b8
/* 804EFB3C  7F 77 DA 14 */	add r27, r23, r27
/* 804EFB40  7F 66 DB 78 */	mr r6, r27
/* 804EFB44  4B CB 3C 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804EFB48  7F E3 FB 78 */	mr r3, r31
/* 804EFB4C  80 9A 00 04 */	lwz r4, 4(r26)
/* 804EFB50  7F 65 DB 78 */	mr r5, r27
/* 804EFB54  4B CB 52 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804EFB58  80 7A 00 04 */	lwz r3, 4(r26)
/* 804EFB5C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804EFB60  80 63 00 00 */	lwz r3, 0(r3)
/* 804EFB64  2C 19 00 06 */	cmpwi r25, 6
/* 804EFB68  40 80 00 60 */	bge lbl_804EFBC8
/* 804EFB6C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804EFB70  38 80 00 00 */	li r4, 0
/* 804EFB74  81 83 00 00 */	lwz r12, 0(r3)
/* 804EFB78  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804EFB7C  7D 89 03 A6 */	mtctr r12
/* 804EFB80  4E 80 04 21 */	bctrl 
/* 804EFB84  C0 5C 00 9C */	lfs f2, 0x9c(r28)
/* 804EFB88  20 19 00 06 */	subfic r0, r25, 6
/* 804EFB8C  C8 3C 00 A0 */	lfd f1, 0xa0(r28)
/* 804EFB90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804EFB94  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EFB98  3C 00 43 30 */	lis r0, 0x4330
/* 804EFB9C  90 01 00 08 */	stw r0, 8(r1)
/* 804EFBA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 804EFBA4  EC 20 08 28 */	fsubs f1, f0, f1
/* 804EFBA8  C0 16 07 74 */	lfs f0, 0x774(r22)
/* 804EFBAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EFBB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EFBB4  FC 00 00 1E */	fctiwz f0, f0
/* 804EFBB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804EFBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EFBC0  B0 03 00 00 */	sth r0, 0(r3)
/* 804EFBC4  48 00 00 24 */	b lbl_804EFBE8
lbl_804EFBC8:
/* 804EFBC8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804EFBCC  38 80 00 00 */	li r4, 0
/* 804EFBD0  81 83 00 00 */	lwz r12, 0(r3)
/* 804EFBD4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804EFBD8  7D 89 03 A6 */	mtctr r12
/* 804EFBDC  4E 80 04 21 */	bctrl 
/* 804EFBE0  38 00 00 00 */	li r0, 0
/* 804EFBE4  B0 03 00 00 */	sth r0, 0(r3)
lbl_804EFBE8:
/* 804EFBE8  7F 43 D3 78 */	mr r3, r26
/* 804EFBEC  4B B1 E0 41 */	bl mDoExt_modelUpdate__FP8J3DModel
/* 804EFBF0  3B 39 00 01 */	addi r25, r25, 1
/* 804EFBF4  3A B5 03 88 */	addi r21, r21, 0x388
/* 804EFBF8  3A 94 00 04 */	addi r20, r20, 4
/* 804EFBFC  3A 73 00 06 */	addi r19, r19, 6
/* 804EFC00  3A 52 00 0C */	addi r18, r18, 0xc
lbl_804EFC04:
/* 804EFC04  80 77 61 D0 */	lwz r3, 0x61d0(r23)
/* 804EFC08  38 03 FF FF */	addi r0, r3, -1
/* 804EFC0C  7C 19 00 00 */	cmpw r25, r0
/* 804EFC10  41 80 FE 2C */	blt lbl_804EFA3C
/* 804EFC14  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804EFC18  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804EFC1C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804EFC20  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804EFC24  39 61 00 50 */	addi r11, r1, 0x50
/* 804EFC28  4B E7 25 D5 */	bl _restgpr_18
/* 804EFC2C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804EFC30  7C 08 03 A6 */	mtlr r0
/* 804EFC34  38 21 00 70 */	addi r1, r1, 0x70
/* 804EFC38  4E 80 00 20 */	blr 
