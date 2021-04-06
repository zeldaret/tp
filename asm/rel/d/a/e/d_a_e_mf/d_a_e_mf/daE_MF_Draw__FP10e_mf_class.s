lbl_8070AD94:
/* 8070AD94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8070AD98  7C 08 02 A6 */	mflr r0
/* 8070AD9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8070ADA0  39 61 00 50 */	addi r11, r1, 0x50
/* 8070ADA4  4B C5 74 2D */	bl _savegpr_26
/* 8070ADA8  7C 7D 1B 78 */	mr r29, r3
/* 8070ADAC  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070ADB0  3B E3 39 74 */	addi r31, r3, lit_3828@l /* 0x80713974@l */
/* 8070ADB4  88 1D 07 28 */	lbz r0, 0x728(r29)
/* 8070ADB8  28 00 00 00 */	cmplwi r0, 0
/* 8070ADBC  41 82 00 0C */	beq lbl_8070ADC8
/* 8070ADC0  38 60 00 01 */	li r3, 1
/* 8070ADC4  48 00 02 60 */	b lbl_8070B024
lbl_8070ADC8:
/* 8070ADC8  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070ADCC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8070ADD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8070ADD4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8070ADD8  38 80 00 00 */	li r4, 0
/* 8070ADDC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8070ADE0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8070ADE4  4B A9 89 E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8070ADE8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8070ADEC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8070ADF0  80 9E 00 04 */	lwz r4, 4(r30)
/* 8070ADF4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8070ADF8  4B A9 9F A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8070ADFC  88 1D 06 A4 */	lbz r0, 0x6a4(r29)
/* 8070AE00  7C 00 07 75 */	extsb. r0, r0
/* 8070AE04  41 82 00 B4 */	beq lbl_8070AEB8
/* 8070AE08  83 9E 00 04 */	lwz r28, 4(r30)
/* 8070AE0C  3B 40 00 00 */	li r26, 0
/* 8070AE10  48 00 00 98 */	b lbl_8070AEA8
lbl_8070AE14:
/* 8070AE14  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8070AE18  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8070AE1C  7F 63 00 2E */	lwzx r27, r3, r0
/* 8070AE20  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8070AE24  38 80 00 00 */	li r4, 0
/* 8070AE28  81 83 00 00 */	lwz r12, 0(r3)
/* 8070AE2C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8070AE30  7D 89 03 A6 */	mtctr r12
/* 8070AE34  4E 80 04 21 */	bctrl 
/* 8070AE38  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 8070AE3C  FC 00 00 1E */	fctiwz f0, f0
/* 8070AE40  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8070AE44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8070AE48  B0 03 00 00 */	sth r0, 0(r3)
/* 8070AE4C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8070AE50  38 80 00 00 */	li r4, 0
/* 8070AE54  81 83 00 00 */	lwz r12, 0(r3)
/* 8070AE58  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8070AE5C  7D 89 03 A6 */	mtctr r12
/* 8070AE60  4E 80 04 21 */	bctrl 
/* 8070AE64  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 8070AE68  FC 00 00 1E */	fctiwz f0, f0
/* 8070AE6C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8070AE70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070AE74  B0 03 00 02 */	sth r0, 2(r3)
/* 8070AE78  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8070AE7C  38 80 00 00 */	li r4, 0
/* 8070AE80  81 83 00 00 */	lwz r12, 0(r3)
/* 8070AE84  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8070AE88  7D 89 03 A6 */	mtctr r12
/* 8070AE8C  4E 80 04 21 */	bctrl 
/* 8070AE90  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 8070AE94  FC 00 00 1E */	fctiwz f0, f0
/* 8070AE98  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070AE9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070AEA0  B0 03 00 04 */	sth r0, 4(r3)
/* 8070AEA4  3B 5A 00 01 */	addi r26, r26, 1
lbl_8070AEA8:
/* 8070AEA8  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8070AEAC  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 8070AEB0  7C 03 00 40 */	cmplw r3, r0
/* 8070AEB4  41 80 FF 60 */	blt lbl_8070AE14
lbl_8070AEB8:
/* 8070AEB8  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8070AEBC  4B 90 63 05 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8070AEC0  88 1D 06 A4 */	lbz r0, 0x6a4(r29)
/* 8070AEC4  7C 00 07 75 */	extsb. r0, r0
/* 8070AEC8  41 82 00 90 */	beq lbl_8070AF58
/* 8070AECC  83 7E 00 04 */	lwz r27, 4(r30)
/* 8070AED0  3B 40 00 00 */	li r26, 0
/* 8070AED4  48 00 00 74 */	b lbl_8070AF48
lbl_8070AED8:
/* 8070AED8  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 8070AEDC  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8070AEE0  7F 83 00 2E */	lwzx r28, r3, r0
/* 8070AEE4  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8070AEE8  38 80 00 00 */	li r4, 0
/* 8070AEEC  81 83 00 00 */	lwz r12, 0(r3)
/* 8070AEF0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8070AEF4  7D 89 03 A6 */	mtctr r12
/* 8070AEF8  4E 80 04 21 */	bctrl 
/* 8070AEFC  38 00 00 00 */	li r0, 0
/* 8070AF00  B0 03 00 00 */	sth r0, 0(r3)
/* 8070AF04  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8070AF08  38 80 00 00 */	li r4, 0
/* 8070AF0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8070AF10  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8070AF14  7D 89 03 A6 */	mtctr r12
/* 8070AF18  4E 80 04 21 */	bctrl 
/* 8070AF1C  38 00 00 00 */	li r0, 0
/* 8070AF20  B0 03 00 02 */	sth r0, 2(r3)
/* 8070AF24  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8070AF28  38 80 00 00 */	li r4, 0
/* 8070AF2C  81 83 00 00 */	lwz r12, 0(r3)
/* 8070AF30  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8070AF34  7D 89 03 A6 */	mtctr r12
/* 8070AF38  4E 80 04 21 */	bctrl 
/* 8070AF3C  38 00 00 00 */	li r0, 0
/* 8070AF40  B0 03 00 04 */	sth r0, 4(r3)
/* 8070AF44  3B 5A 00 01 */	addi r26, r26, 1
lbl_8070AF48:
/* 8070AF48  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8070AF4C  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 8070AF50  7C 03 00 40 */	cmplw r3, r0
/* 8070AF54  41 80 FF 84 */	blt lbl_8070AED8
lbl_8070AF58:
/* 8070AF58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8070AF5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8070AF60  80 9D 05 E4 */	lwz r4, 0x5e4(r29)
/* 8070AF64  80 84 00 04 */	lwz r4, 4(r4)
/* 8070AF68  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8070AF6C  4B A9 9E 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8070AF70  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 8070AF74  4B 90 2D 51 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8070AF78  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8070AF7C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8070AF80  80 9D 06 8C */	lwz r4, 0x68c(r29)
/* 8070AF84  80 84 00 04 */	lwz r4, 4(r4)
/* 8070AF88  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8070AF8C  4B A9 9E 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8070AF90  80 7D 06 8C */	lwz r3, 0x68c(r29)
/* 8070AF94  4B 90 2D 31 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8070AF98  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8070AF9C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070AFA0  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8070AFA4  EC 20 18 2A */	fadds f1, f0, f3
/* 8070AFA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8070AFAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8070AFB0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070AFB4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8070AFB8  80 7D 06 BC */	lwz r3, 0x6bc(r29)
/* 8070AFBC  38 80 00 01 */	li r4, 1
/* 8070AFC0  7F C5 F3 78 */	mr r5, r30
/* 8070AFC4  38 C1 00 08 */	addi r6, r1, 8
/* 8070AFC8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8070AFCC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8070AFD0  C0 9D 08 FC */	lfs f4, 0x8fc(r29)
/* 8070AFD4  38 FD 09 54 */	addi r7, r29, 0x954
/* 8070AFD8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8070AFDC  39 20 00 00 */	li r9, 0
/* 8070AFE0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8070AFE4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8070AFE8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8070AFEC  4B 92 39 25 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8070AFF0  90 7D 06 BC */	stw r3, 0x6bc(r29)
/* 8070AFF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070AFF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070AFFC  3B 63 61 C0 */	addi r27, r3, 0x61c0
/* 8070B000  7F 63 DB 78 */	mr r3, r27
/* 8070B004  80 9D 06 BC */	lwz r4, 0x6bc(r29)
/* 8070B008  80 BD 05 E4 */	lwz r5, 0x5e4(r29)
/* 8070B00C  4B 94 AF 11 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 8070B010  7F 63 DB 78 */	mr r3, r27
/* 8070B014  80 9D 06 BC */	lwz r4, 0x6bc(r29)
/* 8070B018  80 BD 06 8C */	lwz r5, 0x68c(r29)
/* 8070B01C  4B 94 AF 01 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 8070B020  38 60 00 01 */	li r3, 1
lbl_8070B024:
/* 8070B024  39 61 00 50 */	addi r11, r1, 0x50
/* 8070B028  4B C5 71 F5 */	bl _restgpr_26
/* 8070B02C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8070B030  7C 08 03 A6 */	mtlr r0
/* 8070B034  38 21 00 50 */	addi r1, r1, 0x50
/* 8070B038  4E 80 00 20 */	blr 
