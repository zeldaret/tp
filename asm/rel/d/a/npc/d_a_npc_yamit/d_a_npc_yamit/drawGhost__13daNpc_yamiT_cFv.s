lbl_80B4B294:
/* 80B4B294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4B298  7C 08 02 A6 */	mflr r0
/* 80B4B29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4B2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4B2A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4B2A8  7C 7E 1B 78 */	mr r30, r3
/* 80B4B2AC  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B4B2B0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B4B2B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B4B2B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B4B2BC  38 80 00 03 */	li r4, 3
/* 80B4B2C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B4B2C4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80B4B2C8  4B 65 84 FC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B4B2CC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B4B2D0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B4B2D4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80B4B2D8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B4B2DC  4B 65 9A C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B4B2E0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B4B2E4  4B 4C 5E DC */	b entryDL__16mDoExt_McaMorfSOFv
/* 80B4B2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4B2EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4B2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4B2F4  7C 08 03 A6 */	mtlr r0
/* 80B4B2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4B2FC  4E 80 00 20 */	blr 
