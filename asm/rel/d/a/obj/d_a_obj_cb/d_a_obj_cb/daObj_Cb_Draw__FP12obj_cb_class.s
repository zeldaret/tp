lbl_80BC4B44:
/* 80BC4B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4B48  7C 08 02 A6 */	mflr r0
/* 80BC4B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC4B54  7C 7F 1B 78 */	mr r31, r3
/* 80BC4B58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC4B5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC4B60  38 80 00 10 */	li r4, 0x10
/* 80BC4B64  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BC4B68  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BC4B6C  4B 5D EC 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BC4B70  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC4B74  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC4B78  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BC4B7C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BC4B80  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BC4B84  4B 5E 02 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BC4B88  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BC4B8C  4B 44 91 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BC4B90  38 60 00 01 */	li r3, 1
/* 80BC4B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC4B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4B9C  7C 08 03 A6 */	mtlr r0
/* 80BC4BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4BA4  4E 80 00 20 */	blr 
