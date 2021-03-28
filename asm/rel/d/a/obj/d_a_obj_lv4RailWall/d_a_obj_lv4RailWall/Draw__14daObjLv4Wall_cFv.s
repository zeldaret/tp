lbl_80C6143C:
/* 80C6143C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61440  7C 08 02 A6 */	mflr r0
/* 80C61444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6144C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C61450  7C 7E 1B 78 */	mr r30, r3
/* 80C61454  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C61458  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C6145C  38 80 00 10 */	li r4, 0x10
/* 80C61460  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C61464  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C61468  4B 54 23 5C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C6146C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C61470  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C61474  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C61478  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6147C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C61480  4B 54 39 20 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C61484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C61488  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C6148C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C61490  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C61494  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C61498  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6149C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C614A0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C614A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C614A8  4B 3A C8 1C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C614AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C614B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C614B4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C614B8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C614BC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C614C0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C614C4  38 60 00 01 */	li r3, 1
/* 80C614C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C614CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C614D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C614D4  7C 08 03 A6 */	mtlr r0
/* 80C614D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C614DC  4E 80 00 20 */	blr 
