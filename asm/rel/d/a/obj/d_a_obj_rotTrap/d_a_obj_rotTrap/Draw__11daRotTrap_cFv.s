lbl_80CC0548:
/* 80CC0548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC054C  7C 08 02 A6 */	mflr r0
/* 80CC0550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC0558  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC055C  7C 7E 1B 78 */	mr r30, r3
/* 80CC0560  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CC0564  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CC0568  38 80 00 10 */	li r4, 0x10
/* 80CC056C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC0570  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CC0574  4B 4E 32 50 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CC0578  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CC057C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CC0580  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CC0584  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC0588  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CC058C  4B 4E 48 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC0590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC0594  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CC0598  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CC059C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CC05A0  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CC05A4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC05A8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CC05AC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC05B0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CC05B4  4B 34 D7 10 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC05B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC05BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC05C0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CC05C4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC05C8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CC05CC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC05D0  38 60 00 01 */	li r3, 1
/* 80CC05D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC05D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC05DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC05E0  7C 08 03 A6 */	mtlr r0
/* 80CC05E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC05E8  4E 80 00 20 */	blr 
