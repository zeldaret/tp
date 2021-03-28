lbl_80BAD234:
/* 80BAD234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD238  7C 08 02 A6 */	mflr r0
/* 80BAD23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAD244  93 C1 00 08 */	stw r30, 8(r1)
/* 80BAD248  7C 7E 1B 78 */	mr r30, r3
/* 80BAD24C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BAD250  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BAD254  38 80 00 10 */	li r4, 0x10
/* 80BAD258  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BAD25C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BAD260  4B 5F 65 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BAD264  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BAD268  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BAD26C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BAD270  80 84 00 04 */	lwz r4, 4(r4)
/* 80BAD274  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BAD278  4B 5F 7B 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BAD27C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAD280  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BAD284  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BAD288  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BAD28C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BAD290  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BAD294  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BAD298  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BAD29C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BAD2A0  4B 46 0A 24 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BAD2A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAD2A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAD2AC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BAD2B0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BAD2B4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BAD2B8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BAD2BC  38 60 00 01 */	li r3, 1
/* 80BAD2C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD2C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAD2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD2CC  7C 08 03 A6 */	mtlr r0
/* 80BAD2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD2D4  4E 80 00 20 */	blr 
