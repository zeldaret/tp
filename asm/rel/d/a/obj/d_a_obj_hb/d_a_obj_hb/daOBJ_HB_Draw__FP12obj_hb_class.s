lbl_80C195B8:
/* 80C195B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C195BC  7C 08 02 A6 */	mflr r0
/* 80C195C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C195C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C195C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C195CC  7C 7E 1B 78 */	mr r30, r3
/* 80C195D0  3C 60 80 C2 */	lis r3, lit_3665@ha
/* 80C195D4  3B E3 B6 00 */	addi r31, r3, lit_3665@l
/* 80C195D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C195DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C195E0  38 80 00 00 */	li r4, 0
/* 80C195E4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C195E8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C195EC  4B 58 A1 D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C195F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C195F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C195F8  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C195FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C19600  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C19604  4B 58 B7 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C19608  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C1960C  4B 3F 46 B8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C19610  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C19614  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C19618  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80C1961C  EC 20 18 2A */	fadds f1, f0, f3
/* 80C19620  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C19624  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C19628  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C1962C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C19630  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C19634  38 80 00 01 */	li r4, 1
/* 80C19638  80 BE 05 B8 */	lwz r5, 0x5b8(r30)
/* 80C1963C  38 C1 00 08 */	addi r6, r1, 8
/* 80C19640  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C19644  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C19648  C0 9E 07 90 */	lfs f4, 0x790(r30)
/* 80C1964C  38 FE 07 E8 */	addi r7, r30, 0x7e8
/* 80C19650  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C19654  39 20 00 00 */	li r9, 0
/* 80C19658  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 80C1965C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C19660  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C19664  4B 41 52 AC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C19668  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80C1966C  38 60 00 01 */	li r3, 1
/* 80C19670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C19674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C19678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1967C  7C 08 03 A6 */	mtlr r0
/* 80C19680  38 21 00 20 */	addi r1, r1, 0x20
/* 80C19684  4E 80 00 20 */	blr 
