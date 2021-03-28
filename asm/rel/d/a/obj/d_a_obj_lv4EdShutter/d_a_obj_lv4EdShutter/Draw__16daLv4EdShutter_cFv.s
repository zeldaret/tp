lbl_80C5E5CC:
/* 80C5E5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E5D0  7C 08 02 A6 */	mflr r0
/* 80C5E5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E5DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5E5E0  7C 7E 1B 78 */	mr r30, r3
/* 80C5E5E4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5E5E8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5E5EC  38 80 00 10 */	li r4, 0x10
/* 80C5E5F0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C5E5F4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C5E5F8  4B 54 51 CC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5E5FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5E600  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5E604  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80C5E608  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5E60C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C5E610  4B 54 67 90 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5E614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5E618  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C5E61C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C5E620  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C5E624  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C5E628  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5E62C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C5E630  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5E634  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5E638  4B 3A F6 8C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5E63C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5E640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5E644  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C5E648  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5E64C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C5E650  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5E654  38 60 00 01 */	li r3, 1
/* 80C5E658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E65C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5E660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E664  7C 08 03 A6 */	mtlr r0
/* 80C5E668  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E66C  4E 80 00 20 */	blr 
