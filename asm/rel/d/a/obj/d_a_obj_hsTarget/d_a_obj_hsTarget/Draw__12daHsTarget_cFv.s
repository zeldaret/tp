lbl_80C1F6C4:
/* 80C1F6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F6C8  7C 08 02 A6 */	mflr r0
/* 80C1F6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1F6D4  7C 7F 1B 78 */	mr r31, r3
/* 80C1F6D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C1F6DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C1F6E0  38 80 00 40 */	li r4, 0x40
/* 80C1F6E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C1F6E8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C1F6EC  4B 58 40 D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C1F6F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C1F6F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C1F6F8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C1F6FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C1F700  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C1F704  4B 58 56 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C1F708  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1F70C  4B 3E E5 B8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C1F710  38 60 00 01 */	li r3, 1
/* 80C1F714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1F718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F71C  7C 08 03 A6 */	mtlr r0
/* 80C1F720  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F724  4E 80 00 20 */	blr 
