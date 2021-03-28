lbl_80AF60B8:
/* 80AF60B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF60BC  7C 08 02 A6 */	mflr r0
/* 80AF60C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF60C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF60C8  4B 86 C1 14 */	b _savegpr_29
/* 80AF60CC  7C 7D 1B 78 */	mr r29, r3
/* 80AF60D0  3C 60 80 AF */	lis r3, lit_3768@ha
/* 80AF60D4  3B E3 74 08 */	addi r31, r3, lit_3768@l
/* 80AF60D8  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80AF60DC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80AF60E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AF60E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AF60E8  38 80 00 00 */	li r4, 0
/* 80AF60EC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80AF60F0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80AF60F4  4B 6A D6 D0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80AF60F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AF60FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AF6100  80 9E 00 04 */	lwz r4, 4(r30)
/* 80AF6104  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80AF6108  4B 6A EC 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AF610C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80AF6110  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80AF6114  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80AF6118  38 84 00 58 */	addi r4, r4, 0x58
/* 80AF611C  4B 51 75 BC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80AF6120  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80AF6124  4B 51 A5 5C */	b entryDL__14mDoExt_McaMorfFv
/* 80AF6128  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80AF612C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AF6130  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80AF6134  EC 20 18 2A */	fadds f1, f0, f3
/* 80AF6138  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80AF613C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AF6140  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AF6144  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80AF6148  80 7D 06 2C */	lwz r3, 0x62c(r29)
/* 80AF614C  38 80 00 01 */	li r4, 1
/* 80AF6150  7F C5 F3 78 */	mr r5, r30
/* 80AF6154  38 C1 00 08 */	addi r6, r1, 8
/* 80AF6158  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80AF615C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80AF6160  3C E0 80 AF */	lis r7, l_HIO@ha
/* 80AF6164  38 E7 75 D0 */	addi r7, r7, l_HIO@l
/* 80AF6168  C0 07 00 08 */	lfs f0, 8(r7)
/* 80AF616C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80AF6170  C0 9D 07 14 */	lfs f4, 0x714(r29)
/* 80AF6174  38 FD 07 6C */	addi r7, r29, 0x76c
/* 80AF6178  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80AF617C  39 20 00 00 */	li r9, 0
/* 80AF6180  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 80AF6184  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80AF6188  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80AF618C  4B 53 87 84 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80AF6190  90 7D 06 2C */	stw r3, 0x62c(r29)
/* 80AF6194  38 60 00 01 */	li r3, 1
/* 80AF6198  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF619C  4B 86 C0 8C */	b _restgpr_29
/* 80AF61A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF61A4  7C 08 03 A6 */	mtlr r0
/* 80AF61A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF61AC  4E 80 00 20 */	blr 
