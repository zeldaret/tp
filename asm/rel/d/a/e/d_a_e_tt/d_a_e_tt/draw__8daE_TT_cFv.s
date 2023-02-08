lbl_807BD92C:
/* 807BD92C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807BD930  7C 08 02 A6 */	mflr r0
/* 807BD934  90 01 00 54 */	stw r0, 0x54(r1)
/* 807BD938  39 61 00 50 */	addi r11, r1, 0x50
/* 807BD93C  4B BA 48 95 */	bl _savegpr_26
/* 807BD940  7C 7F 1B 78 */	mr r31, r3
/* 807BD944  3C 60 80 7C */	lis r3, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BD948  3B C3 1F B8 */	addi r30, r3, lit_3908@l /* 0x807C1FB8@l */
/* 807BD94C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807BD950  83 A3 00 04 */	lwz r29, 4(r3)
/* 807BD954  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807BD958  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807BD95C  38 80 00 00 */	li r4, 0
/* 807BD960  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807BD964  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807BD968  4B 9E 5E 5D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807BD96C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807BD970  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807BD974  80 9D 00 04 */	lwz r4, 4(r29)
/* 807BD978  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807BD97C  4B 9E 74 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807BD980  C0 3F 06 C8 */	lfs f1, 0x6c8(r31)
/* 807BD984  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807BD988  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BD98C  41 82 00 B4 */	beq lbl_807BDA40
/* 807BD990  83 9D 00 04 */	lwz r28, 4(r29)
/* 807BD994  3B 40 00 00 */	li r26, 0
/* 807BD998  48 00 00 98 */	b lbl_807BDA30
lbl_807BD99C:
/* 807BD99C  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 807BD9A0  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 807BD9A4  7F 63 00 2E */	lwzx r27, r3, r0
/* 807BD9A8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807BD9AC  38 80 00 00 */	li r4, 0
/* 807BD9B0  81 83 00 00 */	lwz r12, 0(r3)
/* 807BD9B4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807BD9B8  7D 89 03 A6 */	mtctr r12
/* 807BD9BC  4E 80 04 21 */	bctrl 
/* 807BD9C0  C0 1F 06 C8 */	lfs f0, 0x6c8(r31)
/* 807BD9C4  FC 00 00 1E */	fctiwz f0, f0
/* 807BD9C8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807BD9CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807BD9D0  B0 03 00 00 */	sth r0, 0(r3)
/* 807BD9D4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807BD9D8  38 80 00 00 */	li r4, 0
/* 807BD9DC  81 83 00 00 */	lwz r12, 0(r3)
/* 807BD9E0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807BD9E4  7D 89 03 A6 */	mtctr r12
/* 807BD9E8  4E 80 04 21 */	bctrl 
/* 807BD9EC  C0 1F 06 C8 */	lfs f0, 0x6c8(r31)
/* 807BD9F0  FC 00 00 1E */	fctiwz f0, f0
/* 807BD9F4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807BD9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BD9FC  B0 03 00 02 */	sth r0, 2(r3)
/* 807BDA00  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807BDA04  38 80 00 00 */	li r4, 0
/* 807BDA08  81 83 00 00 */	lwz r12, 0(r3)
/* 807BDA0C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807BDA10  7D 89 03 A6 */	mtctr r12
/* 807BDA14  4E 80 04 21 */	bctrl 
/* 807BDA18  C0 1F 06 C8 */	lfs f0, 0x6c8(r31)
/* 807BDA1C  FC 00 00 1E */	fctiwz f0, f0
/* 807BDA20  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807BDA24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807BDA28  B0 03 00 04 */	sth r0, 4(r3)
/* 807BDA2C  3B 5A 00 01 */	addi r26, r26, 1
lbl_807BDA30:
/* 807BDA30  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 807BDA34  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 807BDA38  7C 03 00 40 */	cmplw r3, r0
/* 807BDA3C  41 80 FF 60 */	blt lbl_807BD99C
lbl_807BDA40:
/* 807BDA40  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807BDA44  4B 85 37 7D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807BDA48  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807BDA4C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807BDA50  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807BDA54  EC 20 18 2A */	fadds f1, f0, f3
/* 807BDA58  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807BDA5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807BDA60  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807BDA64  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807BDA68  80 7F 06 C0 */	lwz r3, 0x6c0(r31)
/* 807BDA6C  38 80 00 01 */	li r4, 1
/* 807BDA70  7F A5 EB 78 */	mr r5, r29
/* 807BDA74  38 C1 00 08 */	addi r6, r1, 8
/* 807BDA78  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807BDA7C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807BDA80  C0 9F 07 D4 */	lfs f4, 0x7d4(r31)
/* 807BDA84  38 FF 08 2C */	addi r7, r31, 0x82c
/* 807BDA88  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807BDA8C  39 20 00 00 */	li r9, 0
/* 807BDA90  C0 BE 00 08 */	lfs f5, 8(r30)
/* 807BDA94  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807BDA98  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807BDA9C  4B 87 0E 75 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807BDAA0  90 7F 06 C0 */	stw r3, 0x6c0(r31)
/* 807BDAA4  38 60 00 01 */	li r3, 1
/* 807BDAA8  39 61 00 50 */	addi r11, r1, 0x50
/* 807BDAAC  4B BA 47 71 */	bl _restgpr_26
/* 807BDAB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807BDAB4  7C 08 03 A6 */	mtlr r0
/* 807BDAB8  38 21 00 50 */	addi r1, r1, 0x50
/* 807BDABC  4E 80 00 20 */	blr 
