lbl_80B6D1B0:
/* 80B6D1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6D1B4  7C 08 02 A6 */	mflr r0
/* 80B6D1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6D1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6D1C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6D1C4  7C 7E 1B 78 */	mr r30, r3
/* 80B6D1C8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B6D1CC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B6D1D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B6D1D4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B6D1D8  38 80 00 03 */	li r4, 3
/* 80B6D1DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B6D1E0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80B6D1E4  4B 63 65 E0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B6D1E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B6D1EC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B6D1F0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80B6D1F4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B6D1F8  4B 63 7B A8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B6D1FC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6D200  4B 4A 3F C0 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80B6D204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6D208  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6D20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6D210  7C 08 03 A6 */	mtlr r0
/* 80B6D214  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6D218  4E 80 00 20 */	blr 
