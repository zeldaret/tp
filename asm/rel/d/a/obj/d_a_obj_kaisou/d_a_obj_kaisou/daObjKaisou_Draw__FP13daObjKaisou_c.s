lbl_80C34B34:
/* 80C34B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C34B38  7C 08 02 A6 */	mflr r0
/* 80C34B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C34B44  7C 7F 1B 78 */	mr r31, r3
/* 80C34B48  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C34B4C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C34B50  38 80 00 00 */	li r4, 0
/* 80C34B54  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C34B58  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C34B5C  4B 56 EC 68 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C34B60  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C34B64  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C34B68  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80C34B6C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C34B70  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C34B74  4B 57 02 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C34B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C34B7C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C34B80  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C34B84  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C34B88  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80C34B8C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80C34B90  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C34B94  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80C34B98  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C34B9C  4B 3D 91 28 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C34BA0  38 60 00 01 */	li r3, 1
/* 80C34BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C34BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C34BAC  7C 08 03 A6 */	mtlr r0
/* 80C34BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34BB4  4E 80 00 20 */	blr 
