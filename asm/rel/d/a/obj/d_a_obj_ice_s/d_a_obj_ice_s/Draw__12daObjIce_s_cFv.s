lbl_80C21964:
/* 80C21964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21968  7C 08 02 A6 */	mflr r0
/* 80C2196C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C21974  93 C1 00 08 */	stw r30, 8(r1)
/* 80C21978  7C 7E 1B 78 */	mr r30, r3
/* 80C2197C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C21980  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C21984  38 80 00 10 */	li r4, 0x10
/* 80C21988  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C2198C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C21990  4B 58 1E 34 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C21994  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C21998  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C2199C  80 9E 06 34 */	lwz r4, 0x634(r30)
/* 80C219A0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C219A4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C219A8  4B 58 33 F8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C219AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C219B0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C219B4  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80C219B8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C219BC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C219C0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C219C4  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80C219C8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C219CC  80 7E 06 34 */	lwz r3, 0x634(r30)
/* 80C219D0  4B 3E C2 F4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C219D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C219D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C219DC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C219E0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C219E4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C219E8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C219EC  38 60 00 01 */	li r3, 1
/* 80C219F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C219F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C219F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C219FC  7C 08 03 A6 */	mtlr r0
/* 80C21A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21A04  4E 80 00 20 */	blr 
