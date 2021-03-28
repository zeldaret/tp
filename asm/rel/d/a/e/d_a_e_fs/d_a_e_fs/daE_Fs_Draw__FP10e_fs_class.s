lbl_806BBBBC:
/* 806BBBBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BBBC0  7C 08 02 A6 */	mflr r0
/* 806BBBC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BBBC8  39 61 00 30 */	addi r11, r1, 0x30
/* 806BBBCC  4B CA 66 04 */	b _savegpr_26
/* 806BBBD0  7C 7F 1B 78 */	mr r31, r3
/* 806BBBD4  3C 60 80 6C */	lis r3, lit_3917@ha
/* 806BBBD8  3B A3 E4 8C */	addi r29, r3, lit_3917@l
/* 806BBBDC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806BBBE0  83 83 00 04 */	lwz r28, 4(r3)
/* 806BBBE4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806BBBE8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806BBBEC  38 80 00 00 */	li r4, 0
/* 806BBBF0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806BBBF4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806BBBF8  4B AE 7B CC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806BBBFC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806BBC00  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806BBC04  80 9C 00 04 */	lwz r4, 4(r28)
/* 806BBC08  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806BBC0C  4B AE 91 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806BBC10  83 7C 00 04 */	lwz r27, 4(r28)
/* 806BBC14  3B 40 00 00 */	li r26, 0
/* 806BBC18  3B C0 00 FF */	li r30, 0xff
/* 806BBC1C  48 00 00 30 */	b lbl_806BBC4C
lbl_806BBC20:
/* 806BBC20  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 806BBC24  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806BBC28  7C 63 00 2E */	lwzx r3, r3, r0
/* 806BBC2C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 806BBC30  38 80 00 03 */	li r4, 3
/* 806BBC34  81 83 00 00 */	lwz r12, 0(r3)
/* 806BBC38  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806BBC3C  7D 89 03 A6 */	mtctr r12
/* 806BBC40  4E 80 04 21 */	bctrl 
/* 806BBC44  9B C3 00 03 */	stb r30, 3(r3)
/* 806BBC48  3B 5A 00 01 */	addi r26, r26, 1
lbl_806BBC4C:
/* 806BBC4C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806BBC50  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 806BBC54  7C 03 00 40 */	cmplw r3, r0
/* 806BBC58  41 80 FF C8 */	blt lbl_806BBC20
/* 806BBC5C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806BBC60  4B 95 55 60 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806BBC64  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806BBC68  C0 1D 00 00 */	lfs f0, 0(r29)
/* 806BBC6C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806BBC70  EC 20 18 2A */	fadds f1, f0, f3
/* 806BBC74  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806BBC78  D0 01 00 08 */	stfs f0, 8(r1)
/* 806BBC7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806BBC80  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806BBC84  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 806BBC88  38 80 00 01 */	li r4, 1
/* 806BBC8C  7F 85 E3 78 */	mr r5, r28
/* 806BBC90  38 C1 00 08 */	addi r6, r1, 8
/* 806BBC94  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 806BBC98  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 806BBC9C  C0 9F 07 6C */	lfs f4, 0x76c(r31)
/* 806BBCA0  38 FF 07 C4 */	addi r7, r31, 0x7c4
/* 806BBCA4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806BBCA8  39 20 00 00 */	li r9, 0
/* 806BBCAC  C0 BD 00 08 */	lfs f5, 8(r29)
/* 806BBCB0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806BBCB4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806BBCB8  4B 97 2C 58 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806BBCBC  90 7F 06 84 */	stw r3, 0x684(r31)
/* 806BBCC0  38 60 00 01 */	li r3, 1
/* 806BBCC4  39 61 00 30 */	addi r11, r1, 0x30
/* 806BBCC8  4B CA 65 54 */	b _restgpr_26
/* 806BBCCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BBCD0  7C 08 03 A6 */	mtlr r0
/* 806BBCD4  38 21 00 30 */	addi r1, r1, 0x30
/* 806BBCD8  4E 80 00 20 */	blr 
