lbl_80BE48A4:
/* 80BE48A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE48A8  7C 08 02 A6 */	mflr r0
/* 80BE48AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE48B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE48B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE48B8  7C 7E 1B 78 */	mr r30, r3
/* 80BE48BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BE48C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BE48C4  38 80 00 10 */	li r4, 0x10
/* 80BE48C8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BE48CC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BE48D0  4B 5B EE F4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BE48D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BE48D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BE48DC  80 9E 05 E8 */	lwz r4, 0x5e8(r30)
/* 80BE48E0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BE48E4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BE48E8  4B 5C 04 B8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BE48EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE48F0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BE48F4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BE48F8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BE48FC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BE4900  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BE4904  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BE4908  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BE490C  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80BE4910  4B 42 93 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BE4914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE4918  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE491C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BE4920  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BE4924  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BE4928  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BE492C  38 60 00 01 */	li r3, 1
/* 80BE4930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE4934  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE4938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE493C  7C 08 03 A6 */	mtlr r0
/* 80BE4940  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4944  4E 80 00 20 */	blr 
