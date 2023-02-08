lbl_80C5F870:
/* 80C5F870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F874  7C 08 02 A6 */	mflr r0
/* 80C5F878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F880  7C 7F 1B 78 */	mr r31, r3
/* 80C5F884  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C5F888  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C5F88C  38 80 00 40 */	li r4, 0x40
/* 80C5F890  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C5F894  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C5F898  4B 54 3F 2D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5F89C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C5F8A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C5F8A4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5F8A8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5F8AC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C5F8B0  4B 54 54 F1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5F8B4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5F8B8  4B 3A E4 0D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5F8BC  38 60 00 01 */	li r3, 1
/* 80C5F8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F8C8  7C 08 03 A6 */	mtlr r0
/* 80C5F8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F8D0  4E 80 00 20 */	blr 
