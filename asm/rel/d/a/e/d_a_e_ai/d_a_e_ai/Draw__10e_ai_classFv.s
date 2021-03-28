lbl_806793FC:
/* 806793FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80679400  7C 08 02 A6 */	mflr r0
/* 80679404  90 01 00 34 */	stw r0, 0x34(r1)
/* 80679408  39 61 00 30 */	addi r11, r1, 0x30
/* 8067940C  4B CE 8D CC */	b _savegpr_28
/* 80679410  7C 7C 1B 78 */	mr r28, r3
/* 80679414  3C 60 80 68 */	lis r3, lit_3789@ha
/* 80679418  3B E3 C3 FC */	addi r31, r3, lit_3789@l
/* 8067941C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80679420  83 C3 00 04 */	lwz r30, 4(r3)
/* 80679424  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80679428  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8067942C  38 80 00 08 */	li r4, 8
/* 80679430  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80679434  38 DC 01 0C */	addi r6, r28, 0x10c
/* 80679438  4B B2 A3 8C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8067943C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80679440  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80679444  80 9E 00 04 */	lwz r4, 4(r30)
/* 80679448  38 BC 01 0C */	addi r5, r28, 0x10c
/* 8067944C  4B B2 B9 54 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80679450  83 BE 00 04 */	lwz r29, 4(r30)
/* 80679454  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 80679458  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8067945C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80679460  4B 99 43 48 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80679464  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80679468  4B 99 7D 58 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8067946C  38 7D 00 58 */	addi r3, r29, 0x58
/* 80679470  80 9C 05 C8 */	lwz r4, 0x5c8(r28)
/* 80679474  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80679478  4B CB 64 08 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 8067947C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80679480  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80679484  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 80679488  EC 20 18 2A */	fadds f1, f0, f3
/* 8067948C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80679490  D0 01 00 08 */	stfs f0, 8(r1)
/* 80679494  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80679498  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8067949C  80 7C 06 80 */	lwz r3, 0x680(r28)
/* 806794A0  38 80 00 01 */	li r4, 1
/* 806794A4  7F C5 F3 78 */	mr r5, r30
/* 806794A8  38 C1 00 08 */	addi r6, r1, 8
/* 806794AC  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806794B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806794B4  C0 9C 07 A0 */	lfs f4, 0x7a0(r28)
/* 806794B8  38 FC 07 F8 */	addi r7, r28, 0x7f8
/* 806794BC  39 1C 01 0C */	addi r8, r28, 0x10c
/* 806794C0  39 20 00 00 */	li r9, 0
/* 806794C4  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806794C8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806794CC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806794D0  4B 9B 54 40 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806794D4  90 7C 06 80 */	stw r3, 0x680(r28)
/* 806794D8  38 60 00 01 */	li r3, 1
/* 806794DC  39 61 00 30 */	addi r11, r1, 0x30
/* 806794E0  4B CE 8D 44 */	b _restgpr_28
/* 806794E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806794E8  7C 08 03 A6 */	mtlr r0
/* 806794EC  38 21 00 30 */	addi r1, r1, 0x30
/* 806794F0  4E 80 00 20 */	blr 
