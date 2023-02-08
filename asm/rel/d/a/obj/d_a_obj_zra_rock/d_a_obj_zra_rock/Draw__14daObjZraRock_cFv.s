lbl_80D45374:
/* 80D45374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D45378  7C 08 02 A6 */	mflr r0
/* 80D4537C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D45384  93 C1 00 08 */	stw r30, 8(r1)
/* 80D45388  7C 7F 1B 78 */	mr r31, r3
/* 80D4538C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D45390  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D45394  38 80 00 10 */	li r4, 0x10
/* 80D45398  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D4539C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D453A0  4B 45 E4 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D453A4  88 1F 08 1C */	lbz r0, 0x81c(r31)
/* 80D453A8  28 00 00 00 */	cmplwi r0, 0
/* 80D453AC  41 82 00 8C */	beq lbl_80D45438
/* 80D453B0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D453B4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D453B8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D453BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D453C0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D453C4  4B 45 F9 DD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D453C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D453CC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D453D0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D453D4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D453D8  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D453DC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D453E0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D453E4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D453E8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D453EC  80 83 00 04 */	lwz r4, 4(r3)
/* 80D453F0  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 80D453F4  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80D453F8  38 84 00 58 */	addi r4, r4, 0x58
/* 80D453FC  4B 2C 83 AD */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D45400  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D45404  4B 2C 88 C1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D45408  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D4540C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D45410  38 63 00 58 */	addi r3, r3, 0x58
/* 80D45414  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80D45418  4B 5E A4 69 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80D4541C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D45420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45424  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D45428  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D4542C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D45430  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D45434  48 00 00 5C */	b lbl_80D45490
lbl_80D45438:
/* 80D45438  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D4543C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D45440  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80D45444  80 84 00 04 */	lwz r4, 4(r4)
/* 80D45448  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D4544C  4B 45 F9 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D45450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D45454  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45458  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D4545C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D45460  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D45464  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D45468  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D4546C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D45470  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D45474  4B 2C 88 51 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D45478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4547C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45480  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D45484  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D45488  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D4548C  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_80D45490:
/* 80D45490  38 60 00 01 */	li r3, 1
/* 80D45494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D45498  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4549C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D454A0  7C 08 03 A6 */	mtlr r0
/* 80D454A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D454A8  4E 80 00 20 */	blr 
