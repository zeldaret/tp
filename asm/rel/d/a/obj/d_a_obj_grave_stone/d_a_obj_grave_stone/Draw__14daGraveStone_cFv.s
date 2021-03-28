lbl_80C13078:
/* 80C13078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1307C  7C 08 02 A6 */	mflr r0
/* 80C13080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C13088  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1308C  7C 7E 1B 78 */	mr r30, r3
/* 80C13090  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C13094  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C13098  38 80 00 10 */	li r4, 0x10
/* 80C1309C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C130A0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C130A4  4B 59 07 20 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C130A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C130AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C130B0  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C130B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C130B8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C130BC  4B 59 1C E4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C130C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C130C4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C130C8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C130CC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C130D0  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C130D4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C130D8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C130DC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C130E0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C130E4  4B 3F AB E0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C130E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C130EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C130F0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C130F4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C130F8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C130FC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C13100  38 60 00 01 */	li r3, 1
/* 80C13104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C13108  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1310C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C13110  7C 08 03 A6 */	mtlr r0
/* 80C13114  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13118  4E 80 00 20 */	blr 
