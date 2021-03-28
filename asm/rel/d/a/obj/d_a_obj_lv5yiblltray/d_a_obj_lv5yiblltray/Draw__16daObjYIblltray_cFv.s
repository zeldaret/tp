lbl_80C70330:
/* 80C70330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70334  7C 08 02 A6 */	mflr r0
/* 80C70338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7033C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70340  93 C1 00 08 */	stw r30, 8(r1)
/* 80C70344  7C 7E 1B 78 */	mr r30, r3
/* 80C70348  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C7034C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C70350  38 80 00 10 */	li r4, 0x10
/* 80C70354  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C70358  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C7035C  4B 53 34 68 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C70360  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C70364  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C70368  80 9E 06 20 */	lwz r4, 0x620(r30)
/* 80C7036C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C70370  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C70374  4B 53 4A 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C70378  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C7037C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C70380  80 9E 0A 34 */	lwz r4, 0xa34(r30)
/* 80C70384  80 84 00 04 */	lwz r4, 4(r4)
/* 80C70388  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C7038C  4B 53 4A 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C70390  80 7E 0A 34 */	lwz r3, 0xa34(r30)
/* 80C70394  80 83 00 04 */	lwz r4, 4(r3)
/* 80C70398  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80C7039C  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
/* 80C703A0  4B 39 D6 2C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C703A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C703A8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C703AC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C703B0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C703B4  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C703B8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C703BC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C703C0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C703C4  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80C703C8  4B 39 D8 FC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C703CC  80 7E 0A 34 */	lwz r3, 0xa34(r30)
/* 80C703D0  4B 39 D8 F4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C703D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C703D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C703DC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C703E0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C703E4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C703E8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C703EC  38 60 00 01 */	li r3, 1
/* 80C703F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C703F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C703F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C703FC  7C 08 03 A6 */	mtlr r0
/* 80C70400  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70404  4E 80 00 20 */	blr 
