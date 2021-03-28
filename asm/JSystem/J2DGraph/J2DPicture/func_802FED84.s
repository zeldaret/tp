lbl_802FED84:
/* 802FED84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FED88  7C 08 02 A6 */	mflr r0
/* 802FED8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FED90  39 61 00 40 */	addi r11, r1, 0x40
/* 802FED94  48 06 34 41 */	bl _savegpr_27
/* 802FED98  7C 9D 23 78 */	mr r29, r4
/* 802FED9C  7C FE 3B 78 */	mr r30, r7
/* 802FEDA0  7D 1F 43 78 */	mr r31, r8
/* 802FEDA4  55 00 06 3F */	clrlwi. r0, r8, 0x18
/* 802FEDA8  40 82 00 60 */	bne lbl_802FEE08
/* 802FEDAC  57 C4 07 BD */	rlwinm. r4, r30, 0, 0x1e, 0x1e
/* 802FEDB0  41 82 00 0C */	beq lbl_802FEDBC
/* 802FEDB4  54 C0 F7 FE */	rlwinm r0, r6, 0x1e, 0x1f, 0x1f
/* 802FEDB8  48 00 00 08 */	b lbl_802FEDC0
lbl_802FEDBC:
/* 802FEDBC  54 C0 EF FE */	rlwinm r0, r6, 0x1d, 0x1f, 0x1f
lbl_802FEDC0:
/* 802FEDC0  2C 04 00 00 */	cmpwi r4, 0
/* 802FEDC4  41 82 00 0C */	beq lbl_802FEDD0
/* 802FEDC8  54 C4 EF FE */	rlwinm r4, r6, 0x1d, 0x1f, 0x1f
/* 802FEDCC  48 00 00 08 */	b lbl_802FEDD4
lbl_802FEDD0:
/* 802FEDD0  54 C4 F7 FE */	rlwinm r4, r6, 0x1e, 0x1f, 0x1f
lbl_802FEDD4:
/* 802FEDD4  57 C8 07 FF */	clrlwi. r8, r30, 0x1f
/* 802FEDD8  41 82 00 0C */	beq lbl_802FEDE4
/* 802FEDDC  54 C7 07 FE */	clrlwi r7, r6, 0x1f
/* 802FEDE0  48 00 00 08 */	b lbl_802FEDE8
lbl_802FEDE4:
/* 802FEDE4  54 C7 FF FE */	rlwinm r7, r6, 0x1f, 0x1f, 0x1f
lbl_802FEDE8:
/* 802FEDE8  2C 08 00 00 */	cmpwi r8, 0
/* 802FEDEC  41 82 00 10 */	beq lbl_802FEDFC
/* 802FEDF0  54 C6 FF FE */	rlwinm r6, r6, 0x1f, 0x1f, 0x1f
/* 802FEDF4  7C C9 33 78 */	mr r9, r6
/* 802FEDF8  48 00 00 68 */	b lbl_802FEE60
lbl_802FEDFC:
/* 802FEDFC  54 C6 07 FE */	clrlwi r6, r6, 0x1f
/* 802FEE00  7C C9 33 78 */	mr r9, r6
/* 802FEE04  48 00 00 5C */	b lbl_802FEE60
lbl_802FEE08:
/* 802FEE08  57 C4 07 BD */	rlwinm. r4, r30, 0, 0x1e, 0x1e
/* 802FEE0C  41 82 00 0C */	beq lbl_802FEE18
/* 802FEE10  54 C0 07 FE */	clrlwi r0, r6, 0x1f
/* 802FEE14  48 00 00 08 */	b lbl_802FEE1C
lbl_802FEE18:
/* 802FEE18  54 C0 FF FE */	rlwinm r0, r6, 0x1f, 0x1f, 0x1f
lbl_802FEE1C:
/* 802FEE1C  2C 04 00 00 */	cmpwi r4, 0
/* 802FEE20  41 82 00 0C */	beq lbl_802FEE2C
/* 802FEE24  54 C4 FF FE */	rlwinm r4, r6, 0x1f, 0x1f, 0x1f
/* 802FEE28  48 00 00 08 */	b lbl_802FEE30
lbl_802FEE2C:
/* 802FEE2C  54 C4 07 FE */	clrlwi r4, r6, 0x1f
lbl_802FEE30:
/* 802FEE30  57 C8 07 FF */	clrlwi. r8, r30, 0x1f
/* 802FEE34  41 82 00 0C */	beq lbl_802FEE40
/* 802FEE38  54 C7 EF FE */	rlwinm r7, r6, 0x1d, 0x1f, 0x1f
/* 802FEE3C  48 00 00 08 */	b lbl_802FEE44
lbl_802FEE40:
/* 802FEE40  54 C7 F7 FE */	rlwinm r7, r6, 0x1e, 0x1f, 0x1f
lbl_802FEE44:
/* 802FEE44  2C 08 00 00 */	cmpwi r8, 0
/* 802FEE48  41 82 00 10 */	beq lbl_802FEE58
/* 802FEE4C  54 C6 F7 FE */	rlwinm r6, r6, 0x1e, 0x1f, 0x1f
/* 802FEE50  7C C9 33 78 */	mr r9, r6
/* 802FEE54  48 00 00 0C */	b lbl_802FEE60
lbl_802FEE58:
/* 802FEE58  54 C6 EF FE */	rlwinm r6, r6, 0x1d, 0x1f, 0x1f
/* 802FEE5C  7C C9 33 78 */	mr r9, r6
lbl_802FEE60:
/* 802FEE60  57 E6 06 3E */	clrlwi r6, r31, 0x18
/* 802FEE64  7C C6 00 34 */	cntlzw r6, r6
/* 802FEE68  54 C8 D9 7E */	srwi r8, r6, 5
/* 802FEE6C  54 C6 DE 3F */	rlwinm. r6, r6, 0x1b, 0x18, 0x1f
/* 802FEE70  41 82 00 14 */	beq lbl_802FEE84
/* 802FEE74  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802FEE78  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802FEE7C  EC 41 00 28 */	fsubs f2, f1, f0
/* 802FEE80  48 00 00 10 */	b lbl_802FEE90
lbl_802FEE84:
/* 802FEE84  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802FEE88  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802FEE8C  EC 41 00 28 */	fsubs f2, f1, f0
lbl_802FEE90:
/* 802FEE90  55 06 06 3F */	clrlwi. r6, r8, 0x18
/* 802FEE94  41 82 00 14 */	beq lbl_802FEEA8
/* 802FEE98  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802FEE9C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802FEEA0  EC 61 00 28 */	fsubs f3, f1, f0
/* 802FEEA4  48 00 00 10 */	b lbl_802FEEB4
lbl_802FEEA8:
/* 802FEEA8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802FEEAC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802FEEB0  EC 61 00 28 */	fsubs f3, f1, f0
lbl_802FEEB4:
/* 802FEEB4  28 05 00 00 */	cmplwi r5, 0
/* 802FEEB8  40 82 00 10 */	bne lbl_802FEEC8
/* 802FEEBC  FC 80 10 90 */	fmr f4, f2
/* 802FEEC0  FC A0 18 90 */	fmr f5, f3
/* 802FEEC4  48 00 00 40 */	b lbl_802FEF04
lbl_802FEEC8:
/* 802FEEC8  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 802FEECC  A0 66 00 02 */	lhz r3, 2(r6)
/* 802FEED0  C8 22 C8 70 */	lfd f1, lit_2021(r2)
/* 802FEED4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802FEED8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802FEEDC  3C A0 43 30 */	lis r5, 0x4330
/* 802FEEE0  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802FEEE4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802FEEE8  EC 80 08 28 */	fsubs f4, f0, f1
/* 802FEEEC  A0 66 00 04 */	lhz r3, 4(r6)
/* 802FEEF0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802FEEF4  90 61 00 24 */	stw r3, 0x24(r1)
/* 802FEEF8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802FEEFC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FEF00  EC A0 08 28 */	fsubs f5, f0, f1
lbl_802FEF04:
/* 802FEF04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802FEF08  41 82 00 28 */	beq lbl_802FEF30
/* 802FEF0C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FEF10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FEF14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802FEF18  41 82 00 0C */	beq lbl_802FEF24
/* 802FEF1C  C0 02 C8 68 */	lfs f0, lit_1767(r2)
/* 802FEF20  48 00 00 08 */	b lbl_802FEF28
lbl_802FEF24:
/* 802FEF24  EC 02 20 24 */	fdivs f0, f2, f4
lbl_802FEF28:
/* 802FEF28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FEF2C  48 00 00 40 */	b lbl_802FEF6C
lbl_802FEF30:
/* 802FEF30  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802FEF34  41 82 00 1C */	beq lbl_802FEF50
/* 802FEF38  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FEF3C  EC 02 20 24 */	fdivs f0, f2, f4
/* 802FEF40  EC 01 00 28 */	fsubs f0, f1, f0
/* 802FEF44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FEF48  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802FEF4C  48 00 00 20 */	b lbl_802FEF6C
lbl_802FEF50:
/* 802FEF50  C0 22 C8 7C */	lfs f1, lit_2933(r2)
/* 802FEF54  EC 02 20 24 */	fdivs f0, f2, f4
/* 802FEF58  EC 40 00 72 */	fmuls f2, f0, f1
/* 802FEF5C  EC 01 10 28 */	fsubs f0, f1, f2
/* 802FEF60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FEF64  EC 01 10 2A */	fadds f0, f1, f2
/* 802FEF68  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_802FEF6C:
/* 802FEF6C  54 E0 06 3F */	clrlwi. r0, r7, 0x18
/* 802FEF70  41 82 00 28 */	beq lbl_802FEF98
/* 802FEF74  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FEF78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FEF7C  55 20 06 3F */	clrlwi. r0, r9, 0x18
/* 802FEF80  41 82 00 0C */	beq lbl_802FEF8C
/* 802FEF84  C0 02 C8 68 */	lfs f0, lit_1767(r2)
/* 802FEF88  48 00 00 08 */	b lbl_802FEF90
lbl_802FEF8C:
/* 802FEF8C  EC 03 28 24 */	fdivs f0, f3, f5
lbl_802FEF90:
/* 802FEF90  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FEF94  48 00 00 40 */	b lbl_802FEFD4
lbl_802FEF98:
/* 802FEF98  55 20 06 3F */	clrlwi. r0, r9, 0x18
/* 802FEF9C  41 82 00 1C */	beq lbl_802FEFB8
/* 802FEFA0  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FEFA4  EC 03 28 24 */	fdivs f0, f3, f5
/* 802FEFA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802FEFAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FEFB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 802FEFB4  48 00 00 20 */	b lbl_802FEFD4
lbl_802FEFB8:
/* 802FEFB8  C0 22 C8 7C */	lfs f1, lit_2933(r2)
/* 802FEFBC  EC 03 28 24 */	fdivs f0, f3, f5
/* 802FEFC0  EC 40 00 72 */	fmuls f2, f0, f1
/* 802FEFC4  EC 01 10 28 */	fsubs f0, f1, f2
/* 802FEFC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FEFCC  EC 01 10 2A */	fadds f0, f1, f2
/* 802FEFD0  D0 01 00 08 */	stfs f0, 8(r1)
lbl_802FEFD4:
/* 802FEFD4  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 802FEFD8  41 82 00 10 */	beq lbl_802FEFE8
/* 802FEFDC  38 61 00 14 */	addi r3, r1, 0x14
/* 802FEFE0  38 81 00 0C */	addi r4, r1, 0xc
/* 802FEFE4  4B FF FA 7D */	bl swap__10J2DPictureFRfRf
lbl_802FEFE8:
/* 802FEFE8  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 802FEFEC  41 82 00 10 */	beq lbl_802FEFFC
/* 802FEFF0  38 61 00 10 */	addi r3, r1, 0x10
/* 802FEFF4  38 81 00 08 */	addi r4, r1, 8
/* 802FEFF8  4B FF FA 69 */	bl swap__10J2DPictureFRfRf
lbl_802FEFFC:
/* 802FEFFC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802FF000  38 60 00 08 */	li r3, 8
/* 802FF004  4B FF 8C FD */	bl J2DCast_F32_to_S16__7J2DPaneFfUc
/* 802FF008  7C 7B 1B 78 */	mr r27, r3
/* 802FF00C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802FF010  38 60 00 08 */	li r3, 8
/* 802FF014  4B FF 8C ED */	bl J2DCast_F32_to_S16__7J2DPaneFfUc
/* 802FF018  7C 7C 1B 78 */	mr r28, r3
/* 802FF01C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802FF020  38 60 00 08 */	li r3, 8
/* 802FF024  4B FF 8C DD */	bl J2DCast_F32_to_S16__7J2DPaneFfUc
/* 802FF028  7C 7E 1B 78 */	mr r30, r3
/* 802FF02C  C0 21 00 08 */	lfs f1, 8(r1)
/* 802FF030  38 60 00 08 */	li r3, 8
/* 802FF034  4B FF 8C CD */	bl J2DCast_F32_to_S16__7J2DPaneFfUc
/* 802FF038  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802FF03C  40 82 00 28 */	bne lbl_802FF064
/* 802FF040  B3 7D 00 00 */	sth r27, 0(r29)
/* 802FF044  B3 DD 00 02 */	sth r30, 2(r29)
/* 802FF048  B3 9D 00 04 */	sth r28, 4(r29)
/* 802FF04C  B3 DD 00 06 */	sth r30, 6(r29)
/* 802FF050  B3 7D 00 08 */	sth r27, 8(r29)
/* 802FF054  B0 7D 00 0A */	sth r3, 0xa(r29)
/* 802FF058  B3 9D 00 0C */	sth r28, 0xc(r29)
/* 802FF05C  B0 7D 00 0E */	sth r3, 0xe(r29)
/* 802FF060  48 00 00 24 */	b lbl_802FF084
lbl_802FF064:
/* 802FF064  B3 7D 00 00 */	sth r27, 0(r29)
/* 802FF068  B0 7D 00 02 */	sth r3, 2(r29)
/* 802FF06C  B3 7D 00 04 */	sth r27, 4(r29)
/* 802FF070  B3 DD 00 06 */	sth r30, 6(r29)
/* 802FF074  B3 9D 00 08 */	sth r28, 8(r29)
/* 802FF078  B0 7D 00 0A */	sth r3, 0xa(r29)
/* 802FF07C  B3 9D 00 0C */	sth r28, 0xc(r29)
/* 802FF080  B3 DD 00 0E */	sth r30, 0xe(r29)
lbl_802FF084:
/* 802FF084  39 61 00 40 */	addi r11, r1, 0x40
/* 802FF088  48 06 31 99 */	bl _restgpr_27
/* 802FF08C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FF090  7C 08 03 A6 */	mtlr r0
/* 802FF094  38 21 00 40 */	addi r1, r1, 0x40
/* 802FF098  4E 80 00 20 */	blr 
