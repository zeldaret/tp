lbl_80D22944:
/* 80D22944  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D22948  7C 08 02 A6 */	mflr r0
/* 80D2294C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D22950  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D22954  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D22958  39 61 00 50 */	addi r11, r1, 0x50
/* 80D2295C  4B 63 F8 74 */	b _savegpr_26
/* 80D22960  7C 7B 1B 78 */	mr r27, r3
/* 80D22964  3C 60 80 D2 */	lis r3, l_sph_src@ha
/* 80D22968  3B E3 3D CC */	addi r31, r3, l_sph_src@l
/* 80D2296C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D22970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D22974  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80D22978  7F A3 EB 78 */	mr r3, r29
/* 80D2297C  4B 34 D4 E0 */	b CheckQuake__12dVibration_cFv
/* 80D22980  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D22984  40 82 00 0C */	bne lbl_80D22990
/* 80D22988  7F 63 DB 78 */	mr r3, r27
/* 80D2298C  48 00 0E DD */	bl startQuake__15daObjVolcBall_cFv
lbl_80D22990:
/* 80D22990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D22994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D22998  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80D2299C  38 7B 06 04 */	addi r3, r27, 0x604
/* 80D229A0  48 00 13 E9 */	bl func_80D23D88
/* 80D229A4  3B C0 00 01 */	li r30, 1
/* 80D229A8  28 03 00 00 */	cmplwi r3, 0
/* 80D229AC  41 82 00 44 */	beq lbl_80D229F0
/* 80D229B0  3B 40 00 00 */	li r26, 0
/* 80D229B4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80D229B8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D229BC  28 04 00 FF */	cmplwi r4, 0xff
/* 80D229C0  41 82 00 24 */	beq lbl_80D229E4
/* 80D229C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D229C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D229CC  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80D229D0  7C 05 07 74 */	extsb r5, r0
/* 80D229D4  4B 31 29 8C */	b isSwitch__10dSv_info_cCFii
/* 80D229D8  2C 03 00 00 */	cmpwi r3, 0
/* 80D229DC  40 82 00 08 */	bne lbl_80D229E4
/* 80D229E0  3B 40 00 01 */	li r26, 1
lbl_80D229E4:
/* 80D229E4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80D229E8  40 82 00 08 */	bne lbl_80D229F0
/* 80D229EC  3B C0 00 00 */	li r30, 0
lbl_80D229F0:
/* 80D229F0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D229F4  40 82 00 34 */	bne lbl_80D22A28
/* 80D229F8  38 7B 06 08 */	addi r3, r27, 0x608
/* 80D229FC  48 00 13 8D */	bl func_80D23D88
/* 80D22A00  28 03 00 00 */	cmplwi r3, 0
/* 80D22A04  40 82 00 0C */	bne lbl_80D22A10
/* 80D22A08  7F 63 DB 78 */	mr r3, r27
/* 80D22A0C  48 00 06 29 */	bl createSearchBall__15daObjVolcBall_cFv
lbl_80D22A10:
/* 80D22A10  38 7B 06 02 */	addi r3, r27, 0x602
/* 80D22A14  48 00 13 59 */	bl func_80D23D6C
/* 80D22A18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D22A1C  40 82 00 0C */	bne lbl_80D22A28
/* 80D22A20  7F 63 DB 78 */	mr r3, r27
/* 80D22A24  48 00 07 65 */	bl createNormalBall__15daObjVolcBall_cFv
lbl_80D22A28:
/* 80D22A28  88 1B 28 82 */	lbz r0, 0x2882(r27)
/* 80D22A2C  28 00 00 00 */	cmplwi r0, 0
/* 80D22A30  41 82 01 48 */	beq lbl_80D22B78
/* 80D22A34  88 7B 06 03 */	lbz r3, 0x603(r27)
/* 80D22A38  38 03 00 01 */	addi r0, r3, 1
/* 80D22A3C  98 1B 06 03 */	stb r0, 0x603(r27)
/* 80D22A40  7F 63 DB 78 */	mr r3, r27
/* 80D22A44  4B FF F0 D5 */	bl getData__15daObjVolcBall_cFv
/* 80D22A48  8B 43 00 51 */	lbz r26, 0x51(r3)
/* 80D22A4C  7F 63 DB 78 */	mr r3, r27
/* 80D22A50  4B FF F0 C9 */	bl getData__15daObjVolcBall_cFv
/* 80D22A54  C3 E3 00 4C */	lfs f31, 0x4c(r3)
/* 80D22A58  88 1B 06 03 */	lbz r0, 0x603(r27)
/* 80D22A5C  7C 00 D0 40 */	cmplw r0, r26
/* 80D22A60  40 80 00 2C */	bge lbl_80D22A8C
/* 80D22A64  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80D22A68  D0 1B 25 10 */	stfs f0, 0x2510(r27)
/* 80D22A6C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80D22A70  D0 1B 25 18 */	stfs f0, 0x2518(r27)
/* 80D22A74  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80D22A78  D0 1B 28 70 */	stfs f0, 0x2870(r27)
/* 80D22A7C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80D22A80  D0 1B 28 74 */	stfs f0, 0x2874(r27)
/* 80D22A84  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80D22A88  D0 1B 28 78 */	stfs f0, 0x2878(r27)
lbl_80D22A8C:
/* 80D22A8C  C0 3B 29 1C */	lfs f1, 0x291c(r27)
/* 80D22A90  38 7B 25 28 */	addi r3, r27, 0x2528
/* 80D22A94  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 80D22A98  93 41 00 14 */	stw r26, 0x14(r1)
/* 80D22A9C  3C 00 43 30 */	lis r0, 0x4330
/* 80D22AA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D22AA4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D22AA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D22AAC  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D22AB0  4B 54 DC 90 */	b cLib_chaseF__FPfff
/* 80D22AB4  C0 3B 29 1C */	lfs f1, 0x291c(r27)
/* 80D22AB8  38 7B 25 2C */	addi r3, r27, 0x252c
/* 80D22ABC  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 80D22AC0  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80D22AC4  3C 00 43 30 */	lis r0, 0x4330
/* 80D22AC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D22ACC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D22AD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D22AD4  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D22AD8  4B 54 DC 68 */	b cLib_chaseF__FPfff
/* 80D22ADC  C0 3B 29 1C */	lfs f1, 0x291c(r27)
/* 80D22AE0  38 7B 25 30 */	addi r3, r27, 0x2530
/* 80D22AE4  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 80D22AE8  93 41 00 24 */	stw r26, 0x24(r1)
/* 80D22AEC  3C 00 43 30 */	lis r0, 0x4330
/* 80D22AF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D22AF4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80D22AF8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D22AFC  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D22B00  4B 54 DC 40 */	b cLib_chaseF__FPfff
/* 80D22B04  38 7B 25 5C */	addi r3, r27, 0x255c
/* 80D22B08  FC 20 F8 90 */	fmr f1, f31
/* 80D22B0C  C8 5F 00 68 */	lfd f2, 0x68(r31)
/* 80D22B10  93 41 00 2C */	stw r26, 0x2c(r1)
/* 80D22B14  3C 00 43 30 */	lis r0, 0x4330
/* 80D22B18  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D22B1C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80D22B20  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D22B24  EC 5F 00 24 */	fdivs f2, f31, f0
/* 80D22B28  4B 54 DC 18 */	b cLib_chaseF__FPfff
/* 80D22B2C  C0 1B 25 28 */	lfs f0, 0x2528(r27)
/* 80D22B30  D0 1B 25 34 */	stfs f0, 0x2534(r27)
/* 80D22B34  C0 1B 25 2C */	lfs f0, 0x252c(r27)
/* 80D22B38  D0 1B 25 38 */	stfs f0, 0x2538(r27)
/* 80D22B3C  C0 1B 25 30 */	lfs f0, 0x2530(r27)
/* 80D22B40  D0 1B 25 3C */	stfs f0, 0x253c(r27)
/* 80D22B44  38 7B 28 5C */	addi r3, r27, 0x285c
/* 80D22B48  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D22B4C  C0 1B 29 1C */	lfs f0, 0x291c(r27)
/* 80D22B50  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D22B54  4B 54 CB B4 */	b SetR__8cM3dGSphFf
/* 80D22B58  38 7B 28 5C */	addi r3, r27, 0x285c
/* 80D22B5C  38 9B 25 10 */	addi r4, r27, 0x2510
/* 80D22B60  4B 54 CA E8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80D22B64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D22B68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D22B6C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D22B70  38 9B 27 38 */	addi r4, r27, 0x2738
/* 80D22B74  4B 54 20 34 */	b Set__4cCcSFP8cCcD_Obj
lbl_80D22B78:
/* 80D22B78  7F 63 DB 78 */	mr r3, r27
/* 80D22B7C  48 00 08 BD */	bl executeBall__15daObjVolcBall_cFv
/* 80D22B80  2C 03 00 00 */	cmpwi r3, 0
/* 80D22B84  40 82 00 7C */	bne lbl_80D22C00
/* 80D22B88  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80D22B8C  41 82 00 74 */	beq lbl_80D22C00
/* 80D22B90  88 1B 06 00 */	lbz r0, 0x600(r27)
/* 80D22B94  28 00 00 00 */	cmplwi r0, 0
/* 80D22B98  40 82 00 4C */	bne lbl_80D22BE4
/* 80D22B9C  38 00 00 02 */	li r0, 2
/* 80D22BA0  98 1B 06 01 */	stb r0, 0x601(r27)
/* 80D22BA4  7F 63 DB 78 */	mr r3, r27
/* 80D22BA8  4B FF EF 71 */	bl getData__15daObjVolcBall_cFv
/* 80D22BAC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80D22BB0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D22BB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D22BB8  4B 54 4D D4 */	b cM_rndFX__Ff
/* 80D22BBC  FF E0 08 90 */	fmr f31, f1
/* 80D22BC0  7F 63 DB 78 */	mr r3, r27
/* 80D22BC4  4B FF EF 55 */	bl getData__15daObjVolcBall_cFv
/* 80D22BC8  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80D22BCC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D22BD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D22BD4  EC 20 F8 2A */	fadds f1, f0, f31
/* 80D22BD8  4B 63 F4 D4 */	b __cvt_fp2unsigned
/* 80D22BDC  90 7B 06 04 */	stw r3, 0x604(r27)
/* 80D22BE0  48 00 00 14 */	b lbl_80D22BF4
lbl_80D22BE4:
/* 80D22BE4  28 00 00 01 */	cmplwi r0, 1
/* 80D22BE8  40 82 00 0C */	bne lbl_80D22BF4
/* 80D22BEC  7F 63 DB 78 */	mr r3, r27
/* 80D22BF0  48 00 00 7D */	bl initActionEnd__15daObjVolcBall_cFv
lbl_80D22BF4:
/* 80D22BF4  7F A3 EB 78 */	mr r3, r29
/* 80D22BF8  38 80 00 1F */	li r4, 0x1f
/* 80D22BFC  4B 34 D1 98 */	b StopQuake__12dVibration_cFi
lbl_80D22C00:
/* 80D22C00  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80D22C04  7C 03 07 74 */	extsb r3, r0
/* 80D22C08  4B 30 A4 64 */	b dComIfGp_getReverb__Fi
/* 80D22C0C  7C 67 1B 78 */	mr r7, r3
/* 80D22C10  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000E@ha */
/* 80D22C14  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0009000E@l */
/* 80D22C18  90 01 00 08 */	stw r0, 8(r1)
/* 80D22C1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D22C20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D22C24  80 63 00 00 */	lwz r3, 0(r3)
/* 80D22C28  38 81 00 08 */	addi r4, r1, 8
/* 80D22C2C  38 A0 00 00 */	li r5, 0
/* 80D22C30  38 C0 00 00 */	li r6, 0
/* 80D22C34  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D22C38  FC 40 08 90 */	fmr f2, f1
/* 80D22C3C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80D22C40  FC 80 18 90 */	fmr f4, f3
/* 80D22C44  39 00 00 00 */	li r8, 0
/* 80D22C48  4B 58 98 C4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D22C4C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D22C50  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D22C54  39 61 00 50 */	addi r11, r1, 0x50
/* 80D22C58  4B 63 F5 C4 */	b _restgpr_26
/* 80D22C5C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D22C60  7C 08 03 A6 */	mtlr r0
/* 80D22C64  38 21 00 60 */	addi r1, r1, 0x60
/* 80D22C68  4E 80 00 20 */	blr 
