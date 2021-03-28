lbl_80C67BD4:
/* 80C67BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67BD8  7C 08 02 A6 */	mflr r0
/* 80C67BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67BE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67BE8  7C 7E 1B 78 */	mr r30, r3
/* 80C67BEC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C67BF0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C67BF4  38 80 00 10 */	li r4, 0x10
/* 80C67BF8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C67BFC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C67C00  4B 53 BB C4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C67C04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C67C08  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C67C0C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C67C10  80 84 00 04 */	lwz r4, 4(r4)
/* 80C67C14  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C67C18  4B 53 D1 88 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C67C1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C67C20  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C67C24  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C67C28  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C67C2C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C67C30  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C67C34  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C67C38  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C67C3C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C67C40  4B 3A 60 84 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C67C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C67C48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C67C4C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C67C50  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C67C54  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C67C58  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C67C5C  38 60 00 01 */	li r3, 1
/* 80C67C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67C64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C67C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67C6C  7C 08 03 A6 */	mtlr r0
/* 80C67C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67C74  4E 80 00 20 */	blr 
