lbl_80BA7AE8:
/* 80BA7AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7AEC  7C 08 02 A6 */	mflr r0
/* 80BA7AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7AF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA7AF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA7AFC  7C 7E 1B 78 */	mr r30, r3
/* 80BA7B00  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BA7B04  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BA7B08  38 80 00 20 */	li r4, 0x20
/* 80BA7B0C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA7B10  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BA7B14  4B 5F BC B0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BA7B18  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BA7B1C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BA7B20  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BA7B24  80 84 00 04 */	lwz r4, 4(r4)
/* 80BA7B28  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BA7B2C  4B 5F D2 74 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BA7B30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA7B34  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BA7B38  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BA7B3C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BA7B40  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BA7B44  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BA7B48  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BA7B4C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BA7B50  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BA7B54  80 83 00 04 */	lwz r4, 4(r3)
/* 80BA7B58  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80BA7B5C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BA7B60  4B 46 5E 6C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80BA7B64  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BA7B68  4B 46 61 5C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BA7B6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA7B70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA7B74  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BA7B78  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BA7B7C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BA7B80  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BA7B84  38 60 00 01 */	li r3, 1
/* 80BA7B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA7B8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA7B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7B94  7C 08 03 A6 */	mtlr r0
/* 80BA7B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7B9C  4E 80 00 20 */	blr 
