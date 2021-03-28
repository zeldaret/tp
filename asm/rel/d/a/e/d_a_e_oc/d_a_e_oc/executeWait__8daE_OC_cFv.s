lbl_8072EAA4:
/* 8072EAA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8072EAA8  7C 08 02 A6 */	mflr r0
/* 8072EAAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8072EAB0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8072EAB4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8072EAB8  7C 7E 1B 78 */	mr r30, r3
/* 8072EABC  3C 80 80 73 */	lis r4, lit_3911@ha
/* 8072EAC0  3B E4 5B 28 */	addi r31, r4, lit_3911@l
/* 8072EAC4  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8072EAC8  B0 03 06 D4 */	sth r0, 0x6d4(r3)
/* 8072EACC  38 00 00 00 */	li r0, 0
/* 8072EAD0  98 03 06 DE */	stb r0, 0x6de(r3)
/* 8072EAD4  88 03 06 E3 */	lbz r0, 0x6e3(r3)
/* 8072EAD8  28 00 00 00 */	cmplwi r0, 0
/* 8072EADC  40 82 00 44 */	bne lbl_8072EB20
/* 8072EAE0  4B FF E2 C9 */	bl setWatchMode__8daE_OC_cFv
/* 8072EAE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072EAE8  40 82 06 A8 */	bne lbl_8072F190
/* 8072EAEC  7F C3 F3 78 */	mr r3, r30
/* 8072EAF0  4B FF E6 ED */	bl searchSound__8daE_OC_cFv
/* 8072EAF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072EAF8  40 82 06 98 */	bne lbl_8072F190
/* 8072EAFC  7F C3 F3 78 */	mr r3, r30
/* 8072EB00  4B FF E4 91 */	bl searchPlayer2__8daE_OC_cFv
/* 8072EB04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072EB08  41 82 00 18 */	beq lbl_8072EB20
/* 8072EB0C  7F C3 F3 78 */	mr r3, r30
/* 8072EB10  38 80 00 03 */	li r4, 3
/* 8072EB14  38 A0 00 01 */	li r5, 1
/* 8072EB18  4B FF F1 A5 */	bl setActionMode__8daE_OC_cFii
/* 8072EB1C  48 00 06 74 */	b lbl_8072F190
lbl_8072EB20:
/* 8072EB20  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 8072EB24  2C 00 00 01 */	cmpwi r0, 1
/* 8072EB28  40 82 01 20 */	bne lbl_8072EC48
/* 8072EB2C  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 8072EB30  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072EB34  4B C1 88 68 */	b PSVECSquareDistance
/* 8072EB38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072EB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072EB40  40 81 00 58 */	ble lbl_8072EB98
/* 8072EB44  FC 00 08 34 */	frsqrte f0, f1
/* 8072EB48  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072EB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8072EB50  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072EB54  FC 00 00 32 */	fmul f0, f0, f0
/* 8072EB58  FC 01 00 32 */	fmul f0, f1, f0
/* 8072EB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8072EB60  FC 02 00 32 */	fmul f0, f2, f0
/* 8072EB64  FC 44 00 32 */	fmul f2, f4, f0
/* 8072EB68  FC 00 00 32 */	fmul f0, f0, f0
/* 8072EB6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8072EB70  FC 03 00 28 */	fsub f0, f3, f0
/* 8072EB74  FC 02 00 32 */	fmul f0, f2, f0
/* 8072EB78  FC 44 00 32 */	fmul f2, f4, f0
/* 8072EB7C  FC 00 00 32 */	fmul f0, f0, f0
/* 8072EB80  FC 01 00 32 */	fmul f0, f1, f0
/* 8072EB84  FC 03 00 28 */	fsub f0, f3, f0
/* 8072EB88  FC 02 00 32 */	fmul f0, f2, f0
/* 8072EB8C  FC 21 00 32 */	fmul f1, f1, f0
/* 8072EB90  FC 20 08 18 */	frsp f1, f1
/* 8072EB94  48 00 00 88 */	b lbl_8072EC1C
lbl_8072EB98:
/* 8072EB98  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072EB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072EBA0  40 80 00 10 */	bge lbl_8072EBB0
/* 8072EBA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072EBA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072EBAC  48 00 00 70 */	b lbl_8072EC1C
lbl_8072EBB0:
/* 8072EBB0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8072EBB4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8072EBB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072EBBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072EBC0  7C 03 00 00 */	cmpw r3, r0
/* 8072EBC4  41 82 00 14 */	beq lbl_8072EBD8
/* 8072EBC8  40 80 00 40 */	bge lbl_8072EC08
/* 8072EBCC  2C 03 00 00 */	cmpwi r3, 0
/* 8072EBD0  41 82 00 20 */	beq lbl_8072EBF0
/* 8072EBD4  48 00 00 34 */	b lbl_8072EC08
lbl_8072EBD8:
/* 8072EBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072EBDC  41 82 00 0C */	beq lbl_8072EBE8
/* 8072EBE0  38 00 00 01 */	li r0, 1
/* 8072EBE4  48 00 00 28 */	b lbl_8072EC0C
lbl_8072EBE8:
/* 8072EBE8  38 00 00 02 */	li r0, 2
/* 8072EBEC  48 00 00 20 */	b lbl_8072EC0C
lbl_8072EBF0:
/* 8072EBF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072EBF4  41 82 00 0C */	beq lbl_8072EC00
/* 8072EBF8  38 00 00 05 */	li r0, 5
/* 8072EBFC  48 00 00 10 */	b lbl_8072EC0C
lbl_8072EC00:
/* 8072EC00  38 00 00 03 */	li r0, 3
/* 8072EC04  48 00 00 08 */	b lbl_8072EC0C
lbl_8072EC08:
/* 8072EC08  38 00 00 04 */	li r0, 4
lbl_8072EC0C:
/* 8072EC0C  2C 00 00 01 */	cmpwi r0, 1
/* 8072EC10  40 82 00 0C */	bne lbl_8072EC1C
/* 8072EC14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072EC18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072EC1C:
/* 8072EC1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072EC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072EC24  40 80 00 24 */	bge lbl_8072EC48
/* 8072EC28  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8072EC2C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8072EC30  4B B4 21 F4 */	b cLib_distanceAngleS__Fss
/* 8072EC34  7C 60 07 34 */	extsh r0, r3
/* 8072EC38  2C 00 01 00 */	cmpwi r0, 0x100
/* 8072EC3C  40 80 00 0C */	bge lbl_8072EC48
/* 8072EC40  38 00 00 01 */	li r0, 1
/* 8072EC44  98 1E 06 E9 */	stb r0, 0x6e9(r30)
lbl_8072EC48:
/* 8072EC48  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 8072EC4C  2C 00 00 02 */	cmpwi r0, 2
/* 8072EC50  41 82 02 FC */	beq lbl_8072EF4C
/* 8072EC54  40 80 00 14 */	bge lbl_8072EC68
/* 8072EC58  2C 00 00 00 */	cmpwi r0, 0
/* 8072EC5C  41 82 00 18 */	beq lbl_8072EC74
/* 8072EC60  40 80 02 7C */	bge lbl_8072EEDC
/* 8072EC64  48 00 05 2C */	b lbl_8072F190
lbl_8072EC68:
/* 8072EC68  2C 00 00 04 */	cmpwi r0, 4
/* 8072EC6C  40 80 05 24 */	bge lbl_8072F190
/* 8072EC70  48 00 05 04 */	b lbl_8072F174
lbl_8072EC74:
/* 8072EC74  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 8072EC78  2C 00 00 00 */	cmpwi r0, 0
/* 8072EC7C  40 82 00 48 */	bne lbl_8072ECC4
/* 8072EC80  7F C3 F3 78 */	mr r3, r30
/* 8072EC84  38 80 00 1B */	li r4, 0x1b
/* 8072EC88  38 A0 00 02 */	li r5, 2
/* 8072EC8C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072EC90  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072EC94  4B FF F5 E1 */	bl setBck__8daE_OC_cFiUcff
/* 8072EC98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070180@ha */
/* 8072EC9C  38 03 01 80 */	addi r0, r3, 0x0180 /* 0x00070180@l */
/* 8072ECA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8072ECA4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072ECA8  38 81 00 20 */	addi r4, r1, 0x20
/* 8072ECAC  38 A0 FF FF */	li r5, -1
/* 8072ECB0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072ECB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072ECB8  7D 89 03 A6 */	mtctr r12
/* 8072ECBC  4E 80 04 21 */	bctrl 
/* 8072ECC0  48 00 00 44 */	b lbl_8072ED04
lbl_8072ECC4:
/* 8072ECC4  7F C3 F3 78 */	mr r3, r30
/* 8072ECC8  38 80 00 18 */	li r4, 0x18
/* 8072ECCC  38 A0 00 02 */	li r5, 2
/* 8072ECD0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072ECD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072ECD8  4B FF F5 9D */	bl setBck__8daE_OC_cFiUcff
/* 8072ECDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018B@ha */
/* 8072ECE0  38 03 01 8B */	addi r0, r3, 0x018B /* 0x0007018B@l */
/* 8072ECE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8072ECE8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072ECEC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8072ECF0  38 A0 FF FF */	li r5, -1
/* 8072ECF4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072ECF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072ECFC  7D 89 03 A6 */	mtctr r12
/* 8072ED00  4E 80 04 21 */	bctrl 
lbl_8072ED04:
/* 8072ED04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072ED08  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8072ED0C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8072ED10  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 8072ED14  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 8072ED18  2C 00 00 00 */	cmpwi r0, 0
/* 8072ED1C  40 82 00 6C */	bne lbl_8072ED88
/* 8072ED20  4B B3 8B 4C */	b cM_rnd__Fv
/* 8072ED24  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8072ED28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072ED2C  40 80 00 30 */	bge lbl_8072ED5C
/* 8072ED30  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8072ED34  4B B3 8C 20 */	b cM_rndF__Ff
/* 8072ED38  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8072ED3C  EC 00 08 2A */	fadds f0, f0, f1
/* 8072ED40  FC 00 00 1E */	fctiwz f0, f0
/* 8072ED44  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072ED48  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072ED4C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072ED50  38 00 00 01 */	li r0, 1
/* 8072ED54  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072ED58  48 00 04 38 */	b lbl_8072F190
lbl_8072ED5C:
/* 8072ED5C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072ED60  4B B3 8B F4 */	b cM_rndF__Ff
/* 8072ED64  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8072ED68  EC 00 08 2A */	fadds f0, f0, f1
/* 8072ED6C  FC 00 00 1E */	fctiwz f0, f0
/* 8072ED70  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072ED74  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072ED78  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072ED7C  38 00 00 03 */	li r0, 3
/* 8072ED80  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072ED84  48 00 04 0C */	b lbl_8072F190
lbl_8072ED88:
/* 8072ED88  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 8072ED8C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072ED90  4B C1 86 0C */	b PSVECSquareDistance
/* 8072ED94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072ED98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072ED9C  40 81 00 58 */	ble lbl_8072EDF4
/* 8072EDA0  FC 00 08 34 */	frsqrte f0, f1
/* 8072EDA4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072EDA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8072EDAC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072EDB0  FC 00 00 32 */	fmul f0, f0, f0
/* 8072EDB4  FC 01 00 32 */	fmul f0, f1, f0
/* 8072EDB8  FC 03 00 28 */	fsub f0, f3, f0
/* 8072EDBC  FC 02 00 32 */	fmul f0, f2, f0
/* 8072EDC0  FC 44 00 32 */	fmul f2, f4, f0
/* 8072EDC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8072EDC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8072EDCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8072EDD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8072EDD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8072EDD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8072EDDC  FC 01 00 32 */	fmul f0, f1, f0
/* 8072EDE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8072EDE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8072EDE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8072EDEC  FC 20 08 18 */	frsp f1, f1
/* 8072EDF0  48 00 00 88 */	b lbl_8072EE78
lbl_8072EDF4:
/* 8072EDF4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072EDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072EDFC  40 80 00 10 */	bge lbl_8072EE0C
/* 8072EE00  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072EE04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072EE08  48 00 00 70 */	b lbl_8072EE78
lbl_8072EE0C:
/* 8072EE0C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8072EE10  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8072EE14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072EE18  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072EE1C  7C 03 00 00 */	cmpw r3, r0
/* 8072EE20  41 82 00 14 */	beq lbl_8072EE34
/* 8072EE24  40 80 00 40 */	bge lbl_8072EE64
/* 8072EE28  2C 03 00 00 */	cmpwi r3, 0
/* 8072EE2C  41 82 00 20 */	beq lbl_8072EE4C
/* 8072EE30  48 00 00 34 */	b lbl_8072EE64
lbl_8072EE34:
/* 8072EE34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072EE38  41 82 00 0C */	beq lbl_8072EE44
/* 8072EE3C  38 00 00 01 */	li r0, 1
/* 8072EE40  48 00 00 28 */	b lbl_8072EE68
lbl_8072EE44:
/* 8072EE44  38 00 00 02 */	li r0, 2
/* 8072EE48  48 00 00 20 */	b lbl_8072EE68
lbl_8072EE4C:
/* 8072EE4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072EE50  41 82 00 0C */	beq lbl_8072EE5C
/* 8072EE54  38 00 00 05 */	li r0, 5
/* 8072EE58  48 00 00 10 */	b lbl_8072EE68
lbl_8072EE5C:
/* 8072EE5C  38 00 00 03 */	li r0, 3
/* 8072EE60  48 00 00 08 */	b lbl_8072EE68
lbl_8072EE64:
/* 8072EE64  38 00 00 04 */	li r0, 4
lbl_8072EE68:
/* 8072EE68  2C 00 00 01 */	cmpwi r0, 1
/* 8072EE6C  40 82 00 0C */	bne lbl_8072EE78
/* 8072EE70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072EE74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072EE78:
/* 8072EE78  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072EE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072EE80  40 81 00 30 */	ble lbl_8072EEB0
/* 8072EE84  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072EE88  4B B3 8A CC */	b cM_rndF__Ff
/* 8072EE8C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8072EE90  EC 00 08 2A */	fadds f0, f0, f1
/* 8072EE94  FC 00 00 1E */	fctiwz f0, f0
/* 8072EE98  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072EE9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072EEA0  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072EEA4  38 00 00 03 */	li r0, 3
/* 8072EEA8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072EEAC  48 00 02 E4 */	b lbl_8072F190
lbl_8072EEB0:
/* 8072EEB0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8072EEB4  4B B3 8A A0 */	b cM_rndF__Ff
/* 8072EEB8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8072EEBC  EC 00 08 2A */	fadds f0, f0, f1
/* 8072EEC0  FC 00 00 1E */	fctiwz f0, f0
/* 8072EEC4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072EEC8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072EECC  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072EED0  38 00 00 01 */	li r0, 1
/* 8072EED4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072EED8  48 00 02 B8 */	b lbl_8072F190
lbl_8072EEDC:
/* 8072EEDC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8072EEE0  A8 9E 06 BC */	lha r4, 0x6bc(r30)
/* 8072EEE4  38 A0 00 04 */	li r5, 4
/* 8072EEE8  38 C0 08 00 */	li r6, 0x800
/* 8072EEEC  38 E0 01 00 */	li r7, 0x100
/* 8072EEF0  4B B4 16 50 */	b cLib_addCalcAngleS__FPsssss
/* 8072EEF4  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072EEF8  2C 00 00 00 */	cmpwi r0, 0
/* 8072EEFC  40 82 02 94 */	bne lbl_8072F190
/* 8072EF00  7F C3 F3 78 */	mr r3, r30
/* 8072EF04  38 80 00 16 */	li r4, 0x16
/* 8072EF08  38 A0 00 00 */	li r5, 0
/* 8072EF0C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072EF10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072EF14  4B FF F3 61 */	bl setBck__8daE_OC_cFiUcff
/* 8072EF18  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017C@ha */
/* 8072EF1C  38 03 01 7C */	addi r0, r3, 0x017C /* 0x0007017C@l */
/* 8072EF20  90 01 00 18 */	stw r0, 0x18(r1)
/* 8072EF24  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072EF28  38 81 00 18 */	addi r4, r1, 0x18
/* 8072EF2C  38 A0 FF FF */	li r5, -1
/* 8072EF30  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072EF34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072EF38  7D 89 03 A6 */	mtctr r12
/* 8072EF3C  4E 80 04 21 */	bctrl 
/* 8072EF40  38 00 00 02 */	li r0, 2
/* 8072EF44  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072EF48  48 00 02 48 */	b lbl_8072F190
lbl_8072EF4C:
/* 8072EF4C  7F C3 F3 78 */	mr r3, r30
/* 8072EF50  4B FF E1 B1 */	bl searchPlayerShakeHead__8daE_OC_cFv
/* 8072EF54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072EF58  41 82 00 18 */	beq lbl_8072EF70
/* 8072EF5C  7F C3 F3 78 */	mr r3, r30
/* 8072EF60  38 80 00 03 */	li r4, 3
/* 8072EF64  38 A0 00 01 */	li r5, 1
/* 8072EF68  4B FF ED 55 */	bl setActionMode__8daE_OC_cFii
/* 8072EF6C  48 00 02 24 */	b lbl_8072F190
lbl_8072EF70:
/* 8072EF70  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072EF74  38 80 00 01 */	li r4, 1
/* 8072EF78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8072EF7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8072EF80  40 82 00 18 */	bne lbl_8072EF98
/* 8072EF84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072EF88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8072EF8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8072EF90  41 82 00 08 */	beq lbl_8072EF98
/* 8072EF94  38 80 00 00 */	li r4, 0
lbl_8072EF98:
/* 8072EF98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8072EF9C  41 82 01 F4 */	beq lbl_8072F190
/* 8072EFA0  7F C3 F3 78 */	mr r3, r30
/* 8072EFA4  38 80 00 1B */	li r4, 0x1b
/* 8072EFA8  38 A0 00 02 */	li r5, 2
/* 8072EFAC  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8072EFB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072EFB4  4B FF F2 C1 */	bl setBck__8daE_OC_cFiUcff
/* 8072EFB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070180@ha */
/* 8072EFBC  38 03 01 80 */	addi r0, r3, 0x0180 /* 0x00070180@l */
/* 8072EFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072EFC4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072EFC8  38 81 00 14 */	addi r4, r1, 0x14
/* 8072EFCC  38 A0 FF FF */	li r5, -1
/* 8072EFD0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072EFD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072EFD8  7D 89 03 A6 */	mtctr r12
/* 8072EFDC  4E 80 04 21 */	bctrl 
/* 8072EFE0  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 8072EFE4  2C 00 00 00 */	cmpwi r0, 0
/* 8072EFE8  40 82 00 30 */	bne lbl_8072F018
/* 8072EFEC  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8072EFF0  4B B3 89 64 */	b cM_rndF__Ff
/* 8072EFF4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8072EFF8  EC 00 08 2A */	fadds f0, f0, f1
/* 8072EFFC  FC 00 00 1E */	fctiwz f0, f0
/* 8072F000  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072F004  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072F008  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F00C  38 00 00 03 */	li r0, 3
/* 8072F010  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F014  48 00 01 7C */	b lbl_8072F190
lbl_8072F018:
/* 8072F018  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 8072F01C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072F020  4B C1 83 7C */	b PSVECSquareDistance
/* 8072F024  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072F028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F02C  40 81 00 58 */	ble lbl_8072F084
/* 8072F030  FC 00 08 34 */	frsqrte f0, f1
/* 8072F034  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8072F038  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F03C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8072F040  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F044  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F048  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F04C  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F050  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F054  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F058  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F05C  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F060  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F064  FC 44 00 32 */	fmul f2, f4, f0
/* 8072F068  FC 00 00 32 */	fmul f0, f0, f0
/* 8072F06C  FC 01 00 32 */	fmul f0, f1, f0
/* 8072F070  FC 03 00 28 */	fsub f0, f3, f0
/* 8072F074  FC 02 00 32 */	fmul f0, f2, f0
/* 8072F078  FC 21 00 32 */	fmul f1, f1, f0
/* 8072F07C  FC 20 08 18 */	frsp f1, f1
/* 8072F080  48 00 00 88 */	b lbl_8072F108
lbl_8072F084:
/* 8072F084  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8072F088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F08C  40 80 00 10 */	bge lbl_8072F09C
/* 8072F090  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072F094  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8072F098  48 00 00 70 */	b lbl_8072F108
lbl_8072F09C:
/* 8072F09C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8072F0A0  80 81 00 08 */	lwz r4, 8(r1)
/* 8072F0A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8072F0A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8072F0AC  7C 03 00 00 */	cmpw r3, r0
/* 8072F0B0  41 82 00 14 */	beq lbl_8072F0C4
/* 8072F0B4  40 80 00 40 */	bge lbl_8072F0F4
/* 8072F0B8  2C 03 00 00 */	cmpwi r3, 0
/* 8072F0BC  41 82 00 20 */	beq lbl_8072F0DC
/* 8072F0C0  48 00 00 34 */	b lbl_8072F0F4
lbl_8072F0C4:
/* 8072F0C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072F0C8  41 82 00 0C */	beq lbl_8072F0D4
/* 8072F0CC  38 00 00 01 */	li r0, 1
/* 8072F0D0  48 00 00 28 */	b lbl_8072F0F8
lbl_8072F0D4:
/* 8072F0D4  38 00 00 02 */	li r0, 2
/* 8072F0D8  48 00 00 20 */	b lbl_8072F0F8
lbl_8072F0DC:
/* 8072F0DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8072F0E0  41 82 00 0C */	beq lbl_8072F0EC
/* 8072F0E4  38 00 00 05 */	li r0, 5
/* 8072F0E8  48 00 00 10 */	b lbl_8072F0F8
lbl_8072F0EC:
/* 8072F0EC  38 00 00 03 */	li r0, 3
/* 8072F0F0  48 00 00 08 */	b lbl_8072F0F8
lbl_8072F0F4:
/* 8072F0F4  38 00 00 04 */	li r0, 4
lbl_8072F0F8:
/* 8072F0F8  2C 00 00 01 */	cmpwi r0, 1
/* 8072F0FC  40 82 00 0C */	bne lbl_8072F108
/* 8072F100  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8072F104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8072F108:
/* 8072F108  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072F10C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072F110  40 81 00 30 */	ble lbl_8072F140
/* 8072F114  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8072F118  4B B3 88 3C */	b cM_rndF__Ff
/* 8072F11C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8072F120  EC 00 08 2A */	fadds f0, f0, f1
/* 8072F124  FC 00 00 1E */	fctiwz f0, f0
/* 8072F128  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072F12C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072F130  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F134  38 00 00 03 */	li r0, 3
/* 8072F138  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F13C  48 00 00 54 */	b lbl_8072F190
lbl_8072F140:
/* 8072F140  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8072F144  4B B3 88 48 */	b cM_rndFX__Ff
/* 8072F148  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8072F14C  EC 00 08 2A */	fadds f0, f0, f1
/* 8072F150  FC 00 00 1E */	fctiwz f0, f0
/* 8072F154  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072F158  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072F15C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8072F160  38 00 00 01 */	li r0, 1
/* 8072F164  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8072F168  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8072F16C  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 8072F170  48 00 00 20 */	b lbl_8072F190
lbl_8072F174:
/* 8072F174  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8072F178  2C 00 00 00 */	cmpwi r0, 0
/* 8072F17C  40 82 00 14 */	bne lbl_8072F190
/* 8072F180  7F C3 F3 78 */	mr r3, r30
/* 8072F184  38 80 00 01 */	li r4, 1
/* 8072F188  38 A0 00 00 */	li r5, 0
/* 8072F18C  4B FF EB 31 */	bl setActionMode__8daE_OC_cFii
lbl_8072F190:
/* 8072F190  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8072F194  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8072F198  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072F19C  7C 08 03 A6 */	mtlr r0
/* 8072F1A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8072F1A4  4E 80 00 20 */	blr 
