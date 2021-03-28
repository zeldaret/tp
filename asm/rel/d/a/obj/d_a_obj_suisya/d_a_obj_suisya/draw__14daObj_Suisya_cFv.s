lbl_80CF0078:
/* 80CF0078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF007C  7C 08 02 A6 */	mflr r0
/* 80CF0080  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF0084  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF0088  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CF008C  7C 7E 1B 78 */	mr r30, r3
/* 80CF0090  3C 60 80 CF */	lis r3, lit_3662@ha
/* 80CF0094  3B E3 05 20 */	addi r31, r3, lit_3662@l
/* 80CF0098  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF009C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF00A0  38 80 00 10 */	li r4, 0x10
/* 80CF00A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CF00A8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CF00AC  4B 4B 37 18 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF00B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF00B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF00B8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80CF00BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF00C0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CF00C4  4B 4B 4C DC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF00C8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CF00CC  4B 31 DB F8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CF00D0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CF00D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF00D8  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80CF00DC  EC 20 18 2A */	fadds f1, f0, f3
/* 80CF00E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CF00E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CF00E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CF00EC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80CF00F0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CF00F4  38 80 00 01 */	li r4, 1
/* 80CF00F8  80 BE 05 70 */	lwz r5, 0x570(r30)
/* 80CF00FC  38 C1 00 08 */	addi r6, r1, 8
/* 80CF0100  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80CF0104  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80CF0108  C0 9E 06 50 */	lfs f4, 0x650(r30)
/* 80CF010C  38 FE 06 A8 */	addi r7, r30, 0x6a8
/* 80CF0110  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80CF0114  39 20 00 00 */	li r9, 0
/* 80CF0118  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 80CF011C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80CF0120  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80CF0124  4B 33 E7 EC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CF0128  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80CF012C  38 60 00 01 */	li r3, 1
/* 80CF0130  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF0134  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CF0138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF013C  7C 08 03 A6 */	mtlr r0
/* 80CF0140  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF0144  4E 80 00 20 */	blr 
