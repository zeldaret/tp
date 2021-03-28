lbl_80D20738:
/* 80D20738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2073C  7C 08 02 A6 */	mflr r0
/* 80D20740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D20748  7C 7F 1B 78 */	mr r31, r3
/* 80D2074C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D20750  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D20754  38 80 00 10 */	li r4, 0x10
/* 80D20758  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D2075C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D20760  4B 48 30 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D20764  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D20768  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D2076C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D20770  80 84 00 04 */	lwz r4, 4(r4)
/* 80D20774  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D20778  4B 48 46 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D2077C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D20780  4B 2E D5 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D20784  38 60 00 01 */	li r3, 1
/* 80D20788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2078C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20790  7C 08 03 A6 */	mtlr r0
/* 80D20794  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20798  4E 80 00 20 */	blr 
