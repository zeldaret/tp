lbl_8085B3F8:
/* 8085B3F8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8085B3FC  7C 08 02 A6 */	mflr r0
/* 8085B400  90 01 00 54 */	stw r0, 0x54(r1)
/* 8085B404  39 61 00 50 */	addi r11, r1, 0x50
/* 8085B408  4B B0 6D D4 */	b _savegpr_29
/* 8085B40C  7C 7E 1B 78 */	mr r30, r3
/* 8085B410  80 63 05 68 */	lwz r3, 0x568(r3)
/* 8085B414  83 E3 00 04 */	lwz r31, 4(r3)
/* 8085B418  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8085B41C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8085B420  38 80 00 10 */	li r4, 0x10
/* 8085B424  38 A0 00 00 */	li r5, 0
/* 8085B428  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8085B42C  4B 94 83 98 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8085B430  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8085B434  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8085B438  7F E4 FB 78 */	mr r4, r31
/* 8085B43C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8085B440  4B 94 99 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8085B444  88 1E 05 C5 */	lbz r0, 0x5c5(r30)
/* 8085B448  28 00 00 01 */	cmplwi r0, 1
/* 8085B44C  41 82 00 1C */	beq lbl_8085B468
/* 8085B450  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 8085B454  80 83 00 04 */	lwz r4, 4(r3)
/* 8085B458  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8085B45C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8085B460  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8085B464  4B 94 99 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_8085B468:
/* 8085B468  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8085B46C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8085B470  3C 80 80 86 */	lis r4, lit_3863@ha
/* 8085B474  C0 24 BA 44 */	lfs f1, lit_3863@l(r4)
/* 8085B478  FC 40 08 90 */	fmr f2, f1
/* 8085B47C  FC 60 08 90 */	fmr f3, f1
/* 8085B480  4B AE B4 68 */	b PSMTXTrans
/* 8085B484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8085B488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8085B48C  38 81 00 08 */	addi r4, r1, 8
/* 8085B490  4B AE B0 20 */	b PSMTXCopy
/* 8085B494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085B498  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8085B49C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8085B4A0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8085B4A4  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 8085B4A8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8085B4AC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8085B4B0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8085B4B4  88 1E 05 C5 */	lbz r0, 0x5c5(r30)
/* 8085B4B8  28 00 00 01 */	cmplwi r0, 1
/* 8085B4BC  41 82 00 B0 */	beq lbl_8085B56C
/* 8085B4C0  38 61 00 08 */	addi r3, r1, 8
/* 8085B4C4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8085B4C8  38 84 00 24 */	addi r4, r4, 0x24
/* 8085B4CC  4B AE AF E4 */	b PSMTXCopy
/* 8085B4D0  38 61 00 08 */	addi r3, r1, 8
/* 8085B4D4  80 9E 05 6C */	lwz r4, 0x56c(r30)
/* 8085B4D8  38 84 00 24 */	addi r4, r4, 0x24
/* 8085B4DC  4B AE AF D4 */	b PSMTXCopy
/* 8085B4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085B4E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085B4E8  3B A3 00 28 */	addi r29, r3, 0x28
/* 8085B4EC  7F A3 EB 78 */	mr r3, r29
/* 8085B4F0  38 80 00 01 */	li r4, 1
/* 8085B4F4  4B 7D 76 BC */	b isDarkClearLV__21dSv_player_status_b_cCFi
/* 8085B4F8  2C 03 00 00 */	cmpwi r3, 0
/* 8085B4FC  40 82 00 30 */	bne lbl_8085B52C
/* 8085B500  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8085B504  80 83 00 04 */	lwz r4, 4(r3)
/* 8085B508  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 8085B50C  38 7E 05 74 */	addi r3, r30, 0x574
/* 8085B510  38 84 00 58 */	addi r4, r4, 0x58
/* 8085B514  4B 7B 21 C4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8085B518  38 7E 05 74 */	addi r3, r30, 0x574
/* 8085B51C  4B 7B 1F 0C */	b play__14mDoExt_baseAnmFv
/* 8085B520  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8085B524  4B 7B 27 A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8085B528  48 00 00 98 */	b lbl_8085B5C0
lbl_8085B52C:
/* 8085B52C  7F A3 EB 78 */	mr r3, r29
/* 8085B530  38 80 00 02 */	li r4, 2
/* 8085B534  4B 7D 76 7C */	b isDarkClearLV__21dSv_player_status_b_cCFi
/* 8085B538  2C 03 00 00 */	cmpwi r3, 0
/* 8085B53C  40 82 00 84 */	bne lbl_8085B5C0
/* 8085B540  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 8085B544  80 83 00 04 */	lwz r4, 4(r3)
/* 8085B548  C0 3E 05 9C */	lfs f1, 0x59c(r30)
/* 8085B54C  38 7E 05 8C */	addi r3, r30, 0x58c
/* 8085B550  38 84 00 58 */	addi r4, r4, 0x58
/* 8085B554  4B 7B 21 84 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8085B558  38 7E 05 8C */	addi r3, r30, 0x58c
/* 8085B55C  4B 7B 1E CC */	b play__14mDoExt_baseAnmFv
/* 8085B560  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 8085B564  4B 7B 27 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8085B568  48 00 00 58 */	b lbl_8085B5C0
lbl_8085B56C:
/* 8085B56C  38 61 00 08 */	addi r3, r1, 8
/* 8085B570  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8085B574  38 84 00 24 */	addi r4, r4, 0x24
/* 8085B578  4B AE AF 38 */	b PSMTXCopy
/* 8085B57C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085B580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085B584  38 63 00 28 */	addi r3, r3, 0x28
/* 8085B588  38 80 00 00 */	li r4, 0
/* 8085B58C  4B 7D 76 24 */	b isDarkClearLV__21dSv_player_status_b_cCFi
/* 8085B590  2C 03 00 00 */	cmpwi r3, 0
/* 8085B594  40 82 00 2C */	bne lbl_8085B5C0
/* 8085B598  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8085B59C  80 83 00 04 */	lwz r4, 4(r3)
/* 8085B5A0  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 8085B5A4  38 7E 05 74 */	addi r3, r30, 0x574
/* 8085B5A8  38 84 00 58 */	addi r4, r4, 0x58
/* 8085B5AC  4B 7B 21 2C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8085B5B0  38 7E 05 74 */	addi r3, r30, 0x574
/* 8085B5B4  4B 7B 1E 74 */	b play__14mDoExt_baseAnmFv
/* 8085B5B8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8085B5BC  4B 7B 27 08 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8085B5C0:
/* 8085B5C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085B5C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085B5C8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8085B5CC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8085B5D0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8085B5D4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8085B5D8  38 60 00 01 */	li r3, 1
/* 8085B5DC  39 61 00 50 */	addi r11, r1, 0x50
/* 8085B5E0  4B B0 6C 48 */	b _restgpr_29
/* 8085B5E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8085B5E8  7C 08 03 A6 */	mtlr r0
/* 8085B5EC  38 21 00 50 */	addi r1, r1, 0x50
/* 8085B5F0  4E 80 00 20 */	blr 
