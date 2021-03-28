lbl_807A7504:
/* 807A7504  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807A7508  7C 08 02 A6 */	mflr r0
/* 807A750C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807A7510  39 61 00 50 */	addi r11, r1, 0x50
/* 807A7514  4B BB AC BC */	b _savegpr_26
/* 807A7518  7C 7F 1B 78 */	mr r31, r3
/* 807A751C  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807A7520  3B C3 FD 2C */	addi r30, r3, lit_3909@l
/* 807A7524  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 807A7528  28 00 00 01 */	cmplwi r0, 1
/* 807A752C  40 82 00 0C */	bne lbl_807A7538
/* 807A7530  38 60 00 01 */	li r3, 1
/* 807A7534  48 00 01 78 */	b lbl_807A76AC
lbl_807A7538:
/* 807A7538  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807A753C  83 A3 00 04 */	lwz r29, 4(r3)
/* 807A7540  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807A7544  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807A7548  38 80 00 00 */	li r4, 0
/* 807A754C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807A7550  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807A7554  4B 9F C2 70 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807A7558  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807A755C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807A7560  80 9D 00 04 */	lwz r4, 4(r29)
/* 807A7564  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807A7568  4B 9F D8 38 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807A756C  88 1F 06 E5 */	lbz r0, 0x6e5(r31)
/* 807A7570  28 00 00 00 */	cmplwi r0, 0
/* 807A7574  40 82 00 CC */	bne lbl_807A7640
/* 807A7578  C0 3F 06 B4 */	lfs f1, 0x6b4(r31)
/* 807A757C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A7580  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A7584  41 82 00 B4 */	beq lbl_807A7638
/* 807A7588  83 9D 00 04 */	lwz r28, 4(r29)
/* 807A758C  3B 40 00 00 */	li r26, 0
/* 807A7590  48 00 00 98 */	b lbl_807A7628
lbl_807A7594:
/* 807A7594  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 807A7598  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 807A759C  7F 63 00 2E */	lwzx r27, r3, r0
/* 807A75A0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807A75A4  38 80 00 00 */	li r4, 0
/* 807A75A8  81 83 00 00 */	lwz r12, 0(r3)
/* 807A75AC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807A75B0  7D 89 03 A6 */	mtctr r12
/* 807A75B4  4E 80 04 21 */	bctrl 
/* 807A75B8  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 807A75BC  FC 00 00 1E */	fctiwz f0, f0
/* 807A75C0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A75C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807A75C8  B0 03 00 00 */	sth r0, 0(r3)
/* 807A75CC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807A75D0  38 80 00 00 */	li r4, 0
/* 807A75D4  81 83 00 00 */	lwz r12, 0(r3)
/* 807A75D8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807A75DC  7D 89 03 A6 */	mtctr r12
/* 807A75E0  4E 80 04 21 */	bctrl 
/* 807A75E4  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 807A75E8  FC 00 00 1E */	fctiwz f0, f0
/* 807A75EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807A75F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807A75F4  B0 03 00 02 */	sth r0, 2(r3)
/* 807A75F8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807A75FC  38 80 00 00 */	li r4, 0
/* 807A7600  81 83 00 00 */	lwz r12, 0(r3)
/* 807A7604  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807A7608  7D 89 03 A6 */	mtctr r12
/* 807A760C  4E 80 04 21 */	bctrl 
/* 807A7610  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 807A7614  FC 00 00 1E */	fctiwz f0, f0
/* 807A7618  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807A761C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807A7620  B0 03 00 04 */	sth r0, 4(r3)
/* 807A7624  3B 5A 00 01 */	addi r26, r26, 1
lbl_807A7628:
/* 807A7628  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 807A762C  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 807A7630  7C 03 00 40 */	cmplw r3, r0
/* 807A7634  41 80 FF 60 */	blt lbl_807A7594
lbl_807A7638:
/* 807A7638  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807A763C  4B 86 9B 84 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_807A7640:
/* 807A7640  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 807A7644  28 00 00 00 */	cmplwi r0, 0
/* 807A7648  40 82 00 60 */	bne lbl_807A76A8
/* 807A764C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807A7650  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807A7654  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807A7658  EC 20 18 2A */	fadds f1, f0, f3
/* 807A765C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807A7660  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A7664  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A7668  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807A766C  80 7F 06 E0 */	lwz r3, 0x6e0(r31)
/* 807A7670  38 80 00 01 */	li r4, 1
/* 807A7674  7F A5 EB 78 */	mr r5, r29
/* 807A7678  38 C1 00 08 */	addi r6, r1, 8
/* 807A767C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 807A7680  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807A7684  C0 9F 08 10 */	lfs f4, 0x810(r31)
/* 807A7688  38 FF 08 68 */	addi r7, r31, 0x868
/* 807A768C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807A7690  39 20 00 00 */	li r9, 0
/* 807A7694  C0 BE 00 08 */	lfs f5, 8(r30)
/* 807A7698  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807A769C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807A76A0  4B 88 72 70 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807A76A4  90 7F 06 E0 */	stw r3, 0x6e0(r31)
lbl_807A76A8:
/* 807A76A8  38 60 00 01 */	li r3, 1
lbl_807A76AC:
/* 807A76AC  39 61 00 50 */	addi r11, r1, 0x50
/* 807A76B0  4B BB AB 6C */	b _restgpr_26
/* 807A76B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807A76B8  7C 08 03 A6 */	mtlr r0
/* 807A76BC  38 21 00 50 */	addi r1, r1, 0x50
/* 807A76C0  4E 80 00 20 */	blr 
