lbl_80BBA644:
/* 80BBA644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA648  7C 08 02 A6 */	mflr r0
/* 80BBA64C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBA654  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBA658  7C 7E 1B 78 */	mr r30, r3
/* 80BBA65C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BBA660  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BBA664  38 80 00 10 */	li r4, 0x10
/* 80BBA668  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BBA66C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BBA670  4B 5E 91 54 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BBA674  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BBA678  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BBA67C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BBA680  80 84 00 04 */	lwz r4, 4(r4)
/* 80BBA684  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BBA688  4B 5E A7 18 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BBA68C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BBA690  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BBA694  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BBA698  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BBA69C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BBA6A0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BBA6A4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BBA6A8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BBA6AC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BBA6B0  4B 45 36 14 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BBA6B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BBA6B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BBA6BC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BBA6C0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BBA6C4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BBA6C8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BBA6CC  38 60 00 01 */	li r3, 1
/* 80BBA6D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBA6D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBA6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA6DC  7C 08 03 A6 */	mtlr r0
/* 80BBA6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA6E4  4E 80 00 20 */	blr 
