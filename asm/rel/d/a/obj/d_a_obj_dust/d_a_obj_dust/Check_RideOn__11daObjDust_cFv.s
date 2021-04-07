lbl_80BE24F8:
/* 80BE24F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE24FC  7C 08 02 A6 */	mflr r0
/* 80BE2500  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE2504  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE2508  4B 77 FC D1 */	bl _savegpr_28
/* 80BE250C  7C 7E 1B 78 */	mr r30, r3
/* 80BE2510  3C 60 80 BE */	lis r3, lit_3673@ha /* 0x80BE2F98@ha */
/* 80BE2514  3B E3 2F 98 */	addi r31, r3, lit_3673@l /* 0x80BE2F98@l */
/* 80BE2518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE251C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE2520  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80BE2524  3B 80 00 00 */	li r28, 0
/* 80BE2528  38 00 00 00 */	li r0, 0
/* 80BE252C  98 1E 06 30 */	stb r0, 0x630(r30)
/* 80BE2530  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80BE2534  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BE2538  EC 61 00 28 */	fsubs f3, f1, f0
/* 80BE253C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BE2540  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BE2544  EC 41 00 28 */	fsubs f2, f1, f0
/* 80BE2548  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BE254C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BE2550  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE2554  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BE2558  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BE255C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80BE2560  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE2564  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE2568  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80BE256C  7C 00 00 D0 */	neg r0, r0
/* 80BE2570  7C 04 07 34 */	extsh r4, r0
/* 80BE2574  4B 42 9E 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BE2578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE257C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE2580  38 81 00 08 */	addi r4, r1, 8
/* 80BE2584  7C 85 23 78 */	mr r5, r4
/* 80BE2588  4B 76 47 E5 */	bl PSMTXMultVec
/* 80BE258C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BE2590  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80BE2594  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80BE2598  40 80 00 D8 */	bge lbl_80BE2670
/* 80BE259C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80BE25A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE25A4  40 81 00 CC */	ble lbl_80BE2670
/* 80BE25A8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80BE25AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BE25B0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80BE25B4  40 80 00 BC */	bge lbl_80BE2670
/* 80BE25B8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BE25BC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80BE25C0  40 81 00 B0 */	ble lbl_80BE2670
/* 80BE25C4  7F C3 F3 78 */	mr r3, r30
/* 80BE25C8  38 9E 05 C8 */	addi r4, r30, 0x5c8
/* 80BE25CC  FC 00 08 50 */	fneg f0, f1
/* 80BE25D0  FC 00 00 1E */	fctiwz f0, f0
/* 80BE25D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BE25D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BE25DC  7C 00 07 34 */	extsh r0, r0
/* 80BE25E0  C8 3F 00 08 */	lfd f1, 8(r31)
/* 80BE25E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE25E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE25EC  3C 00 43 30 */	lis r0, 0x4330
/* 80BE25F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE25F4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BE25F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BE25FC  38 A0 02 00 */	li r5, 0x200
/* 80BE2600  4B FF FE 91 */	bl RideOn_Angle__11daObjDust_cFRsfsf
/* 80BE2604  7F C3 F3 78 */	mr r3, r30
/* 80BE2608  38 9E 05 CC */	addi r4, r30, 0x5cc
/* 80BE260C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80BE2610  38 A0 02 00 */	li r5, 0x200
/* 80BE2614  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80BE2618  4B FF FE 79 */	bl RideOn_Angle__11daObjDust_cFRsfsf
/* 80BE261C  38 00 00 01 */	li r0, 1
/* 80BE2620  98 1E 06 30 */	stb r0, 0x630(r30)
/* 80BE2624  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BE2628  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BE262C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE2630  40 81 00 24 */	ble lbl_80BE2654
/* 80BE2634  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BE2638  38 80 01 50 */	li r4, 0x150
/* 80BE263C  38 A0 00 0B */	li r5, 0xb
/* 80BE2640  38 C0 01 00 */	li r6, 0x100
/* 80BE2644  38 E0 00 00 */	li r7, 0
/* 80BE2648  4B 68 DE F9 */	bl cLib_addCalcAngleS__FPsssss
/* 80BE264C  3B 80 04 00 */	li r28, 0x400
/* 80BE2650  48 00 00 68 */	b lbl_80BE26B8
lbl_80BE2654:
/* 80BE2654  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BE2658  38 80 01 00 */	li r4, 0x100
/* 80BE265C  38 A0 00 0B */	li r5, 0xb
/* 80BE2660  38 C0 01 00 */	li r6, 0x100
/* 80BE2664  38 E0 00 00 */	li r7, 0
/* 80BE2668  4B 68 DE D9 */	bl cLib_addCalcAngleS__FPsssss
/* 80BE266C  48 00 00 4C */	b lbl_80BE26B8
lbl_80BE2670:
/* 80BE2670  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BE2674  38 80 01 00 */	li r4, 0x100
/* 80BE2678  38 A0 00 0B */	li r5, 0xb
/* 80BE267C  38 C0 01 00 */	li r6, 0x100
/* 80BE2680  38 E0 00 00 */	li r7, 0
/* 80BE2684  4B 68 DE BD */	bl cLib_addCalcAngleS__FPsssss
/* 80BE2688  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80BE268C  38 80 00 00 */	li r4, 0
/* 80BE2690  38 A0 00 02 */	li r5, 2
/* 80BE2694  38 C0 01 00 */	li r6, 0x100
/* 80BE2698  38 E0 00 01 */	li r7, 1
/* 80BE269C  4B 68 DE A5 */	bl cLib_addCalcAngleS__FPsssss
/* 80BE26A0  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80BE26A4  38 80 00 00 */	li r4, 0
/* 80BE26A8  38 A0 00 02 */	li r5, 2
/* 80BE26AC  38 C0 01 00 */	li r6, 0x100
/* 80BE26B0  38 E0 00 01 */	li r7, 1
/* 80BE26B4  4B 68 DE 8D */	bl cLib_addCalcAngleS__FPsssss
lbl_80BE26B8:
/* 80BE26B8  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80BE26BC  7F 80 07 34 */	extsh r0, r28
/* 80BE26C0  C8 3F 00 08 */	lfd f1, 8(r31)
/* 80BE26C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE26C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE26CC  3C 00 43 30 */	lis r0, 0x4330
/* 80BE26D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE26D4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BE26D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BE26DC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80BE26E0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80BE26E4  C0 9F 00 00 */	lfs f4, 0(r31)
/* 80BE26E8  4B 68 D2 95 */	bl cLib_addCalc__FPfffff
/* 80BE26EC  38 60 00 00 */	li r3, 0
/* 80BE26F0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE26F4  4B 77 FB 31 */	bl _restgpr_28
/* 80BE26F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE26FC  7C 08 03 A6 */	mtlr r0
/* 80BE2700  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE2704  4E 80 00 20 */	blr 
