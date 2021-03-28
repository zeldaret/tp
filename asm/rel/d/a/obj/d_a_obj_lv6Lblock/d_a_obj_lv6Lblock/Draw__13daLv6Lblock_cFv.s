lbl_80C73AB0:
/* 80C73AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73AB4  7C 08 02 A6 */	mflr r0
/* 80C73AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73AC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C73AC4  7C 7E 1B 78 */	mr r30, r3
/* 80C73AC8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C73ACC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C73AD0  38 80 00 10 */	li r4, 0x10
/* 80C73AD4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C73AD8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C73ADC  4B 52 FC E8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C73AE0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C73AE4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C73AE8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C73AEC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C73AF0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C73AF4  4B 53 12 AC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C73AF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C73AFC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C73B00  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C73B04  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C73B08  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C73B0C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C73B10  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C73B14  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C73B18  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C73B1C  4B 39 A1 A8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C73B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C73B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C73B28  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C73B2C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C73B30  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C73B34  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C73B38  38 60 00 01 */	li r3, 1
/* 80C73B3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73B40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C73B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73B48  7C 08 03 A6 */	mtlr r0
/* 80C73B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73B50  4E 80 00 20 */	blr 
