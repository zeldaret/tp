lbl_804EFC3C:
/* 804EFC3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EFC40  7C 08 02 A6 */	mflr r0
/* 804EFC44  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EFC48  39 61 00 40 */	addi r11, r1, 0x40
/* 804EFC4C  4B E7 25 88 */	b _savegpr_27
/* 804EFC50  7C 7D 1B 78 */	mr r29, r3
/* 804EFC54  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804EFC58  3B E3 A6 BC */	addi r31, r3, lit_3777@l
/* 804EFC5C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 804EFC60  83 C3 00 04 */	lwz r30, 4(r3)
/* 804EFC64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804EFC68  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804EFC6C  38 80 00 00 */	li r4, 0
/* 804EFC70  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804EFC74  38 DD 01 0C */	addi r6, r29, 0x10c
/* 804EFC78  4B CB 3B 4C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804EFC7C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804EFC80  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804EFC84  80 9E 00 04 */	lwz r4, 4(r30)
/* 804EFC88  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804EFC8C  4B CB 51 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804EFC90  80 9E 00 04 */	lwz r4, 4(r30)
/* 804EFC94  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 804EFC98  54 00 10 3A */	slwi r0, r0, 2
/* 804EFC9C  7C 7D 02 14 */	add r3, r29, r0
/* 804EFCA0  80 63 05 D4 */	lwz r3, 0x5d4(r3)
/* 804EFCA4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFCA8  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFCAC  4B B1 DA 2C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 804EFCB0  80 9E 00 04 */	lwz r4, 4(r30)
/* 804EFCB4  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 804EFCB8  54 00 10 3A */	slwi r0, r0, 2
/* 804EFCBC  7C 7D 02 14 */	add r3, r29, r0
/* 804EFCC0  80 63 05 F8 */	lwz r3, 0x5f8(r3)
/* 804EFCC4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFCC8  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFCCC  4B B1 DA DC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 804EFCD0  83 9E 00 04 */	lwz r28, 4(r30)
/* 804EFCD4  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 804EFCD8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 804EFCDC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804EFCE0  38 80 00 00 */	li r4, 0
/* 804EFCE4  81 83 00 00 */	lwz r12, 0(r3)
/* 804EFCE8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804EFCEC  7D 89 03 A6 */	mtctr r12
/* 804EFCF0  4E 80 04 21 */	bctrl 
/* 804EFCF4  C0 1D 07 74 */	lfs f0, 0x774(r29)
/* 804EFCF8  FC 00 00 1E */	fctiwz f0, f0
/* 804EFCFC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804EFD00  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804EFD04  B0 03 00 00 */	sth r0, 0(r3)
/* 804EFD08  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 804EFD0C  83 83 00 00 */	lwz r28, 0(r3)
/* 804EFD10  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 804EFD14  C0 1D 07 78 */	lfs f0, 0x778(r29)
/* 804EFD18  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EFD1C  FC 00 00 1E */	fctiwz f0, f0
/* 804EFD20  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804EFD24  83 61 00 24 */	lwz r27, 0x24(r1)
/* 804EFD28  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 804EFD2C  38 80 00 02 */	li r4, 2
/* 804EFD30  81 83 00 00 */	lwz r12, 0(r3)
/* 804EFD34  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804EFD38  7D 89 03 A6 */	mtctr r12
/* 804EFD3C  4E 80 04 21 */	bctrl 
/* 804EFD40  B3 63 00 00 */	sth r27, 0(r3)
/* 804EFD44  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 804EFD48  38 80 00 02 */	li r4, 2
/* 804EFD4C  81 83 00 00 */	lwz r12, 0(r3)
/* 804EFD50  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804EFD54  7D 89 03 A6 */	mtctr r12
/* 804EFD58  4E 80 04 21 */	bctrl 
/* 804EFD5C  B3 63 00 02 */	sth r27, 2(r3)
/* 804EFD60  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 804EFD64  38 80 00 02 */	li r4, 2
/* 804EFD68  81 83 00 00 */	lwz r12, 0(r3)
/* 804EFD6C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804EFD70  7D 89 03 A6 */	mtctr r12
/* 804EFD74  4E 80 04 21 */	bctrl 
/* 804EFD78  B3 63 00 04 */	sth r27, 4(r3)
/* 804EFD7C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 804EFD80  4B B2 09 00 */	b entryDL__14mDoExt_McaMorfFv
/* 804EFD84  88 1D 18 2D */	lbz r0, 0x182d(r29)
/* 804EFD88  7C 00 07 75 */	extsb. r0, r0
/* 804EFD8C  40 82 00 64 */	bne lbl_804EFDF0
/* 804EFD90  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804EFD94  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804EFD98  80 9D 07 60 */	lwz r4, 0x760(r29)
/* 804EFD9C  80 84 00 04 */	lwz r4, 4(r4)
/* 804EFDA0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804EFDA4  4B CB 4F FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804EFDA8  80 7D 07 60 */	lwz r3, 0x760(r29)
/* 804EFDAC  80 83 00 04 */	lwz r4, 4(r3)
/* 804EFDB0  7F A3 EB 78 */	mr r3, r29
/* 804EFDB4  4B B2 D6 78 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 804EFDB8  80 7D 07 60 */	lwz r3, 0x760(r29)
/* 804EFDBC  80 83 00 04 */	lwz r4, 4(r3)
/* 804EFDC0  80 7D 07 64 */	lwz r3, 0x764(r29)
/* 804EFDC4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFDC8  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFDCC  4B B1 D9 0C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 804EFDD0  80 7D 07 60 */	lwz r3, 0x760(r29)
/* 804EFDD4  80 83 00 04 */	lwz r4, 4(r3)
/* 804EFDD8  80 7D 07 68 */	lwz r3, 0x768(r29)
/* 804EFDDC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFDE0  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFDE4  4B B1 D9 C4 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 804EFDE8  80 7D 07 60 */	lwz r3, 0x760(r29)
/* 804EFDEC  4B B1 DE D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_804EFDF0:
/* 804EFDF0  88 1D 07 92 */	lbz r0, 0x792(r29)
/* 804EFDF4  7C 00 07 75 */	extsb. r0, r0
/* 804EFDF8  40 82 00 7C */	bne lbl_804EFE74
/* 804EFDFC  80 7D 07 A8 */	lwz r3, 0x7a8(r29)
/* 804EFE00  3C 03 FF FB */	addis r0, r3, 0xfffb
/* 804EFE04  28 00 64 FF */	cmplwi r0, 0x64ff
/* 804EFE08  41 82 00 6C */	beq lbl_804EFE74
/* 804EFE0C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 804EFE10  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804EFE14  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 804EFE18  EC 20 18 2A */	fadds f1, f0, f3
/* 804EFE1C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804EFE20  D0 01 00 08 */	stfs f0, 8(r1)
/* 804EFE24  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804EFE28  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804EFE2C  38 80 00 01 */	li r4, 1
/* 804EFE30  7F C5 F3 78 */	mr r5, r30
/* 804EFE34  38 C1 00 08 */	addi r6, r1, 8
/* 804EFE38  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 804EFE3C  3C E0 80 50 */	lis r7, l_HIO@ha
/* 804EFE40  38 E7 AE A4 */	addi r7, r7, l_HIO@l
/* 804EFE44  C0 07 00 08 */	lfs f0, 8(r7)
/* 804EFE48  EC 21 00 32 */	fmuls f1, f1, f0
/* 804EFE4C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 804EFE50  C0 9D 08 E4 */	lfs f4, 0x8e4(r29)
/* 804EFE54  38 FD 09 3C */	addi r7, r29, 0x93c
/* 804EFE58  39 1D 01 0C */	addi r8, r29, 0x10c
/* 804EFE5C  39 20 00 00 */	li r9, 0
/* 804EFE60  C0 BF 00 00 */	lfs f5, 0(r31)
/* 804EFE64  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804EFE68  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804EFE6C  4B B3 EA A4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804EFE70  90 7D 07 A8 */	stw r3, 0x7a8(r29)
lbl_804EFE74:
/* 804EFE74  88 1D 06 24 */	lbz r0, 0x624(r29)
/* 804EFE78  7C 00 07 75 */	extsb. r0, r0
/* 804EFE7C  41 82 00 3C */	beq lbl_804EFEB8
/* 804EFE80  80 7D 06 28 */	lwz r3, 0x628(r29)
/* 804EFE84  83 83 00 04 */	lwz r28, 4(r3)
/* 804EFE88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804EFE8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804EFE90  80 9C 00 04 */	lwz r4, 4(r28)
/* 804EFE94  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804EFE98  4B CB 4F 08 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804EFE9C  80 9C 00 04 */	lwz r4, 4(r28)
/* 804EFEA0  80 7D 06 30 */	lwz r3, 0x630(r29)
/* 804EFEA4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFEA8  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFEAC  4B B1 D8 FC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 804EFEB0  80 7D 06 28 */	lwz r3, 0x628(r29)
/* 804EFEB4  4B B2 07 CC */	b entryDL__14mDoExt_McaMorfFv
lbl_804EFEB8:
/* 804EFEB8  A8 1D 07 90 */	lha r0, 0x790(r29)
/* 804EFEBC  2C 00 00 00 */	cmpwi r0, 0
/* 804EFEC0  41 82 00 60 */	beq lbl_804EFF20
/* 804EFEC4  3B 60 00 00 */	li r27, 0
/* 804EFEC8  3B C0 00 00 */	li r30, 0
lbl_804EFECC:
/* 804EFECC  7F FD F2 14 */	add r31, r29, r30
/* 804EFED0  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 804EFED4  83 83 00 04 */	lwz r28, 4(r3)
/* 804EFED8  80 9C 00 04 */	lwz r4, 4(r28)
/* 804EFEDC  80 7F 07 84 */	lwz r3, 0x784(r31)
/* 804EFEE0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFEE4  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFEE8  4B B1 D7 F0 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 804EFEEC  2C 1B 00 00 */	cmpwi r27, 0
/* 804EFEF0  41 82 00 18 */	beq lbl_804EFF08
/* 804EFEF4  80 9C 00 04 */	lwz r4, 4(r28)
/* 804EFEF8  80 7D 07 8C */	lwz r3, 0x78c(r29)
/* 804EFEFC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804EFF00  38 84 00 58 */	addi r4, r4, 0x58
/* 804EFF04  4B B1 D8 A4 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_804EFF08:
/* 804EFF08  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 804EFF0C  4B B2 07 74 */	b entryDL__14mDoExt_McaMorfFv
/* 804EFF10  3B 7B 00 01 */	addi r27, r27, 1
/* 804EFF14  2C 1B 00 02 */	cmpwi r27, 2
/* 804EFF18  3B DE 00 04 */	addi r30, r30, 4
/* 804EFF1C  41 80 FF B0 */	blt lbl_804EFECC
lbl_804EFF20:
/* 804EFF20  3B 60 00 00 */	li r27, 0
/* 804EFF24  3B C0 00 00 */	li r30, 0
lbl_804EFF28:
/* 804EFF28  7F A3 EB 78 */	mr r3, r29
/* 804EFF2C  38 9E 23 BC */	addi r4, r30, 0x23bc
/* 804EFF30  7C 9D 22 14 */	add r4, r29, r4
/* 804EFF34  7F 65 DB 78 */	mr r5, r27
/* 804EFF38  4B FF FA 65 */	bl chain_draw__FP10e_fm_classP7chain_si
/* 804EFF3C  3B 7B 00 01 */	addi r27, r27, 1
/* 804EFF40  2C 1B 00 04 */	cmpwi r27, 4
/* 804EFF44  3B DE 61 D4 */	addi r30, r30, 0x61d4
/* 804EFF48  41 80 FF E0 */	blt lbl_804EFF28
/* 804EFF4C  38 60 00 01 */	li r3, 1
/* 804EFF50  39 61 00 40 */	addi r11, r1, 0x40
/* 804EFF54  4B E7 22 CC */	b _restgpr_27
/* 804EFF58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EFF5C  7C 08 03 A6 */	mtlr r0
/* 804EFF60  38 21 00 40 */	addi r1, r1, 0x40
/* 804EFF64  4E 80 00 20 */	blr 
