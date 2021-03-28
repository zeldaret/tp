lbl_8028ECC0:
/* 8028ECC0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8028ECC4  7C 08 02 A6 */	mflr r0
/* 8028ECC8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8028ECCC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8028ECD0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8028ECD4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8028ECD8  48 0D 35 01 */	bl _savegpr_28
/* 8028ECDC  7C 7E 1B 78 */	mr r30, r3
/* 8028ECE0  7C 9F 23 78 */	mr r31, r4
/* 8028ECE4  38 80 00 00 */	li r4, 0
/* 8028ECE8  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 8028ECEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8028ECF0  41 82 00 18 */	beq lbl_8028ED08
/* 8028ECF4  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8028ECF8  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 8028ECFC  7C 03 02 15 */	add. r0, r3, r0
/* 8028ED00  40 82 00 08 */	bne lbl_8028ED08
/* 8028ED04  38 80 00 01 */	li r4, 1
lbl_8028ED08:
/* 8028ED08  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8028ED0C  41 82 00 48 */	beq lbl_8028ED54
/* 8028ED10  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED14  80 63 01 A0 */	lwz r3, 0x1a0(r3)
/* 8028ED18  7F E4 FB 78 */	mr r4, r31
/* 8028ED1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028ED20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028ED24  7D 89 03 A6 */	mtctr r12
/* 8028ED28  4E 80 04 21 */	bctrl 
/* 8028ED2C  38 00 00 00 */	li r0, 0
/* 8028ED30  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED34  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 8028ED38  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED3C  98 03 01 B8 */	stb r0, 0x1b8(r3)
/* 8028ED40  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED44  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8028ED48  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED4C  90 03 01 C4 */	stw r0, 0x1c4(r3)
/* 8028ED50  48 00 02 F0 */	b lbl_8028F040
lbl_8028ED54:
/* 8028ED54  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED58  80 83 00 04 */	lwz r4, 4(r3)
/* 8028ED5C  83 A4 00 14 */	lwz r29, 0x14(r4)
/* 8028ED60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028ED64  38 81 00 7C */	addi r4, r1, 0x7c
/* 8028ED68  3C A0 80 3A */	lis r5, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio17TAdaptor_particle@ha
/* 8028ED6C  38 A5 AB 10 */	addi r5, r5, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio17TAdaptor_particle@l
/* 8028ED70  4B FF 75 05 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028ED74  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED78  38 81 00 88 */	addi r4, r1, 0x88
/* 8028ED7C  3C A0 80 3A */	lis r5, sauVariableValue_3_ROTATION_XYZ__Q27JStudio17TAdaptor_particle@ha
/* 8028ED80  38 A5 AB 1C */	addi r5, r5, sauVariableValue_3_ROTATION_XYZ__Q27JStudio17TAdaptor_particle@l
/* 8028ED84  4B FF 74 F1 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028ED88  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028ED8C  38 81 00 94 */	addi r4, r1, 0x94
/* 8028ED90  3C A0 80 3A */	lis r5, sauVariableValue_3_SCALING_XYZ__Q27JStudio17TAdaptor_particle@ha
/* 8028ED94  38 A5 AB 28 */	addi r5, r5, sauVariableValue_3_SCALING_XYZ__Q27JStudio17TAdaptor_particle@l
/* 8028ED98  4B FF 74 DD */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028ED9C  80 DE 00 04 */	lwz r6, 4(r30)
/* 8028EDA0  88 06 01 D8 */	lbz r0, 0x1d8(r6)
/* 8028EDA4  28 00 00 00 */	cmplwi r0, 0
/* 8028EDA8  40 82 01 40 */	bne lbl_8028EEE8
/* 8028EDAC  3B 81 00 7C */	addi r28, r1, 0x7c
/* 8028EDB0  80 06 01 CC */	lwz r0, 0x1cc(r6)
/* 8028EDB4  2C 00 00 01 */	cmpwi r0, 1
/* 8028EDB8  41 82 00 78 */	beq lbl_8028EE30
/* 8028EDBC  40 80 00 74 */	bge lbl_8028EE30
/* 8028EDC0  2C 00 00 00 */	cmpwi r0, 0
/* 8028EDC4  40 80 00 08 */	bge lbl_8028EDCC
/* 8028EDC8  48 00 00 68 */	b lbl_8028EE30
lbl_8028EDCC:
/* 8028EDCC  88 1D 00 88 */	lbz r0, 0x88(r29)
/* 8028EDD0  28 00 00 00 */	cmplwi r0, 0
/* 8028EDD4  40 82 00 0C */	bne lbl_8028EDE0
/* 8028EDD8  7F 80 E3 78 */	mr r0, r28
/* 8028EDDC  48 00 00 50 */	b lbl_8028EE2C
lbl_8028EDE0:
/* 8028EDE0  38 7D 00 AC */	addi r3, r29, 0xac
/* 8028EDE4  7F 84 E3 78 */	mr r4, r28
/* 8028EDE8  38 A1 00 58 */	addi r5, r1, 0x58
/* 8028EDEC  48 0B 7F 81 */	bl PSMTXMultVec
/* 8028EDF0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8028EDF4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8028EDF8  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 8028EDFC  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 8028EE00  EC 01 00 2A */	fadds f0, f1, f0
/* 8028EE04  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8028EE08  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8028EE0C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8028EE10  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8028EE14  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8028EE18  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8028EE1C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8028EE20  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8028EE24  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8028EE28  38 01 00 58 */	addi r0, r1, 0x58
lbl_8028EE2C:
/* 8028EE2C  7C 1C 03 78 */	mr r28, r0
lbl_8028EE30:
/* 8028EE30  E0 1C 00 00 */	psq_l f0, 0(r28), 0, 0 /* qr0 */
/* 8028EE34  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8028EE38  F0 01 00 1C */	psq_st f0, 28(r1), 0, 0 /* qr0 */
/* 8028EE3C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8028EE40  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8028EE44  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
/* 8028EE48  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8028EE4C  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 8028EE50  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 8028EE54  C8 42 BB 30 */	lfd f2, lit_1622(r2)
/* 8028EE58  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8028EE5C  C8 22 BB 38 */	lfd f1, lit_1623(r2)
/* 8028EE60  FC 00 08 24 */	fdiv f0, f0, f1
/* 8028EE64  FC 02 00 32 */	fmul f0, f2, f0
/* 8028EE68  FC 00 00 1E */	fctiwz f0, f0
/* 8028EE6C  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8028EE70  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8028EE74  7C 03 07 34 */	extsh r3, r0
/* 8028EE78  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8028EE7C  FC 00 08 24 */	fdiv f0, f0, f1
/* 8028EE80  FC 02 00 32 */	fmul f0, f2, f0
/* 8028EE84  FC 00 00 1E */	fctiwz f0, f0
/* 8028EE88  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8028EE8C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 8028EE90  7C 04 07 34 */	extsh r4, r0
/* 8028EE94  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8028EE98  FC 00 08 24 */	fdiv f0, f0, f1
/* 8028EE9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8028EEA0  FC 00 00 1E */	fctiwz f0, f0
/* 8028EEA4  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8028EEA8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8028EEAC  7C 05 07 34 */	extsh r5, r0
/* 8028EEB0  38 DF 00 68 */	addi r6, r31, 0x68
/* 8028EEB4  4B FF 18 81 */	bl JPAGetXYZRotateMtx__FsssPA4_f
/* 8028EEB8  E0 1C 00 18 */	psq_l f0, 24(r28), 0, 0 /* qr0 */
/* 8028EEBC  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 8028EEC0  F0 01 00 10 */	psq_st f0, 16(r1), 0, 0 /* qr0 */
/* 8028EEC4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8028EEC8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8028EECC  D0 3F 00 98 */	stfs f1, 0x98(r31)
/* 8028EED0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8028EED4  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 8028EED8  D0 5F 00 A0 */	stfs f2, 0xa0(r31)
/* 8028EEDC  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
/* 8028EEE0  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 8028EEE4  48 00 00 5C */	b lbl_8028EF40
lbl_8028EEE8:
/* 8028EEE8  38 61 00 28 */	addi r3, r1, 0x28
/* 8028EEEC  38 81 00 7C */	addi r4, r1, 0x7c
/* 8028EEF0  80 A6 01 D0 */	lwz r5, 0x1d0(r6)
/* 8028EEF4  80 C6 01 D4 */	lwz r6, 0x1d4(r6)
/* 8028EEF8  4B FF B3 01 */	bl transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl
/* 8028EEFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028EF00  40 82 00 1C */	bne lbl_8028EF1C
/* 8028EF04  7F E3 FB 79 */	or. r3, r31, r31
/* 8028EF08  41 82 01 38 */	beq lbl_8028F040
/* 8028EF0C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8028EF10  60 00 00 04 */	ori r0, r0, 4
/* 8028EF14  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8028EF18  48 00 01 28 */	b lbl_8028F040
lbl_8028EF1C:
/* 8028EF1C  38 61 00 28 */	addi r3, r1, 0x28
/* 8028EF20  38 9F 00 68 */	addi r4, r31, 0x68
/* 8028EF24  38 BF 00 98 */	addi r5, r31, 0x98
/* 8028EF28  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 8028EF2C  4B FF 18 DD */	bl func_80280808
/* 8028EF30  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8028EF34  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8028EF38  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 8028EF3C  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_8028EF40:
/* 8028EF40  CB E2 BB 40 */	lfd f31, lit_1624(r2)
/* 8028EF44  80 7E 00 04 */	lwz r3, 4(r30)
/* 8028EF48  80 03 01 C0 */	lwz r0, 0x1c0(r3)
/* 8028EF4C  C8 22 BB 50 */	lfd f1, lit_1629(r2)
/* 8028EF50  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8028EF54  3C 80 43 30 */	lis r4, 0x4330
/* 8028EF58  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8028EF5C  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8028EF60  FC 40 08 28 */	fsub f2, f0, f1
/* 8028EF64  80 03 01 C4 */	lwz r0, 0x1c4(r3)
/* 8028EF68  90 01 00 AC */	stw r0, 0xac(r1)
/* 8028EF6C  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 8028EF70  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8028EF74  FC 00 08 28 */	fsub f0, f0, f1
/* 8028EF78  88 03 01 B8 */	lbz r0, 0x1b8(r3)
/* 8028EF7C  2C 00 00 02 */	cmpwi r0, 2
/* 8028EF80  41 82 00 30 */	beq lbl_8028EFB0
/* 8028EF84  40 80 00 10 */	bge lbl_8028EF94
/* 8028EF88  2C 00 00 01 */	cmpwi r0, 1
/* 8028EF8C  40 80 00 14 */	bge lbl_8028EFA0
/* 8028EF90  48 00 00 20 */	b lbl_8028EFB0
lbl_8028EF94:
/* 8028EF94  2C 00 00 04 */	cmpwi r0, 4
/* 8028EF98  40 80 00 18 */	bge lbl_8028EFB0
/* 8028EF9C  48 00 00 0C */	b lbl_8028EFA8
lbl_8028EFA0:
/* 8028EFA0  FF E0 10 24 */	fdiv f31, f0, f2
/* 8028EFA4  48 00 00 0C */	b lbl_8028EFB0
lbl_8028EFA8:
/* 8028EFA8  FC 02 00 28 */	fsub f0, f2, f0
/* 8028EFAC  FF E0 10 24 */	fdiv f31, f0, f2
lbl_8028EFB0:
/* 8028EFB0  3B 80 00 FF */	li r28, 0xff
/* 8028EFB4  38 81 00 08 */	addi r4, r1, 8
/* 8028EFB8  3C A0 80 3A */	lis r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio17TAdaptor_particle@ha
/* 8028EFBC  38 A5 AB 40 */	addi r5, r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio17TAdaptor_particle@l
/* 8028EFC0  4B FF 73 CD */	bl adaptor_getVariableValue_GXColor__Q27JStudio8TAdaptorCFP8_GXColorPCUl
/* 8028EFC4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8028EFC8  C8 22 BB 50 */	lfd f1, lit_1629(r2)
/* 8028EFCC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8028EFD0  3C 00 43 30 */	lis r0, 0x4330
/* 8028EFD4  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 8028EFD8  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8028EFDC  FC 00 08 28 */	fsub f0, f0, f1
/* 8028EFE0  FF FF 00 32 */	fmul f31, f31, f0
/* 8028EFE4  C8 02 BB 48 */	lfd f0, lit_1625(r2)
/* 8028EFE8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8028EFEC  40 80 00 10 */	bge lbl_8028EFFC
/* 8028EFF0  FC 00 F8 1E */	fctiwz f0, f31
/* 8028EFF4  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 8028EFF8  83 81 00 AC */	lwz r28, 0xac(r1)
lbl_8028EFFC:
/* 8028EFFC  9B 9F 00 BB */	stb r28, 0xbb(r31)
/* 8028F000  38 00 00 00 */	li r0, 0
/* 8028F004  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028F008  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028F00C  28 03 00 00 */	cmplwi r3, 0
/* 8028F010  41 82 00 18 */	beq lbl_8028F028
/* 8028F014  7F E4 FB 78 */	mr r4, r31
/* 8028F018  81 83 00 00 */	lwz r12, 0(r3)
/* 8028F01C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8028F020  7D 89 03 A6 */	mtctr r12
/* 8028F024  4E 80 04 21 */	bctrl 
lbl_8028F028:
/* 8028F028  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8028F02C  28 03 00 00 */	cmplwi r3, 0
/* 8028F030  41 82 00 10 */	beq lbl_8028F040
/* 8028F034  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8028F038  60 00 00 04 */	ori r0, r0, 4
/* 8028F03C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_8028F040:
/* 8028F040  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8028F044  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8028F048  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8028F04C  48 0D 31 D9 */	bl _restgpr_28
/* 8028F050  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8028F054  7C 08 03 A6 */	mtlr r0
/* 8028F058  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8028F05C  4E 80 00 20 */	blr 
