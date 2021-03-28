lbl_80C28674:
/* 80C28674  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C28678  7C 08 02 A6 */	mflr r0
/* 80C2867C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C28680  39 61 00 30 */	addi r11, r1, 0x30
/* 80C28684  4B 73 9B 58 */	b _savegpr_29
/* 80C28688  7C 7D 1B 78 */	mr r29, r3
/* 80C2868C  3C 60 80 C3 */	lis r3, lit_3649@ha
/* 80C28690  3B E3 92 38 */	addi r31, r3, lit_3649@l
/* 80C28694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C28698  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C2869C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C286A0  38 00 00 01 */	li r0, 1
/* 80C286A4  98 1D 06 C0 */	stb r0, 0x6c0(r29)
/* 80C286A8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C286AC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C286B0  EC 61 00 28 */	fsubs f3, f1, f0
/* 80C286B4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C286B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C286BC  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C286C0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C286C4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C286C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C286CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C286D0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C286D4  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80C286D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C286DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C286E0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80C286E4  7C 00 00 D0 */	neg r0, r0
/* 80C286E8  7C 04 07 34 */	extsh r4, r0
/* 80C286EC  4B 3E 3C F0 */	b mDoMtx_YrotS__FPA4_fs
/* 80C286F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C286F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C286F8  38 81 00 08 */	addi r4, r1, 8
/* 80C286FC  7C 85 23 78 */	mr r5, r4
/* 80C28700  4B 71 E6 6C */	b PSMTXMultVec
/* 80C28704  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C28708  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C2870C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28710  40 80 00 5C */	bge lbl_80C2876C
/* 80C28714  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C28718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2871C  40 81 00 50 */	ble lbl_80C2876C
/* 80C28720  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80C28724  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80C28728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2872C  40 80 00 40 */	bge lbl_80C2876C
/* 80C28730  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C28734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28738  40 81 00 34 */	ble lbl_80C2876C
/* 80C2873C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C28740  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C28744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C28748  40 81 00 24 */	ble lbl_80C2876C
/* 80C2874C  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80C28750  38 80 01 50 */	li r4, 0x150
/* 80C28754  38 A0 00 0B */	li r5, 0xb
/* 80C28758  38 C0 01 00 */	li r6, 0x100
/* 80C2875C  38 E0 00 00 */	li r7, 0
/* 80C28760  4B 64 7D E0 */	b cLib_addCalcAngleS__FPsssss
/* 80C28764  38 00 04 00 */	li r0, 0x400
/* 80C28768  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
lbl_80C2876C:
/* 80C2876C  38 60 00 00 */	li r3, 0
/* 80C28770  39 61 00 30 */	addi r11, r1, 0x30
/* 80C28774  4B 73 9A B4 */	b _restgpr_29
/* 80C28778  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2877C  7C 08 03 A6 */	mtlr r0
/* 80C28780  38 21 00 30 */	addi r1, r1, 0x30
/* 80C28784  4E 80 00 20 */	blr 
