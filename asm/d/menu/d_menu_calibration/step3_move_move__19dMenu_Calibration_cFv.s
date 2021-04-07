lbl_801AF630:
/* 801AF630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AF634  7C 08 02 A6 */	mflr r0
/* 801AF638  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AF63C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AF640  7C 7F 1B 78 */	mr r31, r3
/* 801AF644  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801AF648  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801AF64C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801AF650  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801AF654  41 82 00 58 */	beq lbl_801AF6AC
/* 801AF658  38 00 00 00 */	li r0, 0
/* 801AF65C  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 801AF660  38 00 00 01 */	li r0, 1
/* 801AF664  98 1F 01 01 */	stb r0, 0x101(r31)
/* 801AF668  38 00 00 A2 */	li r0, 0xa2
/* 801AF66C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AF670  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801AF674  38 81 00 0C */	addi r4, r1, 0xc
/* 801AF678  38 A0 00 00 */	li r5, 0
/* 801AF67C  38 C0 00 00 */	li r6, 0
/* 801AF680  38 E0 00 00 */	li r7, 0
/* 801AF684  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF688  FC 40 08 90 */	fmr f2, f1
/* 801AF68C  C0 62 A5 20 */	lfs f3, lit_3911(r2)
/* 801AF690  FC 80 18 90 */	fmr f4, f3
/* 801AF694  39 00 00 00 */	li r8, 0
/* 801AF698  48 0F C2 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801AF69C  48 06 F3 35 */	bl dMeter2Info_set2DVibration__Fv
/* 801AF6A0  7F E3 FB 78 */	mr r3, r31
/* 801AF6A4  48 00 00 6D */	bl setCalibrationValue__19dMenu_Calibration_cFv
/* 801AF6A8  48 00 00 54 */	b lbl_801AF6FC
lbl_801AF6AC:
/* 801AF6AC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801AF6B0  41 82 00 4C */	beq lbl_801AF6FC
/* 801AF6B4  38 00 00 02 */	li r0, 2
/* 801AF6B8  98 1F 01 00 */	stb r0, 0x100(r31)
/* 801AF6BC  38 00 00 01 */	li r0, 1
/* 801AF6C0  98 1F 00 FF */	stb r0, 0xff(r31)
/* 801AF6C4  38 00 00 A2 */	li r0, 0xa2
/* 801AF6C8  90 01 00 08 */	stw r0, 8(r1)
/* 801AF6CC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801AF6D0  38 81 00 08 */	addi r4, r1, 8
/* 801AF6D4  38 A0 00 00 */	li r5, 0
/* 801AF6D8  38 C0 00 00 */	li r6, 0
/* 801AF6DC  38 E0 00 00 */	li r7, 0
/* 801AF6E0  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF6E4  FC 40 08 90 */	fmr f2, f1
/* 801AF6E8  C0 62 A5 20 */	lfs f3, lit_3911(r2)
/* 801AF6EC  FC 80 18 90 */	fmr f4, f3
/* 801AF6F0  39 00 00 00 */	li r8, 0
/* 801AF6F4  48 0F C2 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801AF6F8  48 06 F2 D9 */	bl dMeter2Info_set2DVibration__Fv
lbl_801AF6FC:
/* 801AF6FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AF700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AF704  7C 08 03 A6 */	mtlr r0
/* 801AF708  38 21 00 20 */	addi r1, r1, 0x20
/* 801AF70C  4E 80 00 20 */	blr 
