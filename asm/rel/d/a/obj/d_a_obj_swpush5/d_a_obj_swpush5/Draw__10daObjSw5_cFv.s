lbl_8059C4BC:
/* 8059C4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C4C0  7C 08 02 A6 */	mflr r0
/* 8059C4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C4C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C4CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8059C4D0  7C 7E 1B 78 */	mr r30, r3
/* 8059C4D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059C4D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8059C4DC  38 80 00 10 */	li r4, 0x10
/* 8059C4E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8059C4E4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8059C4E8  4B C0 72 DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8059C4EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059C4F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8059C4F4  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 8059C4F8  80 84 00 04 */	lwz r4, 4(r4)
/* 8059C4FC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8059C500  4B C0 88 A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8059C504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059C508  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8059C50C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8059C510  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8059C514  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 8059C518  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8059C51C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8059C520  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8059C524  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8059C528  4B A7 17 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8059C52C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059C530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059C534  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8059C538  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8059C53C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8059C540  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8059C544  38 60 00 01 */	li r3, 1
/* 8059C548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C54C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C554  7C 08 03 A6 */	mtlr r0
/* 8059C558  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C55C  4E 80 00 20 */	blr 
