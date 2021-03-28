lbl_80BB9494:
/* 80BB9494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9498  7C 08 02 A6 */	mflr r0
/* 80BB949C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB94A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB94A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB94A8  7C 7E 1B 78 */	mr r30, r3
/* 80BB94AC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BB94B0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BB94B4  38 80 00 10 */	li r4, 0x10
/* 80BB94B8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BB94BC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BB94C0  4B 5E A3 04 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BB94C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BB94C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BB94CC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BB94D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB94D4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BB94D8  4B 5E B8 C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB94DC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB94E0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB94E4  7F C3 F3 78 */	mr r3, r30
/* 80BB94E8  4B 46 3F 44 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80BB94EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB94F0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BB94F4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BB94F8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BB94FC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BB9500  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BB9504  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BB9508  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB950C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB9510  4B 45 47 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BB9514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB9518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB951C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BB9520  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BB9524  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BB9528  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB952C  38 60 00 01 */	li r3, 1
/* 80BB9530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB9534  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB9538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB953C  7C 08 03 A6 */	mtlr r0
/* 80BB9540  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9544  4E 80 00 20 */	blr 
