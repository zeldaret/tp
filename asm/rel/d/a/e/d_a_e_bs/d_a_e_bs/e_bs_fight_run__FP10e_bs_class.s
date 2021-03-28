lbl_8068EB50:
/* 8068EB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8068EB54  7C 08 02 A6 */	mflr r0
/* 8068EB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068EB5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8068EB60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8068EB64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8068EB68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8068EB6C  7C 7E 1B 78 */	mr r30, r3
/* 8068EB70  3C 80 80 69 */	lis r4, lit_3788@ha
/* 8068EB74  3B E4 0D D8 */	addi r31, r4, lit_3788@l
/* 8068EB78  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8068EB7C  A8 83 05 B4 */	lha r4, 0x5b4(r3)
/* 8068EB80  38 04 00 0A */	addi r0, r4, 0xa
/* 8068EB84  28 00 00 0F */	cmplwi r0, 0xf
/* 8068EB88  41 81 02 44 */	bgt lbl_8068EDCC
/* 8068EB8C  3C 80 80 69 */	lis r4, lit_4131@ha
/* 8068EB90  38 84 0F 00 */	addi r4, r4, lit_4131@l
/* 8068EB94  54 00 10 3A */	slwi r0, r0, 2
/* 8068EB98  7C 04 00 2E */	lwzx r0, r4, r0
/* 8068EB9C  7C 09 03 A6 */	mtctr r0
/* 8068EBA0  4E 80 04 20 */	bctr 
lbl_8068EBA4:
/* 8068EBA4  38 80 00 07 */	li r4, 7
/* 8068EBA8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068EBAC  38 A0 00 02 */	li r5, 2
/* 8068EBB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068EBB4  4B FF F6 41 */	bl anm_init__FP10e_bs_classifUcf
/* 8068EBB8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8068EBBC  4B BD 8D 98 */	b cM_rndF__Ff
/* 8068EBC0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8068EBC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8068EBC8  FC 00 00 1E */	fctiwz f0, f0
/* 8068EBCC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8068EBD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8068EBD4  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8068EBD8  38 00 FF F7 */	li r0, -9
/* 8068EBDC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EBE0  48 00 01 EC */	b lbl_8068EDCC
lbl_8068EBE4:
/* 8068EBE4  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8068EBE8  2C 00 00 00 */	cmpwi r0, 0
/* 8068EBEC  40 82 01 E0 */	bne lbl_8068EDCC
/* 8068EBF0  38 00 00 00 */	li r0, 0
/* 8068EBF4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EBF8  48 00 01 D4 */	b lbl_8068EDCC
lbl_8068EBFC:
/* 8068EBFC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8068EC00  4B BD 8D 8C */	b cM_rndFX__Ff
/* 8068EC04  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8068EC08  EC 40 08 2A */	fadds f2, f0, f1
/* 8068EC0C  7F C3 F3 78 */	mr r3, r30
/* 8068EC10  38 80 00 09 */	li r4, 9
/* 8068EC14  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068EC18  38 A0 00 02 */	li r5, 2
/* 8068EC1C  4B FF F5 D9 */	bl anm_init__FP10e_bs_classifUcf
/* 8068EC20  38 00 00 01 */	li r0, 1
/* 8068EC24  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8068EC28:
/* 8068EC28  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068EC2C  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068EC30  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 8068EC34  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 8068EC38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068EC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068EC40  40 80 01 8C */	bge lbl_8068EDCC
/* 8068EC44  38 00 00 02 */	li r0, 2
/* 8068EC48  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EC4C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8068EC50  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8068EC54  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8068EC58  48 00 01 74 */	b lbl_8068EDCC
lbl_8068EC5C:
/* 8068EC5C  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068EC60  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068EC64  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8068EC68  C0 7E 06 80 */	lfs f3, 0x680(r30)
/* 8068EC6C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8068EC70  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8068EC74  EC 01 10 2A */	fadds f0, f1, f2
/* 8068EC78  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8068EC7C  40 81 00 10 */	ble lbl_8068EC8C
/* 8068EC80  38 00 00 00 */	li r0, 0
/* 8068EC84  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EC88  48 00 01 44 */	b lbl_8068EDCC
lbl_8068EC8C:
/* 8068EC8C  EC 02 08 28 */	fsubs f0, f2, f1
/* 8068EC90  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8068EC94  40 80 01 38 */	bge lbl_8068EDCC
/* 8068EC98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068EC9C  4B BD 8C B8 */	b cM_rndF__Ff
/* 8068ECA0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8068ECA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068ECA8  40 80 00 28 */	bge lbl_8068ECD0
/* 8068ECAC  38 00 00 03 */	li r0, 3
/* 8068ECB0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068ECB4  7F C3 F3 78 */	mr r3, r30
/* 8068ECB8  38 80 00 09 */	li r4, 9
/* 8068ECBC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068ECC0  38 A0 00 02 */	li r5, 2
/* 8068ECC4  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8068ECC8  4B FF F5 2D */	bl anm_init__FP10e_bs_classifUcf
/* 8068ECCC  48 00 01 00 */	b lbl_8068EDCC
lbl_8068ECD0:
/* 8068ECD0  38 00 00 05 */	li r0, 5
/* 8068ECD4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068ECD8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8068ECDC  4B BD 8C 78 */	b cM_rndF__Ff
/* 8068ECE0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8068ECE4  EC 00 08 2A */	fadds f0, f0, f1
/* 8068ECE8  FC 00 00 1E */	fctiwz f0, f0
/* 8068ECEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8068ECF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8068ECF4  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8068ECF8  7F C3 F3 78 */	mr r3, r30
/* 8068ECFC  38 80 00 08 */	li r4, 8
/* 8068ED00  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068ED04  38 A0 00 02 */	li r5, 2
/* 8068ED08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068ED0C  4B FF F4 E9 */	bl anm_init__FP10e_bs_classifUcf
/* 8068ED10  48 00 00 BC */	b lbl_8068EDCC
lbl_8068ED14:
/* 8068ED14  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068ED18  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068ED1C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8068ED20  FF E0 00 50 */	fneg f31, f0
/* 8068ED24  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 8068ED28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068ED2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068ED30  40 81 00 9C */	ble lbl_8068EDCC
/* 8068ED34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068ED38  4B BD 8C 1C */	b cM_rndF__Ff
/* 8068ED3C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8068ED40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068ED44  40 80 00 10 */	bge lbl_8068ED54
/* 8068ED48  38 00 00 02 */	li r0, 2
/* 8068ED4C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068ED50  48 00 00 7C */	b lbl_8068EDCC
lbl_8068ED54:
/* 8068ED54  38 00 00 05 */	li r0, 5
/* 8068ED58  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068ED5C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8068ED60  4B BD 8B F4 */	b cM_rndF__Ff
/* 8068ED64  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8068ED68  EC 00 08 2A */	fadds f0, f0, f1
/* 8068ED6C  FC 00 00 1E */	fctiwz f0, f0
/* 8068ED70  D8 01 00 08 */	stfd f0, 8(r1)
/* 8068ED74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8068ED78  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8068ED7C  7F C3 F3 78 */	mr r3, r30
/* 8068ED80  38 80 00 08 */	li r4, 8
/* 8068ED84  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8068ED88  38 A0 00 02 */	li r5, 2
/* 8068ED8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068ED90  4B FF F4 65 */	bl anm_init__FP10e_bs_classifUcf
/* 8068ED94  48 00 00 38 */	b lbl_8068EDCC
lbl_8068ED98:
/* 8068ED98  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 8068ED9C  2C 00 00 00 */	cmpwi r0, 0
/* 8068EDA0  41 82 00 24 */	beq lbl_8068EDC4
/* 8068EDA4  C0 5E 06 80 */	lfs f2, 0x680(r30)
/* 8068EDA8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8068EDAC  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068EDB0  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068EDB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068EDB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8068EDBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8068EDC0  40 81 00 0C */	ble lbl_8068EDCC
lbl_8068EDC4:
/* 8068EDC4  38 00 00 00 */	li r0, 0
/* 8068EDC8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8068EDCC:
/* 8068EDCC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8068EDD0  FC 20 F8 90 */	fmr f1, f31
/* 8068EDD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068EDD8  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 8068EDDC  4B BE 0C 60 */	b cLib_addCalc2__FPffff
/* 8068EDE0  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8068EDE4  2C 00 00 00 */	cmpwi r0, 0
/* 8068EDE8  41 80 00 18 */	blt lbl_8068EE00
/* 8068EDEC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8068EDF0  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8068EDF4  38 A0 00 04 */	li r5, 4
/* 8068EDF8  38 C0 08 00 */	li r6, 0x800
/* 8068EDFC  4B BE 18 0C */	b cLib_addCalcAngleS2__FPssss
lbl_8068EE00:
/* 8068EE00  7F C3 F3 78 */	mr r3, r30
/* 8068EE04  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8068EE08  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 8068EE0C  EC 21 00 2A */	fadds f1, f1, f0
/* 8068EE10  38 80 7F FF */	li r4, 0x7fff
/* 8068EE14  4B FF F8 31 */	bl pl_check__FP10e_bs_classfs
/* 8068EE18  2C 03 00 00 */	cmpwi r3, 0
/* 8068EE1C  40 82 00 5C */	bne lbl_8068EE78
/* 8068EE20  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 8068EE24  2C 00 00 00 */	cmpwi r0, 0
/* 8068EE28  40 82 00 50 */	bne lbl_8068EE78
/* 8068EE2C  38 00 00 01 */	li r0, 1
/* 8068EE30  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068EE34  38 00 00 00 */	li r0, 0
/* 8068EE38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068EE3C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8068EE40  4B BD 8B 14 */	b cM_rndF__Ff
/* 8068EE44  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8068EE48  EC 00 08 2A */	fadds f0, f0, f1
/* 8068EE4C  FC 00 00 1E */	fctiwz f0, f0
/* 8068EE50  D8 01 00 08 */	stfd f0, 8(r1)
/* 8068EE54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8068EE58  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8068EE5C  7F C3 F3 78 */	mr r3, r30
/* 8068EE60  38 80 00 07 */	li r4, 7
/* 8068EE64  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8068EE68  38 A0 00 02 */	li r5, 2
/* 8068EE6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068EE70  4B FF F3 85 */	bl anm_init__FP10e_bs_classifUcf
/* 8068EE74  48 00 00 98 */	b lbl_8068EF0C
lbl_8068EE78:
/* 8068EE78  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 8068EE7C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8068EE80  40 80 00 84 */	bge lbl_8068EF04
/* 8068EE84  2C 00 F0 00 */	cmpwi r0, -4096
/* 8068EE88  40 81 00 7C */	ble lbl_8068EF04
/* 8068EE8C  7F C3 F3 78 */	mr r3, r30
/* 8068EE90  4B FF F6 61 */	bl player_way_check__FP10e_bs_class
/* 8068EE94  2C 03 00 00 */	cmpwi r3, 0
/* 8068EE98  41 82 00 6C */	beq lbl_8068EF04
/* 8068EE9C  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 8068EEA0  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068EEA4  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068EEA8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8068EEAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068EEB0  40 80 00 54 */	bge lbl_8068EF04
/* 8068EEB4  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 8068EEB8  2C 00 00 00 */	cmpwi r0, 0
/* 8068EEBC  40 82 00 48 */	bne lbl_8068EF04
/* 8068EEC0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8068EEC4  4B BD 8A 90 */	b cM_rndF__Ff
/* 8068EEC8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8068EECC  EC 00 08 2A */	fadds f0, f0, f1
/* 8068EED0  FC 00 00 1E */	fctiwz f0, f0
/* 8068EED4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8068EED8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8068EEDC  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8068EEE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068EEE4  4B BD 8A 70 */	b cM_rndF__Ff
/* 8068EEE8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8068EEEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068EEF0  40 80 00 14 */	bge lbl_8068EF04
/* 8068EEF4  38 00 00 03 */	li r0, 3
/* 8068EEF8  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068EEFC  38 00 00 00 */	li r0, 0
/* 8068EF00  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8068EF04:
/* 8068EF04  38 00 00 01 */	li r0, 1
/* 8068EF08  98 1E 06 A8 */	stb r0, 0x6a8(r30)
lbl_8068EF0C:
/* 8068EF0C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8068EF10  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8068EF14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8068EF18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8068EF1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068EF20  7C 08 03 A6 */	mtlr r0
/* 8068EF24  38 21 00 30 */	addi r1, r1, 0x30
/* 8068EF28  4E 80 00 20 */	blr 
