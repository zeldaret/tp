lbl_80C605F8:
/* 80C605F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C605FC  7C 08 02 A6 */	mflr r0
/* 80C60600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60608  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6060C  7C 7E 1B 78 */	mr r30, r3
/* 80C60610  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C60614  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C60618  38 80 00 10 */	li r4, 0x10
/* 80C6061C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C60620  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C60624  4B 54 31 A0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C60628  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C6062C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C60630  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C60634  80 84 00 04 */	lwz r4, 4(r4)
/* 80C60638  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C6063C  4B 54 47 64 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C60640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C60644  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C60648  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C6064C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C60650  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C60654  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C60658  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C6065C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C60660  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C60664  4B 3A D6 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C60668  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6066C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C60670  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C60674  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C60678  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C6067C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C60680  38 60 00 01 */	li r3, 1
/* 80C60684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60688  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6068C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60690  7C 08 03 A6 */	mtlr r0
/* 80C60694  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60698  4E 80 00 20 */	blr 
