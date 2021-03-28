lbl_8069ACB8:
/* 8069ACB8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8069ACBC  7C 08 02 A6 */	mflr r0
/* 8069ACC0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8069ACC4  39 61 00 50 */	addi r11, r1, 0x50
/* 8069ACC8  4B CC 75 04 */	b _savegpr_25
/* 8069ACCC  7C 7D 1B 78 */	mr r29, r3
/* 8069ACD0  3C 60 80 6A */	lis r3, lit_3902@ha
/* 8069ACD4  3B E3 19 0C */	addi r31, r3, lit_3902@l
/* 8069ACD8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8069ACDC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8069ACE0  38 80 00 00 */	li r4, 0
/* 8069ACE4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8069ACE8  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8069ACEC  4B B0 8A D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8069ACF0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8069ACF4  83 83 00 04 */	lwz r28, 4(r3)
/* 8069ACF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8069ACFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8069AD00  80 9C 00 04 */	lwz r4, 4(r28)
/* 8069AD04  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8069AD08  4B B0 A0 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8069AD0C  88 1D 08 52 */	lbz r0, 0x852(r29)
/* 8069AD10  7C 00 07 75 */	extsb. r0, r0
/* 8069AD14  41 82 00 B4 */	beq lbl_8069ADC8
/* 8069AD18  83 DC 00 04 */	lwz r30, 4(r28)
/* 8069AD1C  3B 40 00 00 */	li r26, 0
/* 8069AD20  48 00 00 98 */	b lbl_8069ADB8
lbl_8069AD24:
/* 8069AD24  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8069AD28  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8069AD2C  7F 63 00 2E */	lwzx r27, r3, r0
/* 8069AD30  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8069AD34  38 80 00 00 */	li r4, 0
/* 8069AD38  81 83 00 00 */	lwz r12, 0(r3)
/* 8069AD3C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8069AD40  7D 89 03 A6 */	mtctr r12
/* 8069AD44  4E 80 04 21 */	bctrl 
/* 8069AD48  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 8069AD4C  FC 00 00 1E */	fctiwz f0, f0
/* 8069AD50  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8069AD54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8069AD58  B0 03 00 00 */	sth r0, 0(r3)
/* 8069AD5C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8069AD60  38 80 00 00 */	li r4, 0
/* 8069AD64  81 83 00 00 */	lwz r12, 0(r3)
/* 8069AD68  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8069AD6C  7D 89 03 A6 */	mtctr r12
/* 8069AD70  4E 80 04 21 */	bctrl 
/* 8069AD74  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 8069AD78  FC 00 00 1E */	fctiwz f0, f0
/* 8069AD7C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8069AD80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069AD84  B0 03 00 02 */	sth r0, 2(r3)
/* 8069AD88  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8069AD8C  38 80 00 00 */	li r4, 0
/* 8069AD90  81 83 00 00 */	lwz r12, 0(r3)
/* 8069AD94  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8069AD98  7D 89 03 A6 */	mtctr r12
/* 8069AD9C  4E 80 04 21 */	bctrl 
/* 8069ADA0  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 8069ADA4  FC 00 00 1E */	fctiwz f0, f0
/* 8069ADA8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8069ADAC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8069ADB0  B0 03 00 04 */	sth r0, 4(r3)
/* 8069ADB4  3B 5A 00 01 */	addi r26, r26, 1
lbl_8069ADB8:
/* 8069ADB8  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8069ADBC  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 8069ADC0  7C 03 00 40 */	cmplw r3, r0
/* 8069ADC4  41 80 FF 60 */	blt lbl_8069AD24
lbl_8069ADC8:
/* 8069ADC8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8069ADCC  4B 97 63 F4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8069ADD0  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8069ADD4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8069ADD8  41 82 00 6C */	beq lbl_8069AE44
/* 8069ADDC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8069ADE0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8069ADE4  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8069ADE8  EC 20 18 2A */	fadds f1, f0, f3
/* 8069ADEC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8069ADF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8069ADF4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8069ADF8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8069ADFC  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 8069AE00  38 80 00 01 */	li r4, 1
/* 8069AE04  7F 85 E3 78 */	mr r5, r28
/* 8069AE08  38 C1 00 08 */	addi r6, r1, 8
/* 8069AE0C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8069AE10  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8069AE14  3C E0 80 45 */	lis r7, mGroundY__11fopAcM_gc_c@ha
/* 8069AE18  C0 87 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r7)
/* 8069AE1C  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha
/* 8069AE20  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l
/* 8069AE24  38 E7 00 14 */	addi r7, r7, 0x14
/* 8069AE28  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8069AE2C  39 20 00 00 */	li r9, 0
/* 8069AE30  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8069AE34  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8069AE38  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8069AE3C  4B 99 3A D4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8069AE40  90 7D 06 64 */	stw r3, 0x664(r29)
lbl_8069AE44:
/* 8069AE44  38 7D 08 04 */	addi r3, r29, 0x804
/* 8069AE48  38 80 00 0C */	li r4, 0xc
/* 8069AE4C  3C A0 80 6A */	lis r5, l_color@ha
/* 8069AE50  38 A5 1A AC */	addi r5, r5, l_color@l
/* 8069AE54  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8069AE58  4B 97 91 58 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 8069AE5C  38 7D 08 04 */	addi r3, r29, 0x804
/* 8069AE60  81 9D 08 04 */	lwz r12, 0x804(r29)
/* 8069AE64  81 8C 00 08 */	lwz r12, 8(r12)
/* 8069AE68  7D 89 03 A6 */	mtctr r12
/* 8069AE6C  4E 80 04 21 */	bctrl 
/* 8069AE70  1C 83 00 14 */	mulli r4, r3, 0x14
/* 8069AE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069AE78  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8069AE7C  7C 60 22 14 */	add r3, r0, r4
/* 8069AE80  3C 63 00 01 */	addis r3, r3, 1
/* 8069AE84  38 63 61 54 */	addi r3, r3, 0x6154
/* 8069AE88  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8069AE8C  38 9D 08 04 */	addi r4, r29, 0x804
/* 8069AE90  4B 97 98 A8 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 8069AE94  3B C0 00 01 */	li r30, 1
/* 8069AE98  3B 80 00 04 */	li r28, 4
lbl_8069AE9C:
/* 8069AE9C  3B FC 07 74 */	addi r31, r28, 0x774
/* 8069AEA0  7C 9D F8 2E */	lwzx r4, r29, r31
/* 8069AEA4  28 04 00 00 */	cmplwi r4, 0
/* 8069AEA8  41 82 00 E0 */	beq lbl_8069AF88
/* 8069AEAC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8069AEB0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8069AEB4  80 84 00 04 */	lwz r4, 4(r4)
/* 8069AEB8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8069AEBC  4B B0 9E E4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8069AEC0  88 1D 08 52 */	lbz r0, 0x852(r29)
/* 8069AEC4  7C 00 07 75 */	extsb. r0, r0
/* 8069AEC8  41 82 00 B8 */	beq lbl_8069AF80
/* 8069AECC  7C 7D F8 2E */	lwzx r3, r29, r31
/* 8069AED0  83 63 00 04 */	lwz r27, 4(r3)
/* 8069AED4  3B 20 00 00 */	li r25, 0
/* 8069AED8  48 00 00 98 */	b lbl_8069AF70
lbl_8069AEDC:
/* 8069AEDC  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 8069AEE0  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 8069AEE4  7F 43 00 2E */	lwzx r26, r3, r0
/* 8069AEE8  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8069AEEC  38 80 00 00 */	li r4, 0
/* 8069AEF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8069AEF4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8069AEF8  7D 89 03 A6 */	mtctr r12
/* 8069AEFC  4E 80 04 21 */	bctrl 
/* 8069AF00  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 8069AF04  FC 00 00 1E */	fctiwz f0, f0
/* 8069AF08  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8069AF0C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8069AF10  B0 03 00 00 */	sth r0, 0(r3)
/* 8069AF14  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8069AF18  38 80 00 00 */	li r4, 0
/* 8069AF1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8069AF20  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8069AF24  7D 89 03 A6 */	mtctr r12
/* 8069AF28  4E 80 04 21 */	bctrl 
/* 8069AF2C  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 8069AF30  FC 00 00 1E */	fctiwz f0, f0
/* 8069AF34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8069AF38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069AF3C  B0 03 00 02 */	sth r0, 2(r3)
/* 8069AF40  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8069AF44  38 80 00 00 */	li r4, 0
/* 8069AF48  81 83 00 00 */	lwz r12, 0(r3)
/* 8069AF4C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8069AF50  7D 89 03 A6 */	mtctr r12
/* 8069AF54  4E 80 04 21 */	bctrl 
/* 8069AF58  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 8069AF5C  FC 00 00 1E */	fctiwz f0, f0
/* 8069AF60  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8069AF64  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8069AF68  B0 03 00 04 */	sth r0, 4(r3)
/* 8069AF6C  3B 39 00 01 */	addi r25, r25, 1
lbl_8069AF70:
/* 8069AF70  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 8069AF74  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 8069AF78  7C 03 00 40 */	cmplw r3, r0
/* 8069AF7C  41 80 FF 60 */	blt lbl_8069AEDC
lbl_8069AF80:
/* 8069AF80  7C 7D F8 2E */	lwzx r3, r29, r31
/* 8069AF84  4B 97 2D 40 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8069AF88:
/* 8069AF88  3B DE 00 01 */	addi r30, r30, 1
/* 8069AF8C  2C 1E 00 0B */	cmpwi r30, 0xb
/* 8069AF90  3B 9C 00 04 */	addi r28, r28, 4
/* 8069AF94  41 80 FF 08 */	blt lbl_8069AE9C
/* 8069AF98  38 60 00 01 */	li r3, 1
/* 8069AF9C  39 61 00 50 */	addi r11, r1, 0x50
/* 8069AFA0  4B CC 72 78 */	b _restgpr_25
/* 8069AFA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8069AFA8  7C 08 03 A6 */	mtlr r0
/* 8069AFAC  38 21 00 50 */	addi r1, r1, 0x50
/* 8069AFB0  4E 80 00 20 */	blr 
