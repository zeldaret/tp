lbl_804656F0:
/* 804656F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804656F4  7C 08 02 A6 */	mflr r0
/* 804656F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804656FC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80465700  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80465704  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80465708  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8046570C  7C 7F 1B 78 */	mr r31, r3
/* 80465710  88 03 06 7E */	lbz r0, 0x67e(r3)
/* 80465714  88 63 06 7F */	lbz r3, 0x67f(r3)
/* 80465718  7C 00 18 40 */	cmplw r0, r3
/* 8046571C  41 82 00 30 */	beq lbl_8046574C
/* 80465720  28 00 00 3F */	cmplwi r0, 0x3f
/* 80465724  41 82 00 28 */	beq lbl_8046574C
/* 80465728  28 03 00 3F */	cmplwi r3, 0x3f
/* 8046572C  41 82 00 20 */	beq lbl_8046574C
/* 80465730  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 80465734  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 80465738  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8046573C  7C 63 02 14 */	add r3, r3, r0
/* 80465740  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 80465744  60 00 00 08 */	ori r0, r0, 8
/* 80465748  98 03 03 F4 */	stb r0, 0x3f4(r3)
lbl_8046574C:
/* 8046574C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465754  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80465758  38 61 00 08 */	addi r3, r1, 8
/* 8046575C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80465760  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80465764  4B E0 13 D0 */	b __mi__4cXyzCFRC3Vec
/* 80465768  C0 21 00 08 */	lfs f1, 8(r1)
/* 8046576C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80465770  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80465774  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80465778  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8046577C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80465780  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80465784  EC 21 00 32 */	fmuls f1, f1, f0
/* 80465788  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 8046578C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80465790  EF E1 00 2A */	fadds f31, f1, f0
/* 80465794  7F E3 FB 78 */	mr r3, r31
/* 80465798  38 81 00 20 */	addi r4, r1, 0x20
/* 8046579C  48 00 00 81 */	bl getRestartPos__10daDoor20_cFP4cXyz
/* 804657A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804657A4  7C 06 07 74 */	extsb r6, r0
/* 804657A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804657AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804657B0  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 804657B4  38 81 00 20 */	addi r4, r1, 0x20
/* 804657B8  3C A0 80 46 */	lis r5, lit_4256@ha
/* 804657BC  C0 05 68 2C */	lfs f0, lit_4256@l(r5)
/* 804657C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804657C4  40 81 00 0C */	ble lbl_804657D0
/* 804657C8  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 804657CC  48 00 00 14 */	b lbl_804657E0
lbl_804657D0:
/* 804657D0  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 804657D4  3C A5 00 01 */	addis r5, r5, 1
/* 804657D8  38 05 80 00 */	addi r0, r5, -32768
/* 804657DC  7C 05 07 34 */	extsh r5, r0
lbl_804657E0:
/* 804657E0  4B BC F7 A0 */	b setRoom__13dSv_restart_cFRC4cXyzsSc
/* 804657E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804657E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804657EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804657F0  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 804657F4  38 80 00 01 */	li r4, 1
/* 804657F8  4B E5 10 E8 */	b setSceneExist__10Z2SceneMgrFb
/* 804657FC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80465800  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80465804  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80465808  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8046580C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80465810  7C 08 03 A6 */	mtlr r0
/* 80465814  38 21 00 50 */	addi r1, r1, 0x50
/* 80465818  4E 80 00 20 */	blr 
