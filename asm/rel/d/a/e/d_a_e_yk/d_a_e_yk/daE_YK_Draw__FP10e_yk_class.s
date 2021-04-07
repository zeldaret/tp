lbl_80804A90:
/* 80804A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80804A94  7C 08 02 A6 */	mflr r0
/* 80804A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80804A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80804AA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80804AA4  7C 7E 1B 78 */	mr r30, r3
/* 80804AA8  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80804AAC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80804AB0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80804AB4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80804AB8  38 80 00 02 */	li r4, 2
/* 80804ABC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80804AC0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80804AC4  4B 99 ED 01 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80804AC8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80804ACC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80804AD0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80804AD4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80804AD8  4B 9A 02 C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80804ADC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80804AE0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80804AE4  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80804AE8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80804AEC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80804AF0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80804AF4  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80804AF8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80804AFC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80804B00  4B 80 C6 C1 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80804B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80804B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80804B0C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80804B10  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80804B14  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80804B18  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80804B1C  38 60 00 01 */	li r3, 1
/* 80804B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80804B24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80804B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80804B2C  7C 08 03 A6 */	mtlr r0
/* 80804B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80804B34  4E 80 00 20 */	blr 
