lbl_80D01EB0:
/* 80D01EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D01EB4  7C 08 02 A6 */	mflr r0
/* 80D01EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D01EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D01EC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D01EC4  7C 7E 1B 78 */	mr r30, r3
/* 80D01EC8  4B FF EE 4D */	bl setBaseMtx__13daObjSwTurn_cFv
/* 80D01ECC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D01ED0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D01ED4  38 80 00 10 */	li r4, 0x10
/* 80D01ED8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D01EDC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D01EE0  4B 4A 18 E4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D01EE4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D01EE8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D01EEC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D01EF0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D01EF4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D01EF8  4B 4A 2E A8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D01EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01F00  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D01F04  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D01F08  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D01F0C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D01F10  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D01F14  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D01F18  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D01F1C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D01F20  4B 30 BD A4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D01F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D01F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D01F2C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D01F30  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D01F34  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D01F38  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D01F3C  38 60 00 01 */	li r3, 1
/* 80D01F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D01F44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D01F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D01F4C  7C 08 03 A6 */	mtlr r0
/* 80D01F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D01F54  4E 80 00 20 */	blr 
