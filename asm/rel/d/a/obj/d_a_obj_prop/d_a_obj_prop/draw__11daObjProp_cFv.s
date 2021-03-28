lbl_80CB543C:
/* 80CB543C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5440  7C 08 02 A6 */	mflr r0
/* 80CB5444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB544C  7C 7F 1B 78 */	mr r31, r3
/* 80CB5450  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB5454  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB5458  38 80 00 00 */	li r4, 0
/* 80CB545C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CB5460  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CB5464  4B 4E E3 60 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB5468  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB546C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB5470  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CB5474  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB5478  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CB547C  4B 4E F9 24 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB5480  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CB5484  4B 35 87 A8 */	b mDoExt_modelUpdate__FP8J3DModel
/* 80CB5488  38 60 00 01 */	li r3, 1
/* 80CB548C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5494  7C 08 03 A6 */	mtlr r0
/* 80CB5498  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB549C  4E 80 00 20 */	blr 
