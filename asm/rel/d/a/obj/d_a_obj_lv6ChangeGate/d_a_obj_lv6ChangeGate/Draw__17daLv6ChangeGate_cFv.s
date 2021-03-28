lbl_80C71D40:
/* 80C71D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71D44  7C 08 02 A6 */	mflr r0
/* 80C71D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C71D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80C71D54  7C 7E 1B 78 */	mr r30, r3
/* 80C71D58  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C71D5C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C71D60  38 80 00 10 */	li r4, 0x10
/* 80C71D64  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C71D68  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C71D6C  4B 53 1A 58 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C71D70  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C71D74  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C71D78  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80C71D7C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C71D80  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C71D84  4B 53 30 1C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C71D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C71D8C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C71D90  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C71D94  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C71D98  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C71D9C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C71DA0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C71DA4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C71DA8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C71DAC  4B 39 BF 18 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C71DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C71DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C71DB8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C71DBC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C71DC0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C71DC4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C71DC8  38 60 00 01 */	li r3, 1
/* 80C71DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C71DD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C71DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C71DD8  7C 08 03 A6 */	mtlr r0
/* 80C71DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C71DE0  4E 80 00 20 */	blr 
