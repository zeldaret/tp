lbl_8071FAF0:
/* 8071FAF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071FAF4  7C 08 02 A6 */	mflr r0
/* 8071FAF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071FAFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8071FB00  4B C4 26 DC */	b _savegpr_29
/* 8071FB04  7C 7D 1B 78 */	mr r29, r3
/* 8071FB08  3C 60 80 72 */	lis r3, lit_3789@ha
/* 8071FB0C  3B E3 2C 3C */	addi r31, r3, lit_3789@l
/* 8071FB10  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8071FB14  83 C3 00 04 */	lwz r30, 4(r3)
/* 8071FB18  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8071FB1C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8071FB20  38 80 00 00 */	li r4, 0
/* 8071FB24  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071FB28  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8071FB2C  4B A8 3C 98 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8071FB30  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8071FB34  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8071FB38  80 9E 00 04 */	lwz r4, 4(r30)
/* 8071FB3C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8071FB40  4B A8 52 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8071FB44  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8071FB48  4B 8F 16 78 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8071FB4C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8071FB50  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071FB54  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8071FB58  EC 20 18 2A */	fadds f1, f0, f3
/* 8071FB5C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8071FB60  D0 01 00 08 */	stfs f0, 8(r1)
/* 8071FB64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8071FB68  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8071FB6C  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 8071FB70  38 80 00 01 */	li r4, 1
/* 8071FB74  7F C5 F3 78 */	mr r5, r30
/* 8071FB78  38 C1 00 08 */	addi r6, r1, 8
/* 8071FB7C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8071FB80  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071FB84  C0 9D 07 88 */	lfs f4, 0x788(r29)
/* 8071FB88  38 FD 07 E0 */	addi r7, r29, 0x7e0
/* 8071FB8C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8071FB90  39 20 00 00 */	li r9, 0
/* 8071FB94  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8071FB98  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8071FB9C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8071FBA0  4B 90 ED 70 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8071FBA4  90 7D 06 64 */	stw r3, 0x664(r29)
/* 8071FBA8  38 60 00 01 */	li r3, 1
/* 8071FBAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8071FBB0  4B C4 26 78 */	b _restgpr_29
/* 8071FBB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071FBB8  7C 08 03 A6 */	mtlr r0
/* 8071FBBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8071FBC0  4E 80 00 20 */	blr 
