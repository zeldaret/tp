lbl_80C17B30:
/* 80C17B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17B34  7C 08 02 A6 */	mflr r0
/* 80C17B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C17B40  93 C1 00 08 */	stw r30, 8(r1)
/* 80C17B44  7C 7E 1B 78 */	mr r30, r3
/* 80C17B48  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C17B4C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C17B50  38 80 00 08 */	li r4, 8
/* 80C17B54  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C17B58  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C17B5C  4B 58 BC 68 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C17B60  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C17B64  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C17B68  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C17B6C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C17B70  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C17B74  4B 58 D2 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C17B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C17B7C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C17B80  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C17B84  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C17B88  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C17B8C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C17B90  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C17B94  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C17B98  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C17B9C  4B 3F 61 28 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C17BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C17BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C17BA8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C17BAC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C17BB0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C17BB4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C17BB8  38 60 00 01 */	li r3, 1
/* 80C17BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C17BC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C17BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17BC8  7C 08 03 A6 */	mtlr r0
/* 80C17BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17BD0  4E 80 00 20 */	blr 
