lbl_80D3FACC:
/* 80D3FACC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D3FAD0  7C 08 02 A6 */	mflr r0
/* 80D3FAD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D3FAD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D3FADC  4B 62 26 F5 */	bl _savegpr_26
/* 80D3FAE0  7C 7D 1B 78 */	mr r29, r3
/* 80D3FAE4  7C 9E 23 78 */	mr r30, r4
/* 80D3FAE8  3C 80 80 D4 */	lis r4, l_cyl_data@ha /* 0x80D401EC@ha */
/* 80D3FAEC  3B E4 01 EC */	addi r31, r4, l_cyl_data@l /* 0x80D401EC@l */
/* 80D3FAF0  AB 83 0E 2E */	lha r28, 0xe2e(r3)
/* 80D3FAF4  4B FF FC 4D */	bl set_cyl__9daZdoor_cFv
/* 80D3FAF8  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80D3FAFC  54 04 08 3C */	slwi r4, r0, 1
/* 80D3FB00  38 7F 00 78 */	addi r3, r31, 0x78
/* 80D3FB04  7F 63 22 AE */	lhax r27, r3, r4
/* 80D3FB08  38 7F 00 80 */	addi r3, r31, 0x80
/* 80D3FB0C  7F 43 22 AE */	lhax r26, r3, r4
/* 80D3FB10  38 7D 0E 2C */	addi r3, r29, 0xe2c
/* 80D3FB14  38 80 00 00 */	li r4, 0
/* 80D3FB18  38 A0 00 14 */	li r5, 0x14
/* 80D3FB1C  38 C0 00 60 */	li r6, 0x60
/* 80D3FB20  38 E0 00 10 */	li r7, 0x10
/* 80D3FB24  4B 53 0A 1D */	bl cLib_addCalcAngleS__FPsssss
/* 80D3FB28  A8 7D 0E 2E */	lha r3, 0xe2e(r29)
/* 80D3FB2C  A8 1D 0E 2C */	lha r0, 0xe2c(r29)
/* 80D3FB30  7C 03 02 14 */	add r0, r3, r0
/* 80D3FB34  B0 1D 0E 2E */	sth r0, 0xe2e(r29)
/* 80D3FB38  A8 7D 0E 2E */	lha r3, 0xe2e(r29)
/* 80D3FB3C  7F 60 07 34 */	extsh r0, r27
/* 80D3FB40  7C 03 00 00 */	cmpw r3, r0
/* 80D3FB44  40 81 00 2C */	ble lbl_80D3FB70
/* 80D3FB48  B3 7D 0E 2E */	sth r27, 0xe2e(r29)
/* 80D3FB4C  7C 1C 00 00 */	cmpw r28, r0
/* 80D3FB50  40 82 00 10 */	bne lbl_80D3FB60
/* 80D3FB54  38 00 00 00 */	li r0, 0
/* 80D3FB58  B0 1D 0E 2C */	sth r0, 0xe2c(r29)
/* 80D3FB5C  48 00 00 44 */	b lbl_80D3FBA0
lbl_80D3FB60:
/* 80D3FB60  A8 1D 0E 2C */	lha r0, 0xe2c(r29)
/* 80D3FB64  7C 00 00 D0 */	neg r0, r0
/* 80D3FB68  B0 1D 0E 2C */	sth r0, 0xe2c(r29)
/* 80D3FB6C  48 00 00 34 */	b lbl_80D3FBA0
lbl_80D3FB70:
/* 80D3FB70  7F 40 07 34 */	extsh r0, r26
/* 80D3FB74  7C 03 00 00 */	cmpw r3, r0
/* 80D3FB78  40 80 00 28 */	bge lbl_80D3FBA0
/* 80D3FB7C  B3 5D 0E 2E */	sth r26, 0xe2e(r29)
/* 80D3FB80  7C 1C 00 00 */	cmpw r28, r0
/* 80D3FB84  40 82 00 10 */	bne lbl_80D3FB94
/* 80D3FB88  38 00 00 00 */	li r0, 0
/* 80D3FB8C  B0 1D 0E 2C */	sth r0, 0xe2c(r29)
/* 80D3FB90  48 00 00 10 */	b lbl_80D3FBA0
lbl_80D3FB94:
/* 80D3FB94  A8 1D 0E 2C */	lha r0, 0xe2c(r29)
/* 80D3FB98  7C 00 00 D0 */	neg r0, r0
/* 80D3FB9C  B0 1D 0E 2C */	sth r0, 0xe2c(r29)
lbl_80D3FBA0:
/* 80D3FBA0  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80D3FBA4  A8 1D 0E 2E */	lha r0, 0xe2e(r29)
/* 80D3FBA8  7C 03 02 14 */	add r0, r3, r0
/* 80D3FBAC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80D3FBB0  A8 7D 04 CA */	lha r3, 0x4ca(r29)
/* 80D3FBB4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80D3FBB8  7C 03 00 00 */	cmpw r3, r0
/* 80D3FBBC  41 82 00 C0 */	beq lbl_80D3FC7C
/* 80D3FBC0  88 1D 0E 30 */	lbz r0, 0xe30(r29)
/* 80D3FBC4  2C 00 00 01 */	cmpwi r0, 1
/* 80D3FBC8  41 82 00 68 */	beq lbl_80D3FC30
/* 80D3FBCC  40 80 00 B0 */	bge lbl_80D3FC7C
/* 80D3FBD0  2C 00 00 00 */	cmpwi r0, 0
/* 80D3FBD4  40 80 00 0C */	bge lbl_80D3FBE0
/* 80D3FBD8  48 00 00 A4 */	b lbl_80D3FC7C
/* 80D3FBDC  48 00 00 A0 */	b lbl_80D3FC7C
lbl_80D3FBE0:
/* 80D3FBE0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D3FBE4  7C 03 07 74 */	extsb r3, r0
/* 80D3FBE8  4B 2E D4 85 */	bl dComIfGp_getReverb__Fi
/* 80D3FBEC  7C 67 1B 78 */	mr r7, r3
/* 80D3FBF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800FC@ha */
/* 80D3FBF4  38 03 00 FC */	addi r0, r3, 0x00FC /* 0x000800FC@l */
/* 80D3FBF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3FBFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D3FC00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D3FC04  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3FC08  38 81 00 0C */	addi r4, r1, 0xc
/* 80D3FC0C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80D3FC10  38 C0 00 00 */	li r6, 0
/* 80D3FC14  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80D3FC18  FC 40 08 90 */	fmr f2, f1
/* 80D3FC1C  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 80D3FC20  FC 80 18 90 */	fmr f4, f3
/* 80D3FC24  39 00 00 00 */	li r8, 0
/* 80D3FC28  4B 56 C8 E5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D3FC2C  48 00 00 50 */	b lbl_80D3FC7C
lbl_80D3FC30:
/* 80D3FC30  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D3FC34  7C 03 07 74 */	extsb r3, r0
/* 80D3FC38  4B 2E D4 35 */	bl dComIfGp_getReverb__Fi
/* 80D3FC3C  7C 67 1B 78 */	mr r7, r3
/* 80D3FC40  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009B@ha */
/* 80D3FC44  38 03 00 9B */	addi r0, r3, 0x009B /* 0x0008009B@l */
/* 80D3FC48  90 01 00 08 */	stw r0, 8(r1)
/* 80D3FC4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D3FC50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D3FC54  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3FC58  38 81 00 08 */	addi r4, r1, 8
/* 80D3FC5C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80D3FC60  38 C0 00 00 */	li r6, 0
/* 80D3FC64  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80D3FC68  FC 40 08 90 */	fmr f2, f1
/* 80D3FC6C  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 80D3FC70  FC 80 18 90 */	fmr f4, f3
/* 80D3FC74  39 00 00 00 */	li r8, 0
/* 80D3FC78  4B 56 C8 95 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D3FC7C:
/* 80D3FC7C  7F A3 EB 78 */	mr r3, r29
/* 80D3FC80  4B FF FC 05 */	bl setBaseMtx__9daZdoor_cFv
/* 80D3FC84  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80D3FC88  90 1E 00 00 */	stw r0, 0(r30)
/* 80D3FC8C  3B 40 00 00 */	li r26, 0
/* 80D3FC90  3B C0 00 00 */	li r30, 0
/* 80D3FC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3FC98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3FC9C  3B E3 23 3C */	addi r31, r3, 0x233c
lbl_80D3FCA0:
/* 80D3FCA0  7F E3 FB 78 */	mr r3, r31
/* 80D3FCA4  38 9E 08 00 */	addi r4, r30, 0x800
/* 80D3FCA8  7C 9D 22 14 */	add r4, r29, r4
/* 80D3FCAC  4B 52 4E FD */	bl Set__4cCcSFP8cCcD_Obj
/* 80D3FCB0  3B 5A 00 01 */	addi r26, r26, 1
/* 80D3FCB4  2C 1A 00 04 */	cmpwi r26, 4
/* 80D3FCB8  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80D3FCBC  41 80 FF E4 */	blt lbl_80D3FCA0
/* 80D3FCC0  7F E3 FB 78 */	mr r3, r31
/* 80D3FCC4  38 9D 0C F0 */	addi r4, r29, 0xcf0
/* 80D3FCC8  4B 52 4E E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D3FCCC  38 60 00 01 */	li r3, 1
/* 80D3FCD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D3FCD4  4B 62 25 49 */	bl _restgpr_26
/* 80D3FCD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3FCDC  7C 08 03 A6 */	mtlr r0
/* 80D3FCE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D3FCE4  4E 80 00 20 */	blr 
