lbl_80465960:
/* 80465960  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80465964  7C 08 02 A6 */	mflr r0
/* 80465968  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046596C  39 61 00 40 */	addi r11, r1, 0x40
/* 80465970  4B EF C8 6C */	b _savegpr_29
/* 80465974  7C 7D 1B 78 */	mr r29, r3
/* 80465978  3C 60 80 46 */	lis r3, lit_4018@ha
/* 8046597C  3B E3 68 20 */	addi r31, r3, lit_4018@l
/* 80465980  38 61 00 08 */	addi r3, r1, 8
/* 80465984  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80465988  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8046598C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80465990  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80465994  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80465998  4B E0 11 9C */	b __mi__4cXyzCFRC3Vec
/* 8046599C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804659A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804659A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804659A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804659AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804659B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804659B4  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 804659B8  7C 1E 03 78 */	mr r30, r0
/* 804659BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804659C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804659C4  7C 00 00 D0 */	neg r0, r0
/* 804659C8  7C 04 07 34 */	extsh r4, r0
/* 804659CC  4B BA 6A 10 */	b mDoMtx_YrotS__FPA4_fs
/* 804659D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804659D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804659D8  38 81 00 20 */	addi r4, r1, 0x20
/* 804659DC  7C 85 23 78 */	mr r5, r4
/* 804659E0  4B EE 13 8C */	b PSMTXMultVec
/* 804659E4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804659E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804659EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804659F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804659F4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804659F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804659FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465A04  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80465A08  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80465A0C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80465A10  41 82 00 10 */	beq lbl_80465A20
/* 80465A14  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80465A18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80465A1C  48 00 00 0C */	b lbl_80465A28
lbl_80465A20:
/* 80465A20  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80465A24  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80465A28:
/* 80465A28  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 80465A2C  28 00 00 01 */	cmplwi r0, 1
/* 80465A30  40 82 00 10 */	bne lbl_80465A40
/* 80465A34  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80465A38  FC 00 00 50 */	fneg f0, f0
/* 80465A3C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80465A40:
/* 80465A40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80465A44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80465A48  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80465A4C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80465A50  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80465A54  4B EE 0E 94 */	b PSMTXTrans
/* 80465A58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80465A5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80465A60  7F C4 F3 78 */	mr r4, r30
/* 80465A64  4B BA 69 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80465A68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80465A6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80465A70  38 81 00 20 */	addi r4, r1, 0x20
/* 80465A74  7C 85 23 78 */	mr r5, r4
/* 80465A78  4B EE 12 F4 */	b PSMTXMultVec
/* 80465A7C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80465A80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80465A84  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80465A88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80465A8C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80465A90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80465A94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465A98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465A9C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80465AA0  38 81 00 14 */	addi r4, r1, 0x14
/* 80465AA4  4B BE 29 20 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80465AA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80465AAC  4B EF C7 7C */	b _restgpr_29
/* 80465AB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80465AB4  7C 08 03 A6 */	mtlr r0
/* 80465AB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80465ABC  4E 80 00 20 */	blr 
