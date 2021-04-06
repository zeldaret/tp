lbl_80D33EB0:
/* 80D33EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33EB4  7C 08 02 A6 */	mflr r0
/* 80D33EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D33EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D33EC0  7C 7F 1B 78 */	mr r31, r3
/* 80D33EC4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D33EC8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D33ECC  38 80 00 10 */	li r4, 0x10
/* 80D33ED0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D33ED4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D33ED8  4B 46 F8 ED */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D33EDC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D33EE0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D33EE4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D33EE8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D33EEC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D33EF0  4B 47 0E B1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D33EF4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D33EF8  4B 2D 9D CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D33EFC  38 60 00 01 */	li r3, 1
/* 80D33F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D33F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D33F08  7C 08 03 A6 */	mtlr r0
/* 80D33F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D33F10  4E 80 00 20 */	blr 
