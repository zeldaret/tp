lbl_805EDDA8:
/* 805EDDA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805EDDAC  7C 08 02 A6 */	mflr r0
/* 805EDDB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805EDDB4  39 61 00 50 */	addi r11, r1, 0x50
/* 805EDDB8  4B D7 44 18 */	b _savegpr_26
/* 805EDDBC  7C 7E 1B 78 */	mr r30, r3
/* 805EDDC0  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805EDDC4  3B E3 41 88 */	addi r31, r3, lit_3774@l
/* 805EDDC8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EDDCC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EDDD0  38 80 00 00 */	li r4, 0
/* 805EDDD4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805EDDD8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 805EDDDC  4B BB 59 E8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805EDDE0  3B 40 00 00 */	li r26, 0
/* 805EDDE4  3B A0 00 00 */	li r29, 0
/* 805EDDE8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EDDEC  3B 83 CA 54 */	addi r28, r3, g_env_light@l
lbl_805EDDF0:
/* 805EDDF0  7F 83 E3 78 */	mr r3, r28
/* 805EDDF4  3B 7D 06 F8 */	addi r27, r29, 0x6f8
/* 805EDDF8  7C 9E D8 2E */	lwzx r4, r30, r27
/* 805EDDFC  80 84 00 04 */	lwz r4, 4(r4)
/* 805EDE00  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805EDE04  4B BB 6F 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805EDE08  7C 7E D8 2E */	lwzx r3, r30, r27
/* 805EDE0C  80 83 00 04 */	lwz r4, 4(r3)
/* 805EDE10  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 805EDE14  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805EDE18  38 84 00 58 */	addi r4, r4, 0x58
/* 805EDE1C  4B A1 F8 BC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805EDE20  7C 7E D8 2E */	lwzx r3, r30, r27
/* 805EDE24  4B A1 FE A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805EDE28  3B 5A 00 01 */	addi r26, r26, 1
/* 805EDE2C  2C 1A 00 04 */	cmpwi r26, 4
/* 805EDE30  3B BD 00 04 */	addi r29, r29, 4
/* 805EDE34  41 80 FF BC */	blt lbl_805EDDF0
/* 805EDE38  88 1E 06 B4 */	lbz r0, 0x6b4(r30)
/* 805EDE3C  28 00 00 00 */	cmplwi r0, 0
/* 805EDE40  41 82 00 0C */	beq lbl_805EDE4C
/* 805EDE44  38 60 00 01 */	li r3, 1
/* 805EDE48  48 00 01 C0 */	b lbl_805EE008
lbl_805EDE4C:
/* 805EDE4C  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EDE50  83 83 00 04 */	lwz r28, 4(r3)
/* 805EDE54  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EDE58  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EDE5C  80 9C 00 04 */	lwz r4, 4(r28)
/* 805EDE60  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805EDE64  4B BB 6F 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805EDE68  80 9C 00 04 */	lwz r4, 4(r28)
/* 805EDE6C  80 7E 06 A8 */	lwz r3, 0x6a8(r30)
/* 805EDE70  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805EDE74  38 84 00 58 */	addi r4, r4, 0x58
/* 805EDE78  4B A1 F8 60 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805EDE7C  C0 1E 1A E4 */	lfs f0, 0x1ae4(r30)
/* 805EDE80  FC 00 02 10 */	fabs f0, f0
/* 805EDE84  FC 20 00 18 */	frsp f1, f0
/* 805EDE88  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805EDE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EDE90  40 81 00 B4 */	ble lbl_805EDF44
/* 805EDE94  83 BC 00 04 */	lwz r29, 4(r28)
/* 805EDE98  3B 40 00 00 */	li r26, 0
/* 805EDE9C  48 00 00 98 */	b lbl_805EDF34
lbl_805EDEA0:
/* 805EDEA0  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 805EDEA4  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 805EDEA8  7F 63 00 2E */	lwzx r27, r3, r0
/* 805EDEAC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805EDEB0  38 80 00 00 */	li r4, 0
/* 805EDEB4  81 83 00 00 */	lwz r12, 0(r3)
/* 805EDEB8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805EDEBC  7D 89 03 A6 */	mtctr r12
/* 805EDEC0  4E 80 04 21 */	bctrl 
/* 805EDEC4  C0 1E 1A E4 */	lfs f0, 0x1ae4(r30)
/* 805EDEC8  FC 00 00 1E */	fctiwz f0, f0
/* 805EDECC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805EDED0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805EDED4  B0 03 00 00 */	sth r0, 0(r3)
/* 805EDED8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805EDEDC  38 80 00 00 */	li r4, 0
/* 805EDEE0  81 83 00 00 */	lwz r12, 0(r3)
/* 805EDEE4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805EDEE8  7D 89 03 A6 */	mtctr r12
/* 805EDEEC  4E 80 04 21 */	bctrl 
/* 805EDEF0  C0 1E 1A E4 */	lfs f0, 0x1ae4(r30)
/* 805EDEF4  FC 00 00 1E */	fctiwz f0, f0
/* 805EDEF8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805EDEFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EDF00  B0 03 00 02 */	sth r0, 2(r3)
/* 805EDF04  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805EDF08  38 80 00 00 */	li r4, 0
/* 805EDF0C  81 83 00 00 */	lwz r12, 0(r3)
/* 805EDF10  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805EDF14  7D 89 03 A6 */	mtctr r12
/* 805EDF18  4E 80 04 21 */	bctrl 
/* 805EDF1C  C0 1E 1A E4 */	lfs f0, 0x1ae4(r30)
/* 805EDF20  FC 00 00 1E */	fctiwz f0, f0
/* 805EDF24  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EDF28  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805EDF2C  B0 03 00 04 */	sth r0, 4(r3)
/* 805EDF30  3B 5A 00 01 */	addi r26, r26, 1
lbl_805EDF34:
/* 805EDF34  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 805EDF38  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 805EDF3C  7C 03 00 40 */	cmplw r3, r0
/* 805EDF40  41 80 FF 60 */	blt lbl_805EDEA0
lbl_805EDF44:
/* 805EDF44  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EDF48  4B A2 32 78 */	b entryDL__16mDoExt_McaMorfSOFv
/* 805EDF4C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805EDF50  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 805EDF54  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805EDF58  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805EDF5C  38 63 47 DC */	addi r3, r3, l_HIO@l
/* 805EDF60  C0 83 00 08 */	lfs f4, 8(r3)
/* 805EDF64  EC 00 01 32 */	fmuls f0, f0, f4
/* 805EDF68  EC 23 00 2A */	fadds f1, f3, f0
/* 805EDF6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805EDF70  D0 01 00 08 */	stfs f0, 8(r1)
/* 805EDF74  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805EDF78  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805EDF7C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 805EDF80  38 80 00 01 */	li r4, 1
/* 805EDF84  7F 85 E3 78 */	mr r5, r28
/* 805EDF88  38 C1 00 08 */	addi r6, r1, 8
/* 805EDF8C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 805EDF90  EC 20 01 32 */	fmuls f1, f0, f4
/* 805EDF94  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 805EDF98  C0 9E 08 20 */	lfs f4, 0x820(r30)
/* 805EDF9C  38 FE 08 78 */	addi r7, r30, 0x878
/* 805EDFA0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 805EDFA4  39 20 00 00 */	li r9, 0
/* 805EDFA8  C0 BF 00 00 */	lfs f5, 0(r31)
/* 805EDFAC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 805EDFB0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 805EDFB4  4B A4 09 5C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805EDFB8  90 7E 06 B0 */	stw r3, 0x6b0(r30)
/* 805EDFBC  C0 3E 06 C0 */	lfs f1, 0x6c0(r30)
/* 805EDFC0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805EDFC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EDFC8  40 81 00 3C */	ble lbl_805EE004
/* 805EDFCC  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 805EDFD0  83 63 00 04 */	lwz r27, 4(r3)
/* 805EDFD4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EDFD8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EDFDC  80 9B 00 04 */	lwz r4, 4(r27)
/* 805EDFE0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805EDFE4  4B BB 6D BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805EDFE8  80 9B 00 04 */	lwz r4, 4(r27)
/* 805EDFEC  80 7E 06 BC */	lwz r3, 0x6bc(r30)
/* 805EDFF0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805EDFF4  38 84 00 58 */	addi r4, r4, 0x58
/* 805EDFF8  4B A1 F6 E0 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805EDFFC  80 7E 06 B8 */	lwz r3, 0x6b8(r30)
/* 805EE000  4B A2 26 80 */	b entryDL__14mDoExt_McaMorfFv
lbl_805EE004:
/* 805EE004  38 60 00 01 */	li r3, 1
lbl_805EE008:
/* 805EE008  39 61 00 50 */	addi r11, r1, 0x50
/* 805EE00C  4B D7 42 10 */	b _restgpr_26
/* 805EE010  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805EE014  7C 08 03 A6 */	mtlr r0
/* 805EE018  38 21 00 50 */	addi r1, r1, 0x50
/* 805EE01C  4E 80 00 20 */	blr 
