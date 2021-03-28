lbl_80CBF404:
/* 80CBF404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF408  7C 08 02 A6 */	mflr r0
/* 80CBF40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF414  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBF418  7C 7E 1B 78 */	mr r30, r3
/* 80CBF41C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CBF420  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CBF424  38 80 00 10 */	li r4, 0x10
/* 80CBF428  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CBF42C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CBF430  4B 4E 43 94 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CBF434  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CBF438  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CBF43C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CBF440  80 84 00 04 */	lwz r4, 4(r4)
/* 80CBF444  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CBF448  4B 4E 59 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CBF44C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBF450  80 83 00 04 */	lwz r4, 4(r3)
/* 80CBF454  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80CBF458  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80CBF45C  4B 34 E5 70 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80CBF460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBF464  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CBF468  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CBF46C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CBF470  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CBF474  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CBF478  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CBF47C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CBF480  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBF484  4B 34 E8 40 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CBF488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBF48C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBF490  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CBF494  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CBF498  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CBF49C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CBF4A0  38 60 00 01 */	li r3, 1
/* 80CBF4A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBF4A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBF4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF4B0  7C 08 03 A6 */	mtlr r0
/* 80CBF4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF4B8  4E 80 00 20 */	blr 
