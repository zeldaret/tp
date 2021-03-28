lbl_80BCCA48:
/* 80BCCA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCA4C  7C 08 02 A6 */	mflr r0
/* 80BCCA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCCA58  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCCA5C  7C 7E 1B 78 */	mr r30, r3
/* 80BCCA60  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BCCA64  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BCCA68  38 80 00 10 */	li r4, 0x10
/* 80BCCA6C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BCCA70  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BCCA74  4B 5D 6D 50 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BCCA78  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BCCA7C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BCCA80  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BCCA84  80 84 00 04 */	lwz r4, 4(r4)
/* 80BCCA88  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BCCA8C  4B 5D 83 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BCCA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCCA94  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BCCA98  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BCCA9C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BCCAA0  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BCCAA4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BCCAA8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BCCAAC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BCCAB0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BCCAB4  4B 44 12 10 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BCCAB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCCABC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCCAC0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BCCAC4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BCCAC8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BCCACC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BCCAD0  38 60 00 01 */	li r3, 1
/* 80BCCAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCCAD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCCADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCAE0  7C 08 03 A6 */	mtlr r0
/* 80BCCAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCAE8  4E 80 00 20 */	blr 
