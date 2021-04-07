lbl_80C1D808:
/* 80C1D808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C1D80C  7C 08 02 A6 */	mflr r0
/* 80C1D810  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C1D814  39 61 00 30 */	addi r11, r1, 0x30
/* 80C1D818  4B 74 49 C5 */	bl _savegpr_29
/* 80C1D81C  7C 7F 1B 78 */	mr r31, r3
/* 80C1D820  3C 60 80 C2 */	lis r3, lit_3647@ha /* 0x80C1DA94@ha */
/* 80C1D824  3B A3 DA 94 */	addi r29, r3, lit_3647@l /* 0x80C1DA94@l */
/* 80C1D828  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1D82C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C1D830  38 80 00 10 */	li r4, 0x10
/* 80C1D834  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C1D838  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C1D83C  4B 58 5F 89 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C1D840  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1D844  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C1D848  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C1D84C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C1D850  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C1D854  4B 58 75 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C1D858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1D85C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1D860  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C1D864  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C1D868  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C1D86C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C1D870  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C1D874  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C1D878  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1D87C  4B 3F 04 49 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C1D880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1D884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1D888  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C1D88C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C1D890  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C1D894  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C1D898  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80C1D89C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80C1D8A0  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80C1D8A4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C1D8A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1D8AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C1D8B0  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80C1D8B4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C1D8B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C1D8BC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80C1D8C0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C1D8C4  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 80C1D8C8  38 80 00 01 */	li r4, 1
/* 80C1D8CC  80 BF 05 A8 */	lwz r5, 0x5a8(r31)
/* 80C1D8D0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80C1D8D4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80C1D8D8  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 80C1D8DC  C0 9F 06 B8 */	lfs f4, 0x6b8(r31)
/* 80C1D8E0  38 FF 07 10 */	addi r7, r31, 0x710
/* 80C1D8E4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C1D8E8  39 20 00 00 */	li r9, 0
/* 80C1D8EC  C0 BD 00 28 */	lfs f5, 0x28(r29)
/* 80C1D8F0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80C1D8F4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80C1D8F8  4B 41 10 19 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C1D8FC  90 7F 07 F8 */	stw r3, 0x7f8(r31)
/* 80C1D900  38 60 00 01 */	li r3, 1
/* 80C1D904  39 61 00 30 */	addi r11, r1, 0x30
/* 80C1D908  4B 74 49 21 */	bl _restgpr_29
/* 80C1D90C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C1D910  7C 08 03 A6 */	mtlr r0
/* 80C1D914  38 21 00 30 */	addi r1, r1, 0x30
/* 80C1D918  4E 80 00 20 */	blr 
