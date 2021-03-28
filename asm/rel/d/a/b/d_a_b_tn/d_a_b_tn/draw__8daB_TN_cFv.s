lbl_8061EEC8:
/* 8061EEC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061EECC  7C 08 02 A6 */	mflr r0
/* 8061EED0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061EED4  39 61 00 50 */	addi r11, r1, 0x50
/* 8061EED8  4B D4 32 F0 */	b _savegpr_24
/* 8061EEDC  7C 7D 1B 78 */	mr r29, r3
/* 8061EEE0  3C 60 80 63 */	lis r3, lit_3920@ha
/* 8061EEE4  3B E3 E6 34 */	addi r31, r3, lit_3920@l
/* 8061EEE8  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8061EEEC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8061EEF0  88 1D 0A 9E */	lbz r0, 0xa9e(r29)
/* 8061EEF4  28 00 00 00 */	cmplwi r0, 0
/* 8061EEF8  40 82 00 10 */	bne lbl_8061EF08
/* 8061EEFC  88 1D 0A AC */	lbz r0, 0xaac(r29)
/* 8061EF00  28 00 00 00 */	cmplwi r0, 0
/* 8061EF04  41 82 00 0C */	beq lbl_8061EF10
lbl_8061EF08:
/* 8061EF08  38 60 00 01 */	li r3, 1
/* 8061EF0C  48 00 02 BC */	b lbl_8061F1C8
lbl_8061EF10:
/* 8061EF10  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061EF14  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8061EF18  38 80 00 00 */	li r4, 0
/* 8061EF1C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8061EF20  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8061EF24  4B B8 48 A0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8061EF28  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061EF2C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8061EF30  80 9E 00 04 */	lwz r4, 4(r30)
/* 8061EF34  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8061EF38  4B B8 5E 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061EF3C  83 9E 00 04 */	lwz r28, 4(r30)
/* 8061EF40  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8061EF44  28 00 00 01 */	cmplwi r0, 1
/* 8061EF48  40 82 00 14 */	bne lbl_8061EF5C
/* 8061EF4C  80 7D 06 44 */	lwz r3, 0x644(r29)
/* 8061EF50  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8061EF54  38 9C 00 58 */	addi r4, r28, 0x58
/* 8061EF58  4B 9E E8 50 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_8061EF5C:
/* 8061EF5C  C0 3D 07 28 */	lfs f1, 0x728(r29)
/* 8061EF60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061EF64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8061EF68  41 82 00 B0 */	beq lbl_8061F018
/* 8061EF6C  3B 00 00 00 */	li r24, 0
/* 8061EF70  48 00 00 98 */	b lbl_8061F008
lbl_8061EF74:
/* 8061EF74  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8061EF78  57 00 13 BA */	rlwinm r0, r24, 2, 0xe, 0x1d
/* 8061EF7C  7F 63 00 2E */	lwzx r27, r3, r0
/* 8061EF80  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8061EF84  38 80 00 00 */	li r4, 0
/* 8061EF88  81 83 00 00 */	lwz r12, 0(r3)
/* 8061EF8C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8061EF90  7D 89 03 A6 */	mtctr r12
/* 8061EF94  4E 80 04 21 */	bctrl 
/* 8061EF98  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8061EF9C  FC 00 00 1E */	fctiwz f0, f0
/* 8061EFA0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061EFA4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8061EFA8  B0 03 00 00 */	sth r0, 0(r3)
/* 8061EFAC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8061EFB0  38 80 00 00 */	li r4, 0
/* 8061EFB4  81 83 00 00 */	lwz r12, 0(r3)
/* 8061EFB8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8061EFBC  7D 89 03 A6 */	mtctr r12
/* 8061EFC0  4E 80 04 21 */	bctrl 
/* 8061EFC4  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8061EFC8  FC 00 00 1E */	fctiwz f0, f0
/* 8061EFCC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8061EFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061EFD4  B0 03 00 02 */	sth r0, 2(r3)
/* 8061EFD8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8061EFDC  38 80 00 00 */	li r4, 0
/* 8061EFE0  81 83 00 00 */	lwz r12, 0(r3)
/* 8061EFE4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8061EFE8  7D 89 03 A6 */	mtctr r12
/* 8061EFEC  4E 80 04 21 */	bctrl 
/* 8061EFF0  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 8061EFF4  FC 00 00 1E */	fctiwz f0, f0
/* 8061EFF8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061EFFC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8061F000  B0 03 00 04 */	sth r0, 4(r3)
/* 8061F004  3B 18 00 01 */	addi r24, r24, 1
lbl_8061F008:
/* 8061F008  57 03 04 3E */	clrlwi r3, r24, 0x10
/* 8061F00C  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 8061F010  7C 03 00 40 */	cmplw r3, r0
/* 8061F014  41 80 FF 60 */	blt lbl_8061EF74
lbl_8061F018:
/* 8061F018  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8061F01C  4B 9F 21 A4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8061F020  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8061F024  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061F028  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8061F02C  EC 20 18 2A */	fadds f1, f0, f3
/* 8061F030  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8061F034  D0 01 00 08 */	stfs f0, 8(r1)
/* 8061F038  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8061F03C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8061F040  80 7D 06 F8 */	lwz r3, 0x6f8(r29)
/* 8061F044  38 80 00 01 */	li r4, 1
/* 8061F048  7F C5 F3 78 */	mr r5, r30
/* 8061F04C  38 C1 00 08 */	addi r6, r1, 8
/* 8061F050  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8061F054  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8061F058  C0 9D 0B 90 */	lfs f4, 0xb90(r29)
/* 8061F05C  38 FD 0B E8 */	addi r7, r29, 0xbe8
/* 8061F060  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8061F064  39 20 00 00 */	li r9, 0
/* 8061F068  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8061F06C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8061F070  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8061F074  4B A0 F8 9C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8061F078  90 7D 06 F8 */	stw r3, 0x6f8(r29)
/* 8061F07C  3B C0 00 00 */	li r30, 0
/* 8061F080  3B E0 00 00 */	li r31, 0
/* 8061F084  3B 80 00 00 */	li r28, 0
/* 8061F088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061F08C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061F090  3B 63 61 C0 */	addi r27, r3, 0x61c0
lbl_8061F094:
/* 8061F094  3B 3C 09 FC */	addi r25, r28, 0x9fc
/* 8061F098  7C 1D CA 2E */	lhzx r0, r29, r25
/* 8061F09C  28 00 00 07 */	cmplwi r0, 7
/* 8061F0A0  41 82 00 A0 */	beq lbl_8061F140
/* 8061F0A4  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8061F0A8  40 82 00 30 */	bne lbl_8061F0D8
/* 8061F0AC  80 7D 05 FC */	lwz r3, 0x5fc(r29)
/* 8061F0B0  80 83 00 04 */	lwz r4, 4(r3)
/* 8061F0B4  7C 98 23 78 */	mr r24, r4
/* 8061F0B8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061F0BC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8061F0C0  80 84 00 04 */	lwz r4, 4(r4)
/* 8061F0C4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8061F0C8  4B B8 5C D8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061F0CC  80 7D 05 FC */	lwz r3, 0x5fc(r29)
/* 8061F0D0  4B 9F 20 F0 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8061F0D4  48 00 00 50 */	b lbl_8061F124
lbl_8061F0D8:
/* 8061F0D8  7F 5D FA 14 */	add r26, r29, r31
/* 8061F0DC  83 1A 05 BC */	lwz r24, 0x5bc(r26)
/* 8061F0E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061F0E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8061F0E8  80 98 00 04 */	lwz r4, 4(r24)
/* 8061F0EC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8061F0F0  4B B8 5C B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061F0F4  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8061F0F8  28 00 00 01 */	cmplwi r0, 1
/* 8061F0FC  40 82 00 20 */	bne lbl_8061F11C
/* 8061F100  80 7A 06 04 */	lwz r3, 0x604(r26)
/* 8061F104  28 03 00 00 */	cmplwi r3, 0
/* 8061F108  41 82 00 14 */	beq lbl_8061F11C
/* 8061F10C  80 98 00 04 */	lwz r4, 4(r24)
/* 8061F110  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8061F114  38 84 00 58 */	addi r4, r4, 0x58
/* 8061F118  4B 9E E6 90 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_8061F11C:
/* 8061F11C  7F 03 C3 78 */	mr r3, r24
/* 8061F120  4B 9E EB A4 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8061F124:
/* 8061F124  7C 1D CA 2E */	lhzx r0, r29, r25
/* 8061F128  28 00 00 00 */	cmplwi r0, 0
/* 8061F12C  40 82 00 14 */	bne lbl_8061F140
/* 8061F130  7F 63 DB 78 */	mr r3, r27
/* 8061F134  80 9D 06 F8 */	lwz r4, 0x6f8(r29)
/* 8061F138  7F 05 C3 78 */	mr r5, r24
/* 8061F13C  4B A3 6D E0 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8061F140:
/* 8061F140  3B DE 00 01 */	addi r30, r30, 1
/* 8061F144  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8061F148  3B FF 00 04 */	addi r31, r31, 4
/* 8061F14C  3B 9C 00 02 */	addi r28, r28, 2
/* 8061F150  41 80 FF 44 */	blt lbl_8061F094
/* 8061F154  88 1D 0A 90 */	lbz r0, 0xa90(r29)
/* 8061F158  28 00 00 00 */	cmplwi r0, 0
/* 8061F15C  41 82 00 68 */	beq lbl_8061F1C4
/* 8061F160  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061F164  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8061F168  80 9D 06 48 */	lwz r4, 0x648(r29)
/* 8061F16C  80 84 00 04 */	lwz r4, 4(r4)
/* 8061F170  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8061F174  4B B8 5C 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061F178  80 7D 06 48 */	lwz r3, 0x648(r29)
/* 8061F17C  80 63 00 04 */	lwz r3, 4(r3)
/* 8061F180  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8061F184  80 63 00 00 */	lwz r3, 0(r3)
/* 8061F188  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8061F18C  38 80 00 03 */	li r4, 3
/* 8061F190  81 83 00 00 */	lwz r12, 0(r3)
/* 8061F194  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8061F198  7D 89 03 A6 */	mtctr r12
/* 8061F19C  4E 80 04 21 */	bctrl 
/* 8061F1A0  3C 80 80 63 */	lis r4, l_HIO@ha
/* 8061F1A4  38 84 F0 2C */	addi r4, r4, l_HIO@l
/* 8061F1A8  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8061F1AC  FC 00 00 1E */	fctiwz f0, f0
/* 8061F1B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061F1B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8061F1B8  98 03 00 03 */	stb r0, 3(r3)
/* 8061F1BC  80 7D 06 48 */	lwz r3, 0x648(r29)
/* 8061F1C0  4B 9E EB 04 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8061F1C4:
/* 8061F1C4  38 60 00 01 */	li r3, 1
lbl_8061F1C8:
/* 8061F1C8  39 61 00 50 */	addi r11, r1, 0x50
/* 8061F1CC  4B D4 30 48 */	b _restgpr_24
/* 8061F1D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061F1D4  7C 08 03 A6 */	mtlr r0
/* 8061F1D8  38 21 00 50 */	addi r1, r1, 0x50
/* 8061F1DC  4E 80 00 20 */	blr 
