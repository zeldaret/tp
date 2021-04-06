lbl_806D842C:
/* 806D842C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D8430  7C 08 02 A6 */	mflr r0
/* 806D8434  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D8438  39 61 00 30 */	addi r11, r1, 0x30
/* 806D843C  4B C8 9D A1 */	bl _savegpr_29
/* 806D8440  7C 7D 1B 78 */	mr r29, r3
/* 806D8444  3C 60 80 6E */	lis r3, lit_3763@ha /* 0x806DEE38@ha */
/* 806D8448  3B E3 EE 38 */	addi r31, r3, lit_3763@l /* 0x806DEE38@l */
/* 806D844C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806D8450  83 C3 00 04 */	lwz r30, 4(r3)
/* 806D8454  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806D8458  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806D845C  38 80 00 00 */	li r4, 0
/* 806D8460  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806D8464  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806D8468  4B AC B3 5D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806D846C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806D8470  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806D8474  80 9E 00 04 */	lwz r4, 4(r30)
/* 806D8478  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806D847C  4B AC C9 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806D8480  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806D8484  4B 93 8D 3D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806D8488  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D848C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D8490  38 63 09 58 */	addi r3, r3, 0x958
/* 806D8494  38 80 00 07 */	li r4, 7
/* 806D8498  4B 95 C4 9D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 806D849C  2C 03 00 00 */	cmpwi r3, 0
/* 806D84A0  40 82 00 24 */	bne lbl_806D84C4
/* 806D84A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806D84A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806D84AC  80 9D 06 4C */	lwz r4, 0x64c(r29)
/* 806D84B0  80 84 00 04 */	lwz r4, 4(r4)
/* 806D84B4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806D84B8  4B AC C8 E9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806D84BC  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 806D84C0  4B 93 58 05 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_806D84C4:
/* 806D84C4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806D84C8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806D84CC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806D84D0  EC 20 18 2A */	fadds f1, f0, f3
/* 806D84D4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806D84D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806D84DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806D84E0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806D84E4  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 806D84E8  38 80 00 01 */	li r4, 1
/* 806D84EC  7F C5 F3 78 */	mr r5, r30
/* 806D84F0  38 C1 00 08 */	addi r6, r1, 8
/* 806D84F4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806D84F8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 806D84FC  C0 9D 07 D4 */	lfs f4, 0x7d4(r29)
/* 806D8500  38 FD 08 2C */	addi r7, r29, 0x82c
/* 806D8504  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806D8508  39 20 00 00 */	li r9, 0
/* 806D850C  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 806D8510  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806D8514  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806D8518  4B 95 63 F9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806D851C  90 7D 06 50 */	stw r3, 0x650(r29)
/* 806D8520  38 60 00 01 */	li r3, 1
/* 806D8524  39 61 00 30 */	addi r11, r1, 0x30
/* 806D8528  4B C8 9D 01 */	bl _restgpr_29
/* 806D852C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D8530  7C 08 03 A6 */	mtlr r0
/* 806D8534  38 21 00 30 */	addi r1, r1, 0x30
/* 806D8538  4E 80 00 20 */	blr 
