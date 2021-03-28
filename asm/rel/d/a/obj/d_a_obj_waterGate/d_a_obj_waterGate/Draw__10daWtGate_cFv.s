lbl_80D2C260:
/* 80D2C260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C264  7C 08 02 A6 */	mflr r0
/* 80D2C268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C26C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2C270  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2C274  7C 7E 1B 78 */	mr r30, r3
/* 80D2C278  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D2C27C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D2C280  38 80 00 10 */	li r4, 0x10
/* 80D2C284  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D2C288  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D2C28C  4B 47 75 38 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D2C290  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D2C294  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D2C298  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D2C29C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D2C2A0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D2C2A4  4B 47 8A FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D2C2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2C2AC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D2C2B0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D2C2B4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D2C2B8  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D2C2BC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D2C2C0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D2C2C4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2C2C8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D2C2CC  4B 2E 19 F8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D2C2D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2C2D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2C2D8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D2C2DC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D2C2E0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D2C2E4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2C2E8  38 60 00 01 */	li r3, 1
/* 80D2C2EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2C2F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2C2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C2F8  7C 08 03 A6 */	mtlr r0
/* 80D2C2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C300  4E 80 00 20 */	blr 
