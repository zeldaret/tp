lbl_80CC4318:
/* 80CC4318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC431C  7C 08 02 A6 */	mflr r0
/* 80CC4320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4328  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC432C  7C 7E 1B 78 */	mr r30, r3
/* 80CC4330  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CC4334  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CC4338  38 80 00 10 */	li r4, 0x10
/* 80CC433C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC4340  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CC4344  4B 4D F4 80 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CC4348  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CC434C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CC4350  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CC4354  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC4358  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CC435C  4B 4E 0A 44 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC4360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC4364  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CC4368  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CC436C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CC4370  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CC4374  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC4378  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CC437C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC4380  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CC4384  4B 34 99 40 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC4388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC438C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC4390  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CC4394  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC4398  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CC439C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC43A0  38 60 00 01 */	li r3, 1
/* 80CC43A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC43A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC43AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC43B0  7C 08 03 A6 */	mtlr r0
/* 80CC43B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC43B8  4E 80 00 20 */	blr 
