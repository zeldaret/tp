lbl_80BBADF8:
/* 80BBADF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBADFC  7C 08 02 A6 */	mflr r0
/* 80BBAE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBAE08  7C 7F 1B 78 */	mr r31, r3
/* 80BBAE0C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BBAE10  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BBAE14  38 80 00 00 */	li r4, 0
/* 80BBAE18  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BBAE1C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BBAE20  4B 5E 89 A5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BBAE24  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BBAE28  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BBAE2C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BBAE30  80 84 00 04 */	lwz r4, 4(r4)
/* 80BBAE34  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BBAE38  4B 5E 9F 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BBAE3C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BBAE40  4B 45 2E 85 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BBAE44  38 60 00 01 */	li r3, 1
/* 80BBAE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBAE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAE50  7C 08 03 A6 */	mtlr r0
/* 80BBAE54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAE58  4E 80 00 20 */	blr 
