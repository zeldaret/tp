lbl_806EA790:
/* 806EA790  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806EA794  7C 08 02 A6 */	mflr r0
/* 806EA798  90 01 00 54 */	stw r0, 0x54(r1)
/* 806EA79C  39 61 00 50 */	addi r11, r1, 0x50
/* 806EA7A0  4B C7 7A 30 */	b _savegpr_26
/* 806EA7A4  7C 7D 1B 78 */	mr r29, r3
/* 806EA7A8  3C 60 80 6F */	lis r3, lit_3966@ha
/* 806EA7AC  3B E3 08 60 */	addi r31, r3, lit_3966@l
/* 806EA7B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806EA7B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806EA7B8  38 80 00 00 */	li r4, 0
/* 806EA7BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806EA7C0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806EA7C4  4B AB 90 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806EA7C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806EA7CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806EA7D0  80 9D 05 C4 */	lwz r4, 0x5c4(r29)
/* 806EA7D4  80 84 00 04 */	lwz r4, 4(r4)
/* 806EA7D8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806EA7DC  4B AB A5 C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806EA7E0  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 806EA7E4  4B 92 34 E0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 806EA7E8  88 1D 06 E8 */	lbz r0, 0x6e8(r29)
/* 806EA7EC  28 00 00 00 */	cmplwi r0, 0
/* 806EA7F0  41 82 00 0C */	beq lbl_806EA7FC
/* 806EA7F4  38 60 00 01 */	li r3, 1
/* 806EA7F8  48 00 01 88 */	b lbl_806EA980
lbl_806EA7FC:
/* 806EA7FC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806EA800  83 C3 00 04 */	lwz r30, 4(r3)
/* 806EA804  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806EA808  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806EA80C  80 9E 00 04 */	lwz r4, 4(r30)
/* 806EA810  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806EA814  4B AB A5 8C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806EA818  88 1D 06 F4 */	lbz r0, 0x6f4(r29)
/* 806EA81C  28 00 00 00 */	cmplwi r0, 0
/* 806EA820  41 82 00 B4 */	beq lbl_806EA8D4
/* 806EA824  83 9E 00 04 */	lwz r28, 4(r30)
/* 806EA828  3B 40 00 00 */	li r26, 0
/* 806EA82C  48 00 00 98 */	b lbl_806EA8C4
lbl_806EA830:
/* 806EA830  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806EA834  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806EA838  7F 63 00 2E */	lwzx r27, r3, r0
/* 806EA83C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806EA840  38 80 00 00 */	li r4, 0
/* 806EA844  81 83 00 00 */	lwz r12, 0(r3)
/* 806EA848  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806EA84C  7D 89 03 A6 */	mtctr r12
/* 806EA850  4E 80 04 21 */	bctrl 
/* 806EA854  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 806EA858  FC 00 00 1E */	fctiwz f0, f0
/* 806EA85C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806EA860  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806EA864  B0 03 00 00 */	sth r0, 0(r3)
/* 806EA868  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806EA86C  38 80 00 00 */	li r4, 0
/* 806EA870  81 83 00 00 */	lwz r12, 0(r3)
/* 806EA874  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806EA878  7D 89 03 A6 */	mtctr r12
/* 806EA87C  4E 80 04 21 */	bctrl 
/* 806EA880  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 806EA884  FC 00 00 1E */	fctiwz f0, f0
/* 806EA888  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806EA88C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806EA890  B0 03 00 02 */	sth r0, 2(r3)
/* 806EA894  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806EA898  38 80 00 00 */	li r4, 0
/* 806EA89C  81 83 00 00 */	lwz r12, 0(r3)
/* 806EA8A0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806EA8A4  7D 89 03 A6 */	mtctr r12
/* 806EA8A8  4E 80 04 21 */	bctrl 
/* 806EA8AC  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 806EA8B0  FC 00 00 1E */	fctiwz f0, f0
/* 806EA8B4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806EA8B8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806EA8BC  B0 03 00 04 */	sth r0, 4(r3)
/* 806EA8C0  3B 5A 00 01 */	addi r26, r26, 1
lbl_806EA8C4:
/* 806EA8C4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806EA8C8  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 806EA8CC  7C 03 00 40 */	cmplw r3, r0
/* 806EA8D0  41 80 FF 60 */	blt lbl_806EA830
lbl_806EA8D4:
/* 806EA8D4  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806EA8D8  4B 92 68 E8 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806EA8DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806EA8E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806EA8E4  38 80 00 10 */	li r4, 0x10
/* 806EA8E8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806EA8EC  38 DD 06 F8 */	addi r6, r29, 0x6f8
/* 806EA8F0  4B AB 8E D4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806EA8F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806EA8F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806EA8FC  80 9D 05 C0 */	lwz r4, 0x5c0(r29)
/* 806EA900  80 84 00 04 */	lwz r4, 4(r4)
/* 806EA904  38 BD 06 F8 */	addi r5, r29, 0x6f8
/* 806EA908  4B AB A4 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806EA90C  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806EA910  4B 92 33 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 806EA914  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806EA918  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806EA91C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806EA920  EC 20 18 2A */	fadds f1, f0, f3
/* 806EA924  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806EA928  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EA92C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806EA930  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806EA934  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 806EA938  28 00 00 00 */	cmplwi r0, 0
/* 806EA93C  40 82 00 40 */	bne lbl_806EA97C
/* 806EA940  80 7D 06 D0 */	lwz r3, 0x6d0(r29)
/* 806EA944  38 80 00 01 */	li r4, 1
/* 806EA948  7F C5 F3 78 */	mr r5, r30
/* 806EA94C  38 C1 00 08 */	addi r6, r1, 8
/* 806EA950  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806EA954  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806EA958  C0 9D 0B 90 */	lfs f4, 0xb90(r29)
/* 806EA95C  38 FD 0B E8 */	addi r7, r29, 0xbe8
/* 806EA960  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806EA964  39 20 00 00 */	li r9, 0
/* 806EA968  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806EA96C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806EA970  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806EA974  4B 94 3F 9C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806EA978  90 7D 06 D0 */	stw r3, 0x6d0(r29)
lbl_806EA97C:
/* 806EA97C  38 60 00 01 */	li r3, 1
lbl_806EA980:
/* 806EA980  39 61 00 50 */	addi r11, r1, 0x50
/* 806EA984  4B C7 78 98 */	b _restgpr_26
/* 806EA988  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806EA98C  7C 08 03 A6 */	mtlr r0
/* 806EA990  38 21 00 50 */	addi r1, r1, 0x50
/* 806EA994  4E 80 00 20 */	blr 
