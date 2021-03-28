lbl_80CE4AA0:
/* 80CE4AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4AA4  7C 08 02 A6 */	mflr r0
/* 80CE4AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE4AB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE4AB4  7C 7E 1B 78 */	mr r30, r3
/* 80CE4AB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE4ABC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE4AC0  38 80 00 40 */	li r4, 0x40
/* 80CE4AC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CE4AC8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CE4ACC  4B 4B EC F8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CE4AD0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE4AD4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE4AD8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CE4ADC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE4AE0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CE4AE4  4B 4C 02 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE4AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE4AEC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CE4AF0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CE4AF4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CE4AF8  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CE4AFC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CE4B00  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CE4B04  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CE4B08  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CE4B0C  4B 32 91 B8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CE4B10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE4B14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE4B18  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CE4B1C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CE4B20  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CE4B24  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CE4B28  38 60 00 01 */	li r3, 1
/* 80CE4B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE4B30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE4B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4B38  7C 08 03 A6 */	mtlr r0
/* 80CE4B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4B40  4E 80 00 20 */	blr 
