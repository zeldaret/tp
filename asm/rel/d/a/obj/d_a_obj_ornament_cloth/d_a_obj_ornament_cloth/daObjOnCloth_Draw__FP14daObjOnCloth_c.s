lbl_80595A30:
/* 80595A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595A34  7C 08 02 A6 */	mflr r0
/* 80595A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595A40  93 C1 00 08 */	stw r30, 8(r1)
/* 80595A44  7C 7E 1B 78 */	mr r30, r3
/* 80595A48  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80595A4C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80595A50  38 80 00 10 */	li r4, 0x10
/* 80595A54  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80595A58  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80595A5C  4B C0 DD 68 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80595A60  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80595A64  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80595A68  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80595A6C  80 84 00 04 */	lwz r4, 4(r4)
/* 80595A70  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80595A74  4B C0 F3 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80595A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80595A7C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80595A80  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80595A84  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80595A88  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80595A8C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80595A90  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80595A94  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80595A98  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80595A9C  80 83 00 04 */	lwz r4, 4(r3)
/* 80595AA0  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80595AA4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80595AA8  38 84 00 58 */	addi r4, r4, 0x58
/* 80595AAC  4B A7 7C 2C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80595AB0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80595AB4  4B A7 82 10 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80595AB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80595ABC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80595AC0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80595AC4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80595AC8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80595ACC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80595AD0  38 60 00 01 */	li r3, 1
/* 80595AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595AD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80595ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595AE0  7C 08 03 A6 */	mtlr r0
/* 80595AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80595AE8  4E 80 00 20 */	blr 
