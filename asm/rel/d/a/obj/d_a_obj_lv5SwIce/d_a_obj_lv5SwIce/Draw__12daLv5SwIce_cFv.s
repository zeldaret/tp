lbl_80C6D260:
/* 80C6D260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D264  7C 08 02 A6 */	mflr r0
/* 80C6D268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D26C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6D270  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6D274  7C 7E 1B 78 */	mr r30, r3
/* 80C6D278  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C6D27C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C6D280  38 80 00 10 */	li r4, 0x10
/* 80C6D284  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6D288  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C6D28C  4B 53 65 38 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C6D290  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C6D294  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C6D298  80 9E 07 20 */	lwz r4, 0x720(r30)
/* 80C6D29C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6D2A0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C6D2A4  4B 53 7A FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C6D2A8  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80C6D2AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6D2B0  7F C3 F3 78 */	mr r3, r30
/* 80C6D2B4  4B 3B 01 78 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C6D2B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D2BC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C6D2C0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C6D2C4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C6D2C8  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C6D2CC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6D2D0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C6D2D4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6D2D8  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 80C6D2DC  4B 3A 09 E8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6D2E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D2E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6D2E8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C6D2EC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6D2F0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C6D2F4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6D2F8  38 60 00 01 */	li r3, 1
/* 80C6D2FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6D300  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6D304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D308  7C 08 03 A6 */	mtlr r0
/* 80C6D30C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D310  4E 80 00 20 */	blr 
