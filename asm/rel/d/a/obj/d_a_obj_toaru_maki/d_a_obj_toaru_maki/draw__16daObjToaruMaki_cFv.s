lbl_80D134A0:
/* 80D134A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D134A4  7C 08 02 A6 */	mflr r0
/* 80D134A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D134AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D134B0  7C 7F 1B 78 */	mr r31, r3
/* 80D134B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D134B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D134BC  38 80 00 10 */	li r4, 0x10
/* 80D134C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D134C4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D134C8  4B 49 02 FC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D134CC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D134D0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D134D4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D134D8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D134DC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D134E0  4B 49 18 C0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D134E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D134E8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D134EC  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 80D134F0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D134F4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80D134F8  90 03 00 48 */	stw r0, 0x48(r3)
/* 80D134FC  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 80D13500  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80D13504  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D13508  4B 2F A7 BC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D1350C  38 60 00 01 */	li r3, 1
/* 80D13510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D13514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13518  7C 08 03 A6 */	mtlr r0
/* 80D1351C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13520  4E 80 00 20 */	blr 
