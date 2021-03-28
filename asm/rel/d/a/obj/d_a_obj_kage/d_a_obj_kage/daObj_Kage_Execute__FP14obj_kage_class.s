lbl_80C3153C:
/* 80C3153C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C31540  7C 08 02 A6 */	mflr r0
/* 80C31544  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C31548  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C3154C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C31550  39 61 00 30 */	addi r11, r1, 0x30
/* 80C31554  4B 73 0C 84 */	b _savegpr_28
/* 80C31558  7C 7E 1B 78 */	mr r30, r3
/* 80C3155C  3C 60 80 C3 */	lis r3, lit_3854@ha
/* 80C31560  3B E3 19 5C */	addi r31, r3, lit_3854@l
/* 80C31564  A8 7E 05 A0 */	lha r3, 0x5a0(r30)
/* 80C31568  38 03 00 01 */	addi r0, r3, 1
/* 80C3156C  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 80C31570  38 60 00 00 */	li r3, 0
/* 80C31574  38 00 00 02 */	li r0, 2
/* 80C31578  7C 09 03 A6 */	mtctr r0
lbl_80C3157C:
/* 80C3157C  38 A3 05 9A */	addi r5, r3, 0x59a
/* 80C31580  7C 9E 2A AE */	lhax r4, r30, r5
/* 80C31584  2C 04 00 00 */	cmpwi r4, 0
/* 80C31588  41 82 00 0C */	beq lbl_80C31594
/* 80C3158C  38 04 FF FF */	addi r0, r4, -1
/* 80C31590  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80C31594:
/* 80C31594  38 63 00 02 */	addi r3, r3, 2
/* 80C31598  42 00 FF E4 */	bdnz lbl_80C3157C
/* 80C3159C  A8 7E 05 9E */	lha r3, 0x59e(r30)
/* 80C315A0  2C 03 00 00 */	cmpwi r3, 0
/* 80C315A4  41 82 00 0C */	beq lbl_80C315B0
/* 80C315A8  38 03 FF FF */	addi r0, r3, -1
/* 80C315AC  B0 1E 05 9E */	sth r0, 0x59e(r30)
lbl_80C315B0:
/* 80C315B0  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80C315B4  88 1E 05 74 */	lbz r0, 0x574(r30)
/* 80C315B8  28 00 00 01 */	cmplwi r0, 1
/* 80C315BC  41 82 00 78 */	beq lbl_80C31634
/* 80C315C0  A8 9E 05 A0 */	lha r4, 0x5a0(r30)
/* 80C315C4  1C 04 06 A4 */	mulli r0, r4, 0x6a4
/* 80C315C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C315CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C315D0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C315D4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C315D8  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80C315DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C315E0  FC 00 00 1E */	fctiwz f0, f0
/* 80C315E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C315E8  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80C315EC  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 80C315F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C315F4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C315F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C315FC  FC 00 00 1E */	fctiwz f0, f0
/* 80C31600  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C31604  83 81 00 14 */	lwz r28, 0x14(r1)
/* 80C31608  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80C3160C  C0 3E 05 A8 */	lfs f1, 0x5a8(r30)
/* 80C31610  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80C31614  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80C31618  4B 63 E4 24 */	b cLib_addCalc2__FPffff
/* 80C3161C  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C31620  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C31624  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80C31628  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C3162C  4B 63 E4 10 */	b cLib_addCalc2__FPffff
/* 80C31630  48 00 00 98 */	b lbl_80C316C8
lbl_80C31634:
/* 80C31634  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80C31638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3163C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C31640  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80C31644  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80C31648  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C3164C  41 82 00 20 */	beq lbl_80C3166C
/* 80C31650  7F C3 F3 78 */	mr r3, r30
/* 80C31654  4B 3E 93 10 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C31658  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C3165C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C31660  40 80 00 0C */	bge lbl_80C3166C
/* 80C31664  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C31668  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
lbl_80C3166C:
/* 80C3166C  A8 9E 05 A0 */	lha r4, 0x5a0(r30)
/* 80C31670  1C 04 12 5C */	mulli r0, r4, 0x125c
/* 80C31674  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C31678  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C3167C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C31680  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C31684  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 80C31688  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3168C  FC 00 00 1E */	fctiwz f0, f0
/* 80C31690  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C31694  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80C31698  1C 04 11 30 */	mulli r0, r4, 0x1130
/* 80C3169C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C316A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C316A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C316A8  FC 00 00 1E */	fctiwz f0, f0
/* 80C316AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C316B0  83 81 00 0C */	lwz r28, 0xc(r1)
/* 80C316B4  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80C316B8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C316BC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80C316C0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80C316C4  4B 63 E3 78 */	b cLib_addCalc2__FPffff
lbl_80C316C8:
/* 80C316C8  B3 BE 04 E4 */	sth r29, 0x4e4(r30)
/* 80C316CC  B3 9E 04 E8 */	sth r28, 0x4e8(r30)
/* 80C316D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C316D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C316D8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C316DC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C316E0  EC 40 F8 2A */	fadds f2, f0, f31
/* 80C316E4  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C316E8  4B 71 52 00 */	b PSMTXTrans
/* 80C316EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C316F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C316F4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C316F8  4B 3D AD 3C */	b mDoMtx_YrotM__FPA4_fs
/* 80C316FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C31700  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C31704  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C31708  4B 3D AC 94 */	b mDoMtx_XrotM__FPA4_fs
/* 80C3170C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C31710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C31714  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80C31718  4B 3D AD B4 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C3171C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C31720  FC 40 F8 50 */	fneg f2, f31
/* 80C31724  FC 60 08 90 */	fmr f3, f1
/* 80C31728  4B 3D B6 74 */	b transM__14mDoMtx_stack_cFfff
/* 80C3172C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C31730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C31734  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C31738  38 84 00 24 */	addi r4, r4, 0x24
/* 80C3173C  4B 71 4D 74 */	b PSMTXCopy
/* 80C31740  38 60 00 01 */	li r3, 1
/* 80C31744  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C31748  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C3174C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C31750  4B 73 0A D4 */	b _restgpr_28
/* 80C31754  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C31758  7C 08 03 A6 */	mtlr r0
/* 80C3175C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C31760  4E 80 00 20 */	blr 
