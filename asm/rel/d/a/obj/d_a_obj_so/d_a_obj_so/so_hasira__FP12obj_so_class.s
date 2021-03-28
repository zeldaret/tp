lbl_80CE0524:
/* 80CE0524  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE0528  7C 08 02 A6 */	mflr r0
/* 80CE052C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE0530  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE0534  4B 68 1C A8 */	b _savegpr_29
/* 80CE0538  7C 7D 1B 78 */	mr r29, r3
/* 80CE053C  3C 60 80 CE */	lis r3, lit_3779@ha
/* 80CE0540  3B C3 39 E8 */	addi r30, r3, lit_3779@l
/* 80CE0544  38 00 00 33 */	li r0, 0x33
/* 80CE0548  B0 01 00 08 */	sth r0, 8(r1)
/* 80CE054C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80CE0550  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80CE0554  38 81 00 08 */	addi r4, r1, 8
/* 80CE0558  4B 33 92 A0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CE055C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE0560  41 82 01 CC */	beq lbl_80CE072C
/* 80CE0564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE056C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CE0570  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CE0574  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CE0578  4B 66 63 70 */	b PSMTXTrans
/* 80CE057C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0584  A8 9F 07 2E */	lha r4, 0x72e(r31)
/* 80CE0588  4B 32 BE AC */	b mDoMtx_YrotM__FPA4_fs
/* 80CE058C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE0590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE0594  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CE0598  4B 32 BE 04 */	b mDoMtx_XrotM__FPA4_fs
/* 80CE059C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE05A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE05A4  A8 1F 07 2E */	lha r0, 0x72e(r31)
/* 80CE05A8  7C 00 00 D0 */	neg r0, r0
/* 80CE05AC  7C 04 07 34 */	extsh r4, r0
/* 80CE05B0  4B 32 BE 84 */	b mDoMtx_YrotM__FPA4_fs
/* 80CE05B4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CE05B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80CE05BC  FC 60 08 90 */	fmr f3, f1
/* 80CE05C0  4B 32 C7 DC */	b transM__14mDoMtx_stack_cFfff
/* 80CE05C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CE05C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CE05CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CE05D0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80CE05D4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80CE05D8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80CE05DC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80CE05E0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80CE05E4  38 00 B0 00 */	li r0, -20480
/* 80CE05E8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80CE05EC  A8 1D 0D AC */	lha r0, 0xdac(r29)
/* 80CE05F0  1C 00 0F 00 */	mulli r0, r0, 0xf00
/* 80CE05F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE05F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CE05FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CE0600  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE0604  C0 1D 0D C8 */	lfs f0, 0xdc8(r29)
/* 80CE0608  FC 00 00 50 */	fneg f0, f0
/* 80CE060C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE0610  FC 00 00 1E */	fctiwz f0, f0
/* 80CE0614  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CE0618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE061C  B0 1D 0D C2 */	sth r0, 0xdc2(r29)
/* 80CE0620  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80CE0624  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80CE0628  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80CE062C  4B 58 F4 54 */	b cLib_addCalc0__FPfff
/* 80CE0630  A8 1D 0D B2 */	lha r0, 0xdb2(r29)
/* 80CE0634  2C 00 00 01 */	cmpwi r0, 1
/* 80CE0638  40 82 00 2C */	bne lbl_80CE0664
/* 80CE063C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE0640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE0644  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CE0648  28 00 00 00 */	cmplwi r0, 0
/* 80CE064C  40 82 00 18 */	bne lbl_80CE0664
/* 80CE0650  A8 7D 0D C0 */	lha r3, 0xdc0(r29)
/* 80CE0654  2C 03 00 00 */	cmpwi r3, 0
/* 80CE0658  40 82 00 0C */	bne lbl_80CE0664
/* 80CE065C  38 03 00 01 */	addi r0, r3, 1
/* 80CE0660  B0 1D 0D C0 */	sth r0, 0xdc0(r29)
lbl_80CE0664:
/* 80CE0664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE0668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE066C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80CE0670  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80CE0674  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CE0678  41 82 00 78 */	beq lbl_80CE06F0
/* 80CE067C  7F A3 EB 78 */	mr r3, r29
/* 80CE0680  4B 33 A2 E4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CE0684  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80CE0688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE068C  40 80 00 64 */	bge lbl_80CE06F0
/* 80CE0690  38 00 00 14 */	li r0, 0x14
/* 80CE0694  B0 1D 0D B2 */	sth r0, 0xdb2(r29)
/* 80CE0698  38 80 00 01 */	li r4, 1
/* 80CE069C  98 9D 0D C4 */	stb r4, 0xdc4(r29)
/* 80CE06A0  A8 7D 0D C0 */	lha r3, 0xdc0(r29)
/* 80CE06A4  2C 03 00 00 */	cmpwi r3, 0
/* 80CE06A8  41 82 00 48 */	beq lbl_80CE06F0
/* 80CE06AC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80CE06B0  2C 00 01 00 */	cmpwi r0, 0x100
/* 80CE06B4  40 81 00 3C */	ble lbl_80CE06F0
/* 80CE06B8  38 03 00 01 */	addi r0, r3, 1
/* 80CE06BC  B0 1D 0D C0 */	sth r0, 0xdc0(r29)
/* 80CE06C0  A8 1D 0D C0 */	lha r0, 0xdc0(r29)
/* 80CE06C4  2C 00 00 02 */	cmpwi r0, 2
/* 80CE06C8  41 80 00 28 */	blt lbl_80CE06F0
/* 80CE06CC  B0 9D 0D AE */	sth r4, 0xdae(r29)
/* 80CE06D0  38 00 00 00 */	li r0, 0
/* 80CE06D4  B0 1D 0D B0 */	sth r0, 0xdb0(r29)
/* 80CE06D8  B0 9D 1B A0 */	sth r4, 0x1ba0(r29)
/* 80CE06DC  B0 1D 0D BE */	sth r0, 0xdbe(r29)
/* 80CE06E0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80CE06E4  38 00 00 12 */	li r0, 0x12
/* 80CE06E8  B0 1D 0D B2 */	sth r0, 0xdb2(r29)
/* 80CE06EC  48 00 00 40 */	b lbl_80CE072C
lbl_80CE06F0:
/* 80CE06F0  A8 7D 0D BE */	lha r3, 0xdbe(r29)
/* 80CE06F4  38 03 13 88 */	addi r0, r3, 0x1388
/* 80CE06F8  B0 1D 0D BE */	sth r0, 0xdbe(r29)
/* 80CE06FC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80CE0700  54 00 08 3C */	slwi r0, r0, 1
/* 80CE0704  7C 04 07 34 */	extsh r4, r0
/* 80CE0708  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80CE070C  7C 00 20 00 */	cmpw r0, r4
/* 80CE0710  40 80 00 0C */	bge lbl_80CE071C
/* 80CE0714  B0 9D 04 E4 */	sth r4, 0x4e4(r29)
/* 80CE0718  48 00 00 14 */	b lbl_80CE072C
lbl_80CE071C:
/* 80CE071C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80CE0720  38 A0 00 10 */	li r5, 0x10
/* 80CE0724  38 C0 00 14 */	li r6, 0x14
/* 80CE0728  4B 58 FE E0 */	b cLib_addCalcAngleS2__FPssss
lbl_80CE072C:
/* 80CE072C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE0730  4B 68 1A F8 */	b _restgpr_29
/* 80CE0734  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE0738  7C 08 03 A6 */	mtlr r0
/* 80CE073C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE0740  4E 80 00 20 */	blr 
