lbl_80C5F1E8:
/* 80C5F1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F1EC  7C 08 02 A6 */	mflr r0
/* 80C5F1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F1F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5F1FC  7C 7E 1B 78 */	mr r30, r3
/* 80C5F200  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5F204  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5F208  38 80 00 10 */	li r4, 0x10
/* 80C5F20C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C5F210  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C5F214  4B 54 45 B0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5F218  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5F21C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5F220  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C5F224  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5F228  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C5F22C  4B 54 5B 74 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5F230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5F234  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C5F238  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C5F23C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C5F240  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C5F244  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5F248  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C5F24C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5F250  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C5F254  4B 3A EA 70 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5F258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5F25C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5F260  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C5F264  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5F268  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C5F26C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5F270  38 60 00 01 */	li r3, 1
/* 80C5F274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F278  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5F27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F280  7C 08 03 A6 */	mtlr r0
/* 80C5F284  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F288  4E 80 00 20 */	blr 
