lbl_80675DB0:
/* 80675DB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80675DB4  7C 08 02 A6 */	mflr r0
/* 80675DB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80675DBC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80675DC0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80675DC4  7C 7E 1B 78 */	mr r30, r3
/* 80675DC8  3C 60 80 67 */	lis r3, l_staff_name@ha
/* 80675DCC  3B E3 75 58 */	addi r31, r3, l_staff_name@l
/* 80675DD0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80675DD4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80675DD8  38 61 00 08 */	addi r3, r1, 8
/* 80675DDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80675DE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80675DE4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80675DE8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80675DEC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80675DF0  4B BF 0D 44 */	b __mi__4cXyzCFRC3Vec
/* 80675DF4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80675DF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80675DFC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80675E00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80675E04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80675E08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80675E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675E10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675E14  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80675E18  7C 00 00 D0 */	neg r0, r0
/* 80675E1C  7C 04 07 34 */	extsh r4, r0
/* 80675E20  4B 99 65 BC */	b mDoMtx_YrotS__FPA4_fs
/* 80675E24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675E28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675E2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80675E30  7C 85 23 78 */	mr r5, r4
/* 80675E34  4B CD 0F 38 */	b PSMTXMultVec
/* 80675E38  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80675E3C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80675E40  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80675E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80675E48  40 81 00 08 */	ble lbl_80675E50
/* 80675E4C  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80675E50:
/* 80675E50  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80675E54  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80675E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80675E5C  40 80 00 08 */	bge lbl_80675E64
/* 80675E60  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80675E64:
/* 80675E64  88 1E 05 DF */	lbz r0, 0x5df(r30)
/* 80675E68  28 00 00 00 */	cmplwi r0, 0
/* 80675E6C  40 82 00 10 */	bne lbl_80675E7C
/* 80675E70  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80675E74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80675E78  48 00 00 0C */	b lbl_80675E84
lbl_80675E7C:
/* 80675E7C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80675E80  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80675E84:
/* 80675E84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675E88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675E8C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80675E90  4B 99 65 4C */	b mDoMtx_YrotS__FPA4_fs
/* 80675E94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675E98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675E9C  38 81 00 20 */	addi r4, r1, 0x20
/* 80675EA0  7C 85 23 78 */	mr r5, r4
/* 80675EA4  4B CD 0E C8 */	b PSMTXMultVec
/* 80675EA8  38 61 00 20 */	addi r3, r1, 0x20
/* 80675EAC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80675EB0  7C 65 1B 78 */	mr r5, r3
/* 80675EB4  4B CD 11 DC */	b PSVECAdd
/* 80675EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80675EBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80675EC0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80675EC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80675EC8  4B 9D 24 FC */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80675ECC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80675ED0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80675ED4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80675ED8  7C 08 03 A6 */	mtlr r0
/* 80675EDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80675EE0  4E 80 00 20 */	blr 
