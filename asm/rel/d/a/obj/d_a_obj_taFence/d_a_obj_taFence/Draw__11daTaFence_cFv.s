lbl_80D05E58:
/* 80D05E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05E5C  7C 08 02 A6 */	mflr r0
/* 80D05E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D05E68  93 C1 00 08 */	stw r30, 8(r1)
/* 80D05E6C  7C 7E 1B 78 */	mr r30, r3
/* 80D05E70  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D05E74  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D05E78  38 80 00 10 */	li r4, 0x10
/* 80D05E7C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D05E80  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D05E84  4B 49 D9 40 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D05E88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D05E8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D05E90  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D05E94  80 84 00 04 */	lwz r4, 4(r4)
/* 80D05E98  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D05E9C  4B 49 EF 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D05EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05EA4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D05EA8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D05EAC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D05EB0  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D05EB4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D05EB8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D05EBC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D05EC0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D05EC4  4B 30 7E 00 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D05EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05ED0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D05ED4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D05ED8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D05EDC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D05EE0  38 60 00 01 */	li r3, 1
/* 80D05EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D05EE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D05EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05EF0  7C 08 03 A6 */	mtlr r0
/* 80D05EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05EF8  4E 80 00 20 */	blr 
