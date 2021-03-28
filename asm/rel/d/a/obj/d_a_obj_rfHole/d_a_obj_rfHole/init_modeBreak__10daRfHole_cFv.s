lbl_80CB9558:
/* 80CB9558  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CB955C  7C 08 02 A6 */	mflr r0
/* 80CB9560  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CB9564  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CB9568  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80CB956C  7C 7E 1B 78 */	mr r30, r3
/* 80CB9570  3C 80 80 CC */	lis r4, lit_3649@ha
/* 80CB9574  3B E4 9A 84 */	addi r31, r4, lit_3649@l
/* 80CB9578  48 00 01 F1 */	bl setBreakEffect__10daRfHole_cFv
/* 80CB957C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CB9580  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CB9584  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CB9588  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CB958C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CB9590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB9594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB9598  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CB959C  3C 80 80 CC */	lis r4, l_HIO@ha
/* 80CB95A0  38 84 9B F4 */	addi r4, r4, l_HIO@l
/* 80CB95A4  88 84 00 15 */	lbz r4, 0x15(r4)
/* 80CB95A8  38 A0 00 0F */	li r5, 0xf
/* 80CB95AC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80CB95B0  4B 3B 64 74 */	b StartShock__12dVibration_cFii4cXyz
/* 80CB95B4  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CB95B8  38 63 9B F4 */	addi r3, r3, l_HIO@l
/* 80CB95BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CB95C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CB95C4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CB95C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CB95CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CB95D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB95D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB95D8  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80CB95DC  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80CB95E0  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80CB95E4  4B 35 2C 24 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80CB95E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CB95EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CB95F0  38 81 00 30 */	addi r4, r1, 0x30
/* 80CB95F4  7C 85 23 78 */	mr r5, r4
/* 80CB95F8  4B 68 D7 74 */	b PSMTXMultVec
/* 80CB95FC  38 61 00 0C */	addi r3, r1, 0xc
/* 80CB9600  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CB9604  38 A1 00 30 */	addi r5, r1, 0x30
/* 80CB9608  4B 5A D4 DC */	b __pl__4cXyzCFRC3Vec
/* 80CB960C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CB9610  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CB9614  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CB9618  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CB961C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CB9620  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CB9624  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CB9628  7C 03 07 74 */	extsb r3, r0
/* 80CB962C  4B 37 3A 40 */	b dComIfGp_getReverb__Fi
/* 80CB9630  7C 67 1B 78 */	mr r7, r3
/* 80CB9634  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010F@ha */
/* 80CB9638  38 03 01 0F */	addi r0, r3, 0x010F /* 0x0008010F@l */
/* 80CB963C  90 01 00 08 */	stw r0, 8(r1)
/* 80CB9640  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CB9644  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CB9648  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB964C  38 81 00 08 */	addi r4, r1, 8
/* 80CB9650  38 A1 00 24 */	addi r5, r1, 0x24
/* 80CB9654  38 C0 00 00 */	li r6, 0
/* 80CB9658  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CB965C  FC 40 08 90 */	fmr f2, f1
/* 80CB9660  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80CB9664  FC 80 18 90 */	fmr f4, f3
/* 80CB9668  39 00 00 00 */	li r8, 0
/* 80CB966C  4B 5F 23 18 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB9670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB9674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB9678  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB967C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB9680  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CB9684  7C 05 07 74 */	extsb r5, r0
/* 80CB9688  4B 37 BB 78 */	b onSwitch__10dSv_info_cFii
/* 80CB968C  38 00 00 01 */	li r0, 1
/* 80CB9690  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80CB9694  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CB9698  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80CB969C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CB96A0  7C 08 03 A6 */	mtlr r0
/* 80CB96A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80CB96A8  4E 80 00 20 */	blr 
