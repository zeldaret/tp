lbl_80B9FAEC:
/* 80B9FAEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9FAF0  7C 08 02 A6 */	mflr r0
/* 80B9FAF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9FAF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9FAFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B9FB00  7C 7E 1B 78 */	mr r30, r3
/* 80B9FB04  3C 60 80 BA */	lis r3, lit_3695@ha /* 0x80BA1154@ha */
/* 80B9FB08  3B E3 11 54 */	addi r31, r3, lit_3695@l /* 0x80BA1154@l */
/* 80B9FB0C  80 05 04 9C */	lwz r0, 0x49c(r5)
/* 80B9FB10  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B9FB14  41 82 00 2C */	beq lbl_80B9FB40
/* 80B9FB18  C0 25 04 D4 */	lfs f1, 0x4d4(r5)
/* 80B9FB1C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B9FB20  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B9FB24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B9FB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B9FB2C  41 80 00 FC */	blt lbl_80B9FC28
/* 80B9FB30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80B9FB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B9FB38  40 81 00 08 */	ble lbl_80B9FB40
/* 80B9FB3C  48 00 00 EC */	b lbl_80B9FC28
lbl_80B9FB40:
/* 80B9FB40  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80B9FB44  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80B9FB48  40 82 00 7C */	bne lbl_80B9FBC4
/* 80B9FB4C  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 80B9FB50  3C 03 00 01 */	addis r0, r3, 1
/* 80B9FB54  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B9FB58  40 82 00 D0 */	bne lbl_80B9FC28
/* 80B9FB5C  88 05 0C F0 */	lbz r0, 0xcf0(r5)
/* 80B9FB60  2C 00 00 03 */	cmpwi r0, 3
/* 80B9FB64  40 82 00 C4 */	bne lbl_80B9FC28
/* 80B9FB68  7F C3 F3 78 */	mr r3, r30
/* 80B9FB6C  7C A4 2B 78 */	mr r4, r5
/* 80B9FB70  48 00 03 41 */	bl setIronBall__14daObjYtaihou_cFP12daObjCarry_c
/* 80B9FB74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B9FB78  7C 03 07 74 */	extsb r3, r0
/* 80B9FB7C  4B 48 D4 F1 */	bl dComIfGp_getReverb__Fi
/* 80B9FB80  7C 67 1B 78 */	mr r7, r3
/* 80B9FB84  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C9@ha */
/* 80B9FB88  38 03 01 C9 */	addi r0, r3, 0x01C9 /* 0x000801C9@l */
/* 80B9FB8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9FB90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B9FB94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B9FB98  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9FB9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B9FBA0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B9FBA4  38 C0 00 00 */	li r6, 0
/* 80B9FBA8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B9FBAC  FC 40 08 90 */	fmr f2, f1
/* 80B9FBB0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80B9FBB4  FC 80 18 90 */	fmr f4, f3
/* 80B9FBB8  39 00 00 00 */	li r8, 0
/* 80B9FBBC  4B 70 BD C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9FBC0  48 00 00 68 */	b lbl_80B9FC28
lbl_80B9FBC4:
/* 80B9FBC4  2C 00 02 21 */	cmpwi r0, 0x221
/* 80B9FBC8  40 82 00 60 */	bne lbl_80B9FC28
/* 80B9FBCC  38 00 FF FF */	li r0, -1
/* 80B9FBD0  B0 1E 07 70 */	sth r0, 0x770(r30)
/* 80B9FBD4  7C A3 2B 78 */	mr r3, r5
/* 80B9FBD8  4B 47 A0 A5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80B9FBDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B9FBE0  7C 03 07 74 */	extsb r3, r0
/* 80B9FBE4  4B 48 D4 89 */	bl dComIfGp_getReverb__Fi
/* 80B9FBE8  7C 67 1B 78 */	mr r7, r3
/* 80B9FBEC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C9@ha */
/* 80B9FBF0  38 03 01 C9 */	addi r0, r3, 0x01C9 /* 0x000801C9@l */
/* 80B9FBF4  90 01 00 08 */	stw r0, 8(r1)
/* 80B9FBF8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B9FBFC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B9FC00  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9FC04  38 81 00 08 */	addi r4, r1, 8
/* 80B9FC08  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B9FC0C  38 C0 00 00 */	li r6, 0
/* 80B9FC10  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80B9FC14  FC 40 08 90 */	fmr f2, f1
/* 80B9FC18  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80B9FC1C  FC 80 18 90 */	fmr f4, f3
/* 80B9FC20  39 00 00 00 */	li r8, 0
/* 80B9FC24  4B 70 BD 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B9FC28:
/* 80B9FC28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9FC2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B9FC30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9FC34  7C 08 03 A6 */	mtlr r0
/* 80B9FC38  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9FC3C  4E 80 00 20 */	blr 
