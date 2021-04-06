lbl_80D06AD8:
/* 80D06AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D06ADC  7C 08 02 A6 */	mflr r0
/* 80D06AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D06AE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D06AE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D06AEC  7C 7F 1B 78 */	mr r31, r3
/* 80D06AF0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D06AF4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D06AF8  38 80 00 10 */	li r4, 0x10
/* 80D06AFC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D06B00  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D06B04  4B 49 CC C1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D06B08  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D06B0C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D06B10  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 80D06B14  80 84 00 04 */	lwz r4, 4(r4)
/* 80D06B18  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D06B1C  4B 49 E2 85 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D06B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D06B24  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D06B28  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D06B2C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D06B30  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D06B34  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D06B38  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D06B3C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D06B40  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D06B44  4B 30 71 81 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D06B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D06B4C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D06B50  80 05 5F 80 */	lwz r0, 0x5f80(r5)
/* 80D06B54  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D06B58  80 05 5F 84 */	lwz r0, 0x5f84(r5)
/* 80D06B5C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D06B60  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D06B64  3C 60 80 D0 */	lis r3, lit_4017@ha /* 0x80D06C04@ha */
/* 80D06B68  C0 03 6C 04 */	lfs f0, lit_4017@l(r3)  /* 0x80D06C04@l */
/* 80D06B6C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D06B70  EC 20 10 2A */	fadds f1, f0, f2
/* 80D06B74  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D06B78  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D06B7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D06B80  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80D06B84  80 9F 05 F8 */	lwz r4, 0x5f8(r31)
/* 80D06B88  38 65 61 C0 */	addi r3, r5, 0x61c0
/* 80D06B8C  38 A0 00 01 */	li r5, 1
/* 80D06B90  80 DF 05 A0 */	lwz r6, 0x5a0(r31)
/* 80D06B94  38 E1 00 08 */	addi r7, r1, 8
/* 80D06B98  3D 00 80 D0 */	lis r8, lit_4077@ha /* 0x80D06C08@ha */
/* 80D06B9C  C0 28 6C 08 */	lfs f1, lit_4077@l(r8)  /* 0x80D06C08@l */
/* 80D06BA0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D06BA4  4B 34 F0 D1 */	bl setReal__21dDlst_shadowControl_cFUlScP8J3DModelP4cXyzffP12dKy_tevstr_c
/* 80D06BA8  90 7F 05 F8 */	stw r3, 0x5f8(r31)
/* 80D06BAC  38 60 00 01 */	li r3, 1
/* 80D06BB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D06BB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D06BB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D06BBC  7C 08 03 A6 */	mtlr r0
/* 80D06BC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D06BC4  4E 80 00 20 */	blr 
