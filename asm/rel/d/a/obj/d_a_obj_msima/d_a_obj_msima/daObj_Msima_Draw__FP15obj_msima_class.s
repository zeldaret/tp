lbl_80C9B4A8:
/* 80C9B4A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C9B4AC  7C 08 02 A6 */	mflr r0
/* 80C9B4B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C9B4B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C9B4B8  4B 6C 6D 10 */	b _savegpr_24
/* 80C9B4BC  7C 7F 1B 78 */	mr r31, r3
/* 80C9B4C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9B4C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9B4C8  38 80 00 10 */	li r4, 0x10
/* 80C9B4CC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C9B4D0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C9B4D4  4B 50 82 F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9B4D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9B4DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9B4E0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C9B4E4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9B4E8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C9B4EC  4B 50 98 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9B4F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9B4F4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C9B4F8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C9B4FC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C9B500  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 80C9B504  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C9B508  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C9B50C  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C9B510  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9B514  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9B518  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80C9B51C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9B520  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9B524  4B 37 21 B4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C9B528  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9B52C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9B530  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C9B534  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9B538  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9B53C  4B 37 22 6C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C9B540  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9B544  4B 37 27 80 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9B548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9B54C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9B550  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C9B554  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C9B558  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C9B55C  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C9B560  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80C9B564  28 00 00 01 */	cmplwi r0, 1
/* 80C9B568  41 82 00 74 */	beq lbl_80C9B5DC
/* 80C9B56C  3B 20 00 00 */	li r25, 0
/* 80C9B570  3B C0 00 00 */	li r30, 0
/* 80C9B574  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9B578  3B 83 CA 54 */	addi r28, r3, g_env_light@l
lbl_80C9B57C:
/* 80C9B57C  3B 00 00 00 */	li r24, 0
/* 80C9B580  3B A0 00 00 */	li r29, 0
/* 80C9B584  7F 7F F2 14 */	add r27, r31, r30
lbl_80C9B588:
/* 80C9B588  38 1D 06 20 */	addi r0, r29, 0x620
/* 80C9B58C  7F 5B 00 2E */	lwzx r26, r27, r0
/* 80C9B590  7F 83 E3 78 */	mr r3, r28
/* 80C9B594  38 80 00 00 */	li r4, 0
/* 80C9B598  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C9B59C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C9B5A0  4B 50 82 24 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9B5A4  7F 83 E3 78 */	mr r3, r28
/* 80C9B5A8  80 9A 00 04 */	lwz r4, 4(r26)
/* 80C9B5AC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C9B5B0  4B 50 97 F0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9B5B4  7F 43 D3 78 */	mr r3, r26
/* 80C9B5B8  4B 37 27 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9B5BC  3B 18 00 01 */	addi r24, r24, 1
/* 80C9B5C0  2C 18 00 23 */	cmpwi r24, 0x23
/* 80C9B5C4  3B BD 00 04 */	addi r29, r29, 4
/* 80C9B5C8  41 80 FF C0 */	blt lbl_80C9B588
/* 80C9B5CC  3B 39 00 01 */	addi r25, r25, 1
/* 80C9B5D0  2C 19 00 04 */	cmpwi r25, 4
/* 80C9B5D4  3B DE 00 A0 */	addi r30, r30, 0xa0
/* 80C9B5D8  41 80 FF A4 */	blt lbl_80C9B57C
lbl_80C9B5DC:
/* 80C9B5DC  38 60 00 01 */	li r3, 1
/* 80C9B5E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C9B5E4  4B 6C 6C 30 */	b _restgpr_24
/* 80C9B5E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C9B5EC  7C 08 03 A6 */	mtlr r0
/* 80C9B5F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C9B5F4  4E 80 00 20 */	blr 
