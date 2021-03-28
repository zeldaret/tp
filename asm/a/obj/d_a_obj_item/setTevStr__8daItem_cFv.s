lbl_8015CE94:
/* 8015CE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CE98  7C 08 02 A6 */	mflr r0
/* 8015CE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CEA4  7C 7F 1B 78 */	mr r31, r3
/* 8015CEA8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8015CEAC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8015CEB0  38 80 00 00 */	li r4, 0
/* 8015CEB4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8015CEB8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8015CEBC  48 04 69 09 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8015CEC0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8015CEC4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8015CEC8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8015CECC  80 84 00 04 */	lwz r4, 4(r4)
/* 8015CED0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8015CED4  48 04 7E CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8015CED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CEE0  7C 08 03 A6 */	mtlr r0
/* 8015CEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CEE8  4E 80 00 20 */	blr 
