lbl_80048520:
/* 80048520  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80048524  7C 08 02 A6 */	mflr r0
/* 80048528  90 01 00 34 */	stw r0, 0x34(r1)
/* 8004852C  39 61 00 30 */	addi r11, r1, 0x30
/* 80048530  48 31 9C AD */	bl _savegpr_29
/* 80048534  7C 7F 1B 78 */	mr r31, r3
/* 80048538  7C BD 2B 78 */	mr r29, r5
/* 8004853C  B0 81 00 08 */	sth r4, 8(r1)
/* 80048540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80048544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80048548  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 8004854C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80048550  3C 60 80 05 */	lis r3, findShutterCallBack__FP10fopAc_ac_cPv@ha /* 0x8004846C@ha */
/* 80048554  38 63 84 6C */	addi r3, r3, findShutterCallBack__FP10fopAc_ac_cPv@l /* 0x8004846C@l */
/* 80048558  38 81 00 08 */	addi r4, r1, 8
/* 8004855C  4B FD 12 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80048560  7C 7E 1B 79 */	or. r30, r3, r3
/* 80048564  41 82 00 98 */	beq lbl_800485FC
/* 80048568  2C 1D 00 00 */	cmpwi r29, 0
/* 8004856C  41 82 00 90 */	beq lbl_800485FC
/* 80048570  C0 7E 04 A8 */	lfs f3, 0x4a8(r30)
/* 80048574  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80048578  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8004857C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80048580  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 80048584  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80048588  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8004858C  A8 63 04 B6 */	lha r3, 0x4b6(r3)
/* 80048590  3C 63 00 01 */	addis r3, r3, 1
/* 80048594  38 03 80 00 */	addi r0, r3, -32768
/* 80048598  C0 22 85 34 */	lfs f1, lit_5055(r2)
/* 8004859C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800485A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800485A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800485A8  7C 03 04 2E */	lfsx f0, r3, r0
/* 800485AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800485B0  EC 03 00 2A */	fadds f0, f3, f0
/* 800485B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800485B8  7C 63 02 14 */	add r3, r3, r0
/* 800485BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800485C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800485C4  EC 02 00 2A */	fadds f0, f2, f0
/* 800485C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800485CC  7F E3 FB 78 */	mr r3, r31
/* 800485D0  38 81 00 10 */	addi r4, r1, 0x10
/* 800485D4  4B FF FD F1 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 800485D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800485DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800485E0  3B E3 4E C8 */	addi r31, r3, 0x4ec8
/* 800485E4  7F E3 FB 78 */	mr r3, r31
/* 800485E8  7F C4 F3 78 */	mr r4, r30
/* 800485EC  4B FF B0 71 */	bl setPt2__14dEvt_control_cFPv
/* 800485F0  7F E3 FB 78 */	mr r3, r31
/* 800485F4  7F C4 F3 78 */	mr r4, r30
/* 800485F8  4B FF B0 FD */	bl setPtD__14dEvt_control_cFPv
lbl_800485FC:
/* 800485FC  7F C3 F3 78 */	mr r3, r30
/* 80048600  39 61 00 30 */	addi r11, r1, 0x30
/* 80048604  48 31 9C 25 */	bl _restgpr_29
/* 80048608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004860C  7C 08 03 A6 */	mtlr r0
/* 80048610  38 21 00 30 */	addi r1, r1, 0x30
/* 80048614  4E 80 00 20 */	blr 
