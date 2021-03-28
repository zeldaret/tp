lbl_80D368A0:
/* 80D368A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D368A4  7C 08 02 A6 */	mflr r0
/* 80D368A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D368AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D368B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D368B4  7C 7E 1B 78 */	mr r30, r3
/* 80D368B8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D368BC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D368C0  38 80 00 10 */	li r4, 0x10
/* 80D368C4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D368C8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D368CC  4B 46 CE F8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D368D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D368D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D368D8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D368DC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D368E0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D368E4  4B 46 E4 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D368E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D368EC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D368F0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D368F4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D368F8  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D368FC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D36900  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D36904  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D36908  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D3690C  4B 2D 73 B8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D36910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D36914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D36918  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D3691C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D36920  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D36924  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D36928  38 60 00 01 */	li r3, 1
/* 80D3692C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D36930  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D36934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36938  7C 08 03 A6 */	mtlr r0
/* 80D3693C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36940  4E 80 00 20 */	blr 
