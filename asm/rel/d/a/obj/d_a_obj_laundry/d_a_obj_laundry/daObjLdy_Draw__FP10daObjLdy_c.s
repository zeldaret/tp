lbl_80C51AE0:
/* 80C51AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51AE4  7C 08 02 A6 */	mflr r0
/* 80C51AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51AF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C51AF4  7C 7E 1B 78 */	mr r30, r3
/* 80C51AF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C51AFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C51B00  38 80 00 10 */	li r4, 0x10
/* 80C51B04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C51B08  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C51B0C  4B 55 1C B8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C51B10  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C51B14  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C51B18  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C51B1C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C51B20  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C51B24  4B 55 32 7C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C51B28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C51B2C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C51B30  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C51B34  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C51B38  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C51B3C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C51B40  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C51B44  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C51B48  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C51B4C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C51B50  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80C51B54  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C51B58  38 84 00 58 */	addi r4, r4, 0x58
/* 80C51B5C  4B 3B BB 7C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C51B60  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C51B64  4B 3B C1 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C51B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C51B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C51B70  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C51B74  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C51B78  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C51B7C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C51B80  38 60 00 01 */	li r3, 1
/* 80C51B84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51B88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C51B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51B90  7C 08 03 A6 */	mtlr r0
/* 80C51B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51B98  4E 80 00 20 */	blr 
