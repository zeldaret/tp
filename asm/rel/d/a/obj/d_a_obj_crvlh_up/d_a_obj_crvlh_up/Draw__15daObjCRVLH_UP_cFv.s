lbl_80BD593C:
/* 80BD593C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5940  7C 08 02 A6 */	mflr r0
/* 80BD5944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD594C  7C 7F 1B 78 */	mr r31, r3
/* 80BD5950  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD5954  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD5958  38 80 00 10 */	li r4, 0x10
/* 80BD595C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD5960  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD5964  4B 5C DE 61 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD5968  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD596C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD5970  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BD5974  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD5978  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD597C  4B 5C F4 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD5980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD5984  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD5988  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD598C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BD5990  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BD5994  90 03 00 48 */	stw r0, 0x48(r3)
/* 80BD5998  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD599C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80BD59A0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BD59A4  4B 43 83 21 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD59A8  38 60 00 01 */	li r3, 1
/* 80BD59AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD59B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD59B4  7C 08 03 A6 */	mtlr r0
/* 80BD59B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD59BC  4E 80 00 20 */	blr 
