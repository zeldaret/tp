lbl_80B25B78:
/* 80B25B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B25B7C  7C 08 02 A6 */	mflr r0
/* 80B25B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B25B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B25B88  7C 7F 1B 78 */	mr r31, r3
/* 80B25B8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B25B90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B25B94  38 80 00 00 */	li r4, 0
/* 80B25B98  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B25B9C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80B25BA0  4B 67 DC 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B25BA4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B25BA8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B25BAC  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80B25BB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80B25BB4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80B25BB8  4B 67 F1 E9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B25BBC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80B25BC0  4B 4E 81 05 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80B25BC4  38 60 00 01 */	li r3, 1
/* 80B25BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B25BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B25BD0  7C 08 03 A6 */	mtlr r0
/* 80B25BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B25BD8  4E 80 00 20 */	blr 
