lbl_80C8E450:
/* 80C8E450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E454  7C 08 02 A6 */	mflr r0
/* 80C8E458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E460  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8E464  7C 7E 1B 78 */	mr r30, r3
/* 80C8E468  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8E46C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C8E470  38 80 00 40 */	li r4, 0x40
/* 80C8E474  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8E478  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C8E47C  4B 51 53 48 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C8E480  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8E484  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C8E488  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C8E48C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C8E490  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C8E494  4B 51 69 0C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8E498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8E49C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C8E4A0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C8E4A4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C8E4A8  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C8E4AC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C8E4B0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C8E4B4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C8E4B8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8E4BC  4B 37 F8 08 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C8E4C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8E4C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C8E4C8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C8E4CC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C8E4D0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C8E4D4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C8E4D8  38 60 00 01 */	li r3, 1
/* 80C8E4DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8E4E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8E4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E4E8  7C 08 03 A6 */	mtlr r0
/* 80C8E4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E4F0  4E 80 00 20 */	blr 
