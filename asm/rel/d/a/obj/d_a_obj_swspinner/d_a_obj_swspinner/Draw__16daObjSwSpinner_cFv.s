lbl_80D00890:
/* 80D00890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00894  7C 08 02 A6 */	mflr r0
/* 80D00898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0089C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D008A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D008A4  7C 7E 1B 78 */	mr r30, r3
/* 80D008A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D008AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D008B0  38 80 00 10 */	li r4, 0x10
/* 80D008B4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D008B8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D008BC  4B 4A 2F 08 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D008C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D008C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D008C8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D008CC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D008D0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D008D4  4B 4A 44 CC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D008D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D008DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D008E0  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80D008E4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D008E8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D008EC  4B 4A 44 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D008F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D008F4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D008F8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D008FC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D00900  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D00904  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D00908  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D0090C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D00910  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D00914  4B 30 D3 B0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D00918  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80D0091C  4B 30 D3 A8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D00920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D00924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D00928  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D0092C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D00930  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D00934  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D00938  38 60 00 01 */	li r3, 1
/* 80D0093C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00940  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D00944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00948  7C 08 03 A6 */	mtlr r0
/* 80D0094C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00950  4E 80 00 20 */	blr 
