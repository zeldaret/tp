lbl_80C5359C:
/* 80C5359C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C535A0  7C 08 02 A6 */	mflr r0
/* 80C535A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C535A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C535AC  7C 7F 1B 78 */	mr r31, r3
/* 80C535B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C535B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C535B8  38 80 00 10 */	li r4, 0x10
/* 80C535BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C535C0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C535C4  4B 55 02 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C535C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C535CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C535D0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C535D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C535D8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C535DC  4B 55 17 C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C535E0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C535E4  4B 3B A6 E0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C535E8  38 60 00 01 */	li r3, 1
/* 80C535EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C535F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C535F4  7C 08 03 A6 */	mtlr r0
/* 80C535F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C535FC  4E 80 00 20 */	blr 
