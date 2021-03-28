lbl_80C6D144:
/* 80C6D144  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C6D148  7C 08 02 A6 */	mflr r0
/* 80C6D14C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C6D150  39 61 00 50 */	addi r11, r1, 0x50
/* 80C6D154  4B 6F 50 74 */	b _savegpr_24
/* 80C6D158  7C 7E 1B 78 */	mr r30, r3
/* 80C6D15C  3C 60 80 C7 */	lis r3, mCcDObjInfo__12daLv5SwIce_c@ha
/* 80C6D160  3B E3 D5 08 */	addi r31, r3, mCcDObjInfo__12daLv5SwIce_c@l
/* 80C6D164  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C6D168  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C6D16C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C6D170  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C6D174  3B 00 00 00 */	li r24, 0
/* 80C6D178  3B A0 00 00 */	li r29, 0
/* 80C6D17C  3B 80 00 00 */	li r28, 0
/* 80C6D180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D184  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C6D188  3B 7F 00 48 */	addi r27, r31, 0x48
lbl_80C6D18C:
/* 80C6D18C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C6D190  38 00 00 FF */	li r0, 0xff
/* 80C6D194  90 01 00 08 */	stw r0, 8(r1)
/* 80C6D198  38 80 00 00 */	li r4, 0
/* 80C6D19C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6D1A0  38 00 FF FF */	li r0, -1
/* 80C6D1A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6D1A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6D1AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6D1B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6D1B4  3B 3C 07 30 */	addi r25, r28, 0x730
/* 80C6D1B8  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C6D1BC  38 A0 00 00 */	li r5, 0
/* 80C6D1C0  7C DB EA 2E */	lhzx r6, r27, r29
/* 80C6D1C4  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6D1C8  39 00 00 00 */	li r8, 0
/* 80C6D1CC  39 20 00 00 */	li r9, 0
/* 80C6D1D0  39 41 00 24 */	addi r10, r1, 0x24
/* 80C6D1D4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6D1D8  4B 3E 02 F4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6D1DC  7C 7E C9 2E */	stwx r3, r30, r25
/* 80C6D1E0  3B 18 00 01 */	addi r24, r24, 1
/* 80C6D1E4  2C 18 00 02 */	cmpwi r24, 2
/* 80C6D1E8  3B BD 00 02 */	addi r29, r29, 2
/* 80C6D1EC  3B 9C 00 04 */	addi r28, r28, 4
/* 80C6D1F0  41 80 FF 9C */	blt lbl_80C6D18C
/* 80C6D1F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C6D1F8  7C 03 07 74 */	extsb r3, r0
/* 80C6D1FC  4B 3B FE 70 */	b dComIfGp_getReverb__Fi
/* 80C6D200  7C 67 1B 78 */	mr r7, r3
/* 80C6D204  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C7@ha */
/* 80C6D208  38 03 01 C7 */	addi r0, r3, 0x01C7 /* 0x000801C7@l */
/* 80C6D20C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C6D210  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C6D214  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C6D218  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6D21C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C6D220  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6D224  38 C0 00 00 */	li r6, 0
/* 80C6D228  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6D22C  FC 40 08 90 */	fmr f2, f1
/* 80C6D230  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C6D234  FC 80 18 90 */	fmr f4, f3
/* 80C6D238  39 00 00 00 */	li r8, 0
/* 80C6D23C  4B 63 E7 48 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6D240  7F C3 F3 78 */	mr r3, r30
/* 80C6D244  4B 3A CA 38 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C6D248  39 61 00 50 */	addi r11, r1, 0x50
/* 80C6D24C  4B 6F 4F C8 */	b _restgpr_24
/* 80C6D250  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C6D254  7C 08 03 A6 */	mtlr r0
/* 80C6D258  38 21 00 50 */	addi r1, r1, 0x50
/* 80C6D25C  4E 80 00 20 */	blr 
