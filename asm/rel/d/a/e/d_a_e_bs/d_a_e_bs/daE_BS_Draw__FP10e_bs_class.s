lbl_8068E3D4:
/* 8068E3D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8068E3D8  7C 08 02 A6 */	mflr r0
/* 8068E3DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068E3E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8068E3E4  4B CD 3D F4 */	b _savegpr_28
/* 8068E3E8  7C 7F 1B 78 */	mr r31, r3
/* 8068E3EC  3C 60 80 69 */	lis r3, lit_3788@ha
/* 8068E3F0  3B C3 0D D8 */	addi r30, r3, lit_3788@l
/* 8068E3F4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068E3F8  83 A3 00 04 */	lwz r29, 4(r3)
/* 8068E3FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8068E400  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8068E404  38 80 00 00 */	li r4, 0
/* 8068E408  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8068E40C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8068E410  4B B1 53 B4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8068E414  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8068E418  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8068E41C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8068E420  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8068E424  4B B1 69 7C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8068E428  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068E42C  4B 98 2D 94 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8068E430  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8068E434  83 83 00 04 */	lwz r28, 4(r3)
/* 8068E438  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8068E43C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8068E440  80 9C 00 04 */	lwz r4, 4(r28)
/* 8068E444  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8068E448  4B B1 69 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8068E44C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8068E450  4B 98 22 30 */	b entryDL__14mDoExt_McaMorfFv
/* 8068E454  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 8068E458  7C 00 07 75 */	extsb. r0, r0
/* 8068E45C  41 82 00 78 */	beq lbl_8068E4D4
/* 8068E460  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8068E464  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8068E468  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8068E46C  EC 20 18 2A */	fadds f1, f0, f3
/* 8068E470  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8068E474  D0 01 00 08 */	stfs f0, 8(r1)
/* 8068E478  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8068E47C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8068E480  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 8068E484  38 80 00 01 */	li r4, 1
/* 8068E488  7F A5 EB 78 */	mr r5, r29
/* 8068E48C  38 C1 00 08 */	addi r6, r1, 8
/* 8068E490  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8068E494  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8068E498  C0 9F 07 B0 */	lfs f4, 0x7b0(r31)
/* 8068E49C  38 FF 08 08 */	addi r7, r31, 0x808
/* 8068E4A0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8068E4A4  39 20 00 00 */	li r9, 0
/* 8068E4A8  C0 BE 00 08 */	lfs f5, 8(r30)
/* 8068E4AC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8068E4B0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8068E4B4  4B 9A 04 5C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8068E4B8  90 7F 06 98 */	stw r3, 0x698(r31)
/* 8068E4BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068E4C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068E4C4  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8068E4C8  80 9F 06 98 */	lwz r4, 0x698(r31)
/* 8068E4CC  7F 85 E3 78 */	mr r5, r28
/* 8068E4D0  4B 9C 7A 4C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8068E4D4:
/* 8068E4D4  38 60 00 01 */	li r3, 1
/* 8068E4D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8068E4DC  4B CD 3D 48 */	b _restgpr_28
/* 8068E4E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068E4E4  7C 08 03 A6 */	mtlr r0
/* 8068E4E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8068E4EC  4E 80 00 20 */	blr 
