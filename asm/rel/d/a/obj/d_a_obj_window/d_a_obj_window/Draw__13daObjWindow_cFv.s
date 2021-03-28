lbl_80D38F28:
/* 80D38F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38F2C  7C 08 02 A6 */	mflr r0
/* 80D38F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D38F38  93 C1 00 08 */	stw r30, 8(r1)
/* 80D38F3C  7C 7E 1B 78 */	mr r30, r3
/* 80D38F40  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D38F44  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D38F48  38 80 00 14 */	li r4, 0x14
/* 80D38F4C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D38F50  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D38F54  4B 46 A8 70 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D38F58  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D38F5C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D38F60  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D38F64  80 84 00 04 */	lwz r4, 4(r4)
/* 80D38F68  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D38F6C  4B 46 BE 34 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D38F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38F74  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D38F78  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D38F7C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D38F80  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D38F84  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D38F88  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D38F8C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D38F90  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80D38F94  28 03 00 00 */	cmplwi r3, 0
/* 80D38F98  41 82 00 14 */	beq lbl_80D38FAC
/* 80D38F9C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D38FA0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D38FA4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D38FA8  4B 2D 4A 24 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80D38FAC:
/* 80D38FAC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D38FB0  4B 2D 4D 14 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D38FB4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D38FB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80D38FBC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D38FC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38FC4  38 00 00 00 */	li r0, 0
/* 80D38FC8  90 03 00 54 */	stw r0, 0x54(r3)
/* 80D38FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38FD4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D38FD8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D38FDC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D38FE0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D38FE4  38 60 00 01 */	li r3, 1
/* 80D38FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D38FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D38FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38FF4  7C 08 03 A6 */	mtlr r0
/* 80D38FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38FFC  4E 80 00 20 */	blr 
