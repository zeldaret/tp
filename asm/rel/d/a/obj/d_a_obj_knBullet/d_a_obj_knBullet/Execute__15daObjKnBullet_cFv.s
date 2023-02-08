lbl_80C47300:
/* 80C47300  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C47304  7C 08 02 A6 */	mflr r0
/* 80C47308  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C4730C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C47310  4B 71 AE B9 */	bl _savegpr_24
/* 80C47314  7C 7E 1B 78 */	mr r30, r3
/* 80C47318  3C 80 80 C4 */	lis r4, l_DATA@ha /* 0x80C47950@ha */
/* 80C4731C  3B E4 79 50 */	addi r31, r4, l_DATA@l /* 0x80C47950@l */
/* 80C47320  48 00 02 39 */	bl col_chk__15daObjKnBullet_cFv
/* 80C47324  2C 03 00 00 */	cmpwi r3, 0
/* 80C47328  40 82 00 0C */	bne lbl_80C47334
/* 80C4732C  38 60 00 01 */	li r3, 1
/* 80C47330  48 00 01 38 */	b lbl_80C47468
lbl_80C47334:
/* 80C47334  7F C3 F3 78 */	mr r3, r30
/* 80C47338  38 80 00 00 */	li r4, 0
/* 80C4733C  4B 3D 33 25 */	bl fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80C47340  7F C3 F3 78 */	mr r3, r30
/* 80C47344  48 00 01 4D */	bl setBaseMtx__15daObjKnBullet_cFv
/* 80C47348  38 7E 07 0E */	addi r3, r30, 0x70e
/* 80C4734C  48 00 05 E1 */	bl func_80C4792C
/* 80C47350  7C 60 07 35 */	extsh. r0, r3
/* 80C47354  40 82 00 14 */	bne lbl_80C47368
/* 80C47358  7F C3 F3 78 */	mr r3, r30
/* 80C4735C  4B 3D 29 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C47360  38 60 00 01 */	li r3, 1
/* 80C47364  48 00 01 04 */	b lbl_80C47468
lbl_80C47368:
/* 80C47368  3B 00 00 00 */	li r24, 0
/* 80C4736C  3B A0 00 00 */	li r29, 0
/* 80C47370  3B 80 00 00 */	li r28, 0
/* 80C47374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47378  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4737C  3B 7F 00 5C */	addi r27, r31, 0x5c
lbl_80C47380:
/* 80C47380  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C47384  38 00 00 FF */	li r0, 0xff
/* 80C47388  90 01 00 08 */	stw r0, 8(r1)
/* 80C4738C  38 80 00 00 */	li r4, 0
/* 80C47390  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C47394  38 00 FF FF */	li r0, -1
/* 80C47398  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C4739C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C473A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C473A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C473A8  3B 3C 07 10 */	addi r25, r28, 0x710
/* 80C473AC  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C473B0  38 A0 00 00 */	li r5, 0
/* 80C473B4  7C DB EA 2E */	lhzx r6, r27, r29
/* 80C473B8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C473BC  39 00 00 00 */	li r8, 0
/* 80C473C0  39 3E 04 DC */	addi r9, r30, 0x4dc
/* 80C473C4  39 40 00 00 */	li r10, 0
/* 80C473C8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C473CC  4B 40 61 01 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C473D0  7C 7E C9 2E */	stwx r3, r30, r25
/* 80C473D4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C473D8  38 63 02 10 */	addi r3, r3, 0x210
/* 80C473DC  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C473E0  4B 40 45 39 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80C473E4  28 03 00 00 */	cmplwi r3, 0
/* 80C473E8  41 82 00 1C */	beq lbl_80C47404
/* 80C473EC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C473F0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C473F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C473F8  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80C473FC  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80C47400  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_80C47404:
/* 80C47404  3B 18 00 01 */	addi r24, r24, 1
/* 80C47408  2C 18 00 03 */	cmpwi r24, 3
/* 80C4740C  3B BD 00 02 */	addi r29, r29, 2
/* 80C47410  3B 9C 00 04 */	addi r28, r28, 4
/* 80C47414  41 80 FF 6C */	blt lbl_80C47380
/* 80C47418  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C4741C  7C 03 07 74 */	extsb r3, r0
/* 80C47420  3C 80 00 06 */	lis r4, 0x0006 /* 0x00060013@ha */
/* 80C47424  38 04 00 13 */	addi r0, r4, 0x0013 /* 0x00060013@l */
/* 80C47428  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C4742C  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C47430  83 44 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r4)  /* 0x80451368@l */
/* 80C47434  4B 3E 5C 39 */	bl dComIfGp_getReverb__Fi
/* 80C47438  7C 67 1B 78 */	mr r7, r3
/* 80C4743C  7F 43 D3 78 */	mr r3, r26
/* 80C47440  38 81 00 20 */	addi r4, r1, 0x20
/* 80C47444  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C47448  38 C0 00 00 */	li r6, 0
/* 80C4744C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C47450  FC 40 08 90 */	fmr f2, f1
/* 80C47454  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C47458  FC 80 18 90 */	fmr f4, f3
/* 80C4745C  39 00 00 00 */	li r8, 0
/* 80C47460  4B 66 50 AD */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C47464  38 60 00 01 */	li r3, 1
lbl_80C47468:
/* 80C47468  39 61 00 50 */	addi r11, r1, 0x50
/* 80C4746C  4B 71 AD A9 */	bl _restgpr_24
/* 80C47470  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C47474  7C 08 03 A6 */	mtlr r0
/* 80C47478  38 21 00 50 */	addi r1, r1, 0x50
/* 80C4747C  4E 80 00 20 */	blr 
