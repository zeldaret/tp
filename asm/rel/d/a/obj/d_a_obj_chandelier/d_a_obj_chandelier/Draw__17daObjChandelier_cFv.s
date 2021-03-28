lbl_80BC8194:
/* 80BC8194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8198  7C 08 02 A6 */	mflr r0
/* 80BC819C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC81A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC81A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC81A8  7C 7E 1B 78 */	mr r30, r3
/* 80BC81AC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BC81B0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BC81B4  38 80 00 10 */	li r4, 0x10
/* 80BC81B8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC81BC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BC81C0  4B 5D B6 04 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BC81C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BC81C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BC81CC  80 9E 05 E8 */	lwz r4, 0x5e8(r30)
/* 80BC81D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BC81D4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BC81D8  4B 5D CB C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BC81DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC81E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BC81E4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BC81E8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BC81EC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BC81F0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC81F4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BC81F8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC81FC  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80BC8200  4B 44 5A C4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BC8204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC8208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC820C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BC8210  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BC8214  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BC8218  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BC821C  38 60 00 01 */	li r3, 1
/* 80BC8220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC8224  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC8228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC822C  7C 08 03 A6 */	mtlr r0
/* 80BC8230  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8234  4E 80 00 20 */	blr 
