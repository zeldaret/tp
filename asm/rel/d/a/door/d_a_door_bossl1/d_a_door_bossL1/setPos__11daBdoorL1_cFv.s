lbl_804E3CCC:
/* 804E3CCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E3CD0  7C 08 02 A6 */	mflr r0
/* 804E3CD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E3CD8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804E3CDC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804E3CE0  7C 7E 1B 78 */	mr r30, r3
/* 804E3CE4  3C 60 80 4E */	lis r3, l_staff_name@ha
/* 804E3CE8  3B E3 4A 14 */	addi r31, r3, l_staff_name@l
/* 804E3CEC  38 61 00 08 */	addi r3, r1, 8
/* 804E3CF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804E3CF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804E3CF8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804E3CFC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 804E3D00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E3D04  4B D8 2E 30 */	b __mi__4cXyzCFRC3Vec
/* 804E3D08  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E3D0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E3D10  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E3D14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E3D18  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E3D1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E3D20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804E3D24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804E3D28  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E3D2C  7C 00 00 D0 */	neg r0, r0
/* 804E3D30  7C 04 07 34 */	extsh r4, r0
/* 804E3D34  4B B2 86 A8 */	b mDoMtx_YrotS__FPA4_fs
/* 804E3D38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804E3D3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804E3D40  38 81 00 14 */	addi r4, r1, 0x14
/* 804E3D44  7C 85 23 78 */	mr r5, r4
/* 804E3D48  4B E6 30 24 */	b PSMTXMultVec
/* 804E3D4C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804E3D50  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804E3D54  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 804E3D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E3D5C  40 81 00 08 */	ble lbl_804E3D64
/* 804E3D60  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_804E3D64:
/* 804E3D64  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804E3D68  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 804E3D6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E3D70  40 80 00 08 */	bge lbl_804E3D78
/* 804E3D74  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_804E3D78:
/* 804E3D78  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804E3D7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E3D80  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 804E3D84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E3D88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804E3D8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804E3D90  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 804E3D94  4B B2 86 48 */	b mDoMtx_YrotS__FPA4_fs
/* 804E3D98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804E3D9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804E3DA0  38 81 00 20 */	addi r4, r1, 0x20
/* 804E3DA4  7C 85 23 78 */	mr r5, r4
/* 804E3DA8  4B E6 2F C4 */	b PSMTXMultVec
/* 804E3DAC  38 61 00 20 */	addi r3, r1, 0x20
/* 804E3DB0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804E3DB4  7C 65 1B 78 */	mr r5, r3
/* 804E3DB8  4B E6 32 D8 */	b PSVECAdd
/* 804E3DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E3DC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E3DC4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804E3DC8  38 81 00 20 */	addi r4, r1, 0x20
/* 804E3DCC  4B B6 45 F8 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 804E3DD0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804E3DD4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804E3DD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E3DDC  7C 08 03 A6 */	mtlr r0
/* 804E3DE0  38 21 00 40 */	addi r1, r1, 0x40
/* 804E3DE4  4E 80 00 20 */	blr 
