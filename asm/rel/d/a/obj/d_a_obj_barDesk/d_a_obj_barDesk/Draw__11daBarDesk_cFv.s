lbl_80BA98E8:
/* 80BA98E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA98EC  7C 08 02 A6 */	mflr r0
/* 80BA98F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA98F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA98F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA98FC  7C 7E 1B 78 */	mr r30, r3
/* 80BA9900  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BA9904  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BA9908  38 80 00 10 */	li r4, 0x10
/* 80BA990C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA9910  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BA9914  4B 5F 9E B0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BA9918  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BA991C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BA9920  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BA9924  80 84 00 04 */	lwz r4, 4(r4)
/* 80BA9928  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BA992C  4B 5F B4 74 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BA9930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA9934  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BA9938  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BA993C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BA9940  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BA9944  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BA9948  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BA994C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BA9950  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BA9954  4B 46 43 70 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BA9958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA995C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA9960  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BA9964  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BA9968  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BA996C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BA9970  38 60 00 01 */	li r3, 1
/* 80BA9974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9978  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA997C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9980  7C 08 03 A6 */	mtlr r0
/* 80BA9984  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9988  4E 80 00 20 */	blr 
