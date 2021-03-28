lbl_80C1ECC4:
/* 80C1ECC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1ECC8  7C 08 02 A6 */	mflr r0
/* 80C1ECCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1ECD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1ECD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1ECD8  7C 7E 1B 78 */	mr r30, r3
/* 80C1ECDC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C1ECE0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C1ECE4  38 80 00 10 */	li r4, 0x10
/* 80C1ECE8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1ECEC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C1ECF0  4B 58 4A D4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C1ECF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C1ECF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C1ECFC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C1ED00  80 84 00 04 */	lwz r4, 4(r4)
/* 80C1ED04  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C1ED08  4B 58 60 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C1ED0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1ED10  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C1ED14  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C1ED18  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C1ED1C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C1ED20  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C1ED24  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C1ED28  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C1ED2C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C1ED30  4B 3E EF 94 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C1ED34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1ED38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1ED3C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C1ED40  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C1ED44  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C1ED48  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C1ED4C  38 60 00 01 */	li r3, 1
/* 80C1ED50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1ED54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1ED58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1ED5C  7C 08 03 A6 */	mtlr r0
/* 80C1ED60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1ED64  4E 80 00 20 */	blr 
