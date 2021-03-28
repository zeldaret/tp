lbl_8023AC44:
/* 8023AC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023AC48  7C 08 02 A6 */	mflr r0
/* 8023AC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023AC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023AC54  93 C1 00 08 */	stw r30, 8(r1)
/* 8023AC58  7C 7E 1B 78 */	mr r30, r3
/* 8023AC5C  88 83 01 0E */	lbz r4, 0x10e(r3)
/* 8023AC60  88 03 01 10 */	lbz r0, 0x110(r3)
/* 8023AC64  7C 04 00 40 */	cmplw r4, r0
/* 8023AC68  41 82 01 E8 */	beq lbl_8023AE50
/* 8023AC6C  98 9E 01 0F */	stb r4, 0x10f(r30)
/* 8023AC70  88 1E 01 10 */	lbz r0, 0x110(r30)
/* 8023AC74  98 1E 01 0E */	stb r0, 0x10e(r30)
/* 8023AC78  88 1E 01 0F */	lbz r0, 0x10f(r30)
/* 8023AC7C  2C 00 00 02 */	cmpwi r0, 2
/* 8023AC80  41 82 00 EC */	beq lbl_8023AD6C
/* 8023AC84  40 80 00 14 */	bge lbl_8023AC98
/* 8023AC88  2C 00 00 00 */	cmpwi r0, 0
/* 8023AC8C  41 82 00 18 */	beq lbl_8023ACA4
/* 8023AC90  40 80 00 78 */	bge lbl_8023AD08
/* 8023AC94  48 00 01 94 */	b lbl_8023AE28
lbl_8023AC98:
/* 8023AC98  2C 00 00 FF */	cmpwi r0, 0xff
/* 8023AC9C  41 82 01 34 */	beq lbl_8023ADD0
/* 8023ACA0  48 00 01 88 */	b lbl_8023AE28
lbl_8023ACA4:
/* 8023ACA4  88 1E 01 0E */	lbz r0, 0x10e(r30)
/* 8023ACA8  28 00 00 01 */	cmplwi r0, 1
/* 8023ACAC  40 82 00 2C */	bne lbl_8023ACD8
/* 8023ACB0  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023ACB4  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ACB8  38 80 00 01 */	li r4, 1
/* 8023ACBC  48 00 0B B5 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023ACC0  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023ACC4  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ACC8  7F C3 F3 78 */	mr r3, r30
/* 8023ACCC  38 80 00 00 */	li r4, 0
/* 8023ACD0  48 00 0B A1 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023ACD4  48 00 01 54 */	b lbl_8023AE28
lbl_8023ACD8:
/* 8023ACD8  28 00 00 02 */	cmplwi r0, 2
/* 8023ACDC  40 82 01 4C */	bne lbl_8023AE28
/* 8023ACE0  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023ACE4  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ACE8  38 80 00 02 */	li r4, 2
/* 8023ACEC  48 00 0B 85 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023ACF0  C0 02 B1 90 */	lfs f0, lit_4607(r2)
/* 8023ACF4  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ACF8  7F C3 F3 78 */	mr r3, r30
/* 8023ACFC  38 80 00 00 */	li r4, 0
/* 8023AD00  48 00 0B 71 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD04  48 00 01 24 */	b lbl_8023AE28
lbl_8023AD08:
/* 8023AD08  88 1E 01 0E */	lbz r0, 0x10e(r30)
/* 8023AD0C  28 00 00 00 */	cmplwi r0, 0
/* 8023AD10  40 82 00 2C */	bne lbl_8023AD3C
/* 8023AD14  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023AD18  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023AD1C  38 80 00 00 */	li r4, 0
/* 8023AD20  48 00 0B 51 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD24  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023AD28  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023AD2C  7F C3 F3 78 */	mr r3, r30
/* 8023AD30  38 80 00 01 */	li r4, 1
/* 8023AD34  48 00 0B 3D */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD38  48 00 00 F0 */	b lbl_8023AE28
lbl_8023AD3C:
/* 8023AD3C  28 00 00 02 */	cmplwi r0, 2
/* 8023AD40  40 82 00 E8 */	bne lbl_8023AE28
/* 8023AD44  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023AD48  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023AD4C  38 80 00 02 */	li r4, 2
/* 8023AD50  48 00 0B 21 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD54  C0 02 B1 90 */	lfs f0, lit_4607(r2)
/* 8023AD58  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023AD5C  7F C3 F3 78 */	mr r3, r30
/* 8023AD60  38 80 00 01 */	li r4, 1
/* 8023AD64  48 00 0B 0D */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD68  48 00 00 C0 */	b lbl_8023AE28
lbl_8023AD6C:
/* 8023AD6C  88 1E 01 0E */	lbz r0, 0x10e(r30)
/* 8023AD70  28 00 00 01 */	cmplwi r0, 1
/* 8023AD74  40 82 00 2C */	bne lbl_8023ADA0
/* 8023AD78  C0 02 B1 90 */	lfs f0, lit_4607(r2)
/* 8023AD7C  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023AD80  38 80 00 01 */	li r4, 1
/* 8023AD84  48 00 0A ED */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD88  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023AD8C  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023AD90  7F C3 F3 78 */	mr r3, r30
/* 8023AD94  38 80 00 02 */	li r4, 2
/* 8023AD98  48 00 0A D9 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AD9C  48 00 00 8C */	b lbl_8023AE28
lbl_8023ADA0:
/* 8023ADA0  28 00 00 00 */	cmplwi r0, 0
/* 8023ADA4  40 82 00 84 */	bne lbl_8023AE28
/* 8023ADA8  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023ADAC  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ADB0  38 80 00 00 */	li r4, 0
/* 8023ADB4  48 00 0A BD */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023ADB8  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023ADBC  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ADC0  7F C3 F3 78 */	mr r3, r30
/* 8023ADC4  38 80 00 02 */	li r4, 2
/* 8023ADC8  48 00 0A A9 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023ADCC  48 00 00 5C */	b lbl_8023AE28
lbl_8023ADD0:
/* 8023ADD0  88 1E 01 0E */	lbz r0, 0x10e(r30)
/* 8023ADD4  28 00 00 00 */	cmplwi r0, 0
/* 8023ADD8  40 82 00 10 */	bne lbl_8023ADE8
/* 8023ADDC  C0 02 B1 88 */	lfs f0, lit_4605(r2)
/* 8023ADE0  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ADE4  48 00 00 28 */	b lbl_8023AE0C
lbl_8023ADE8:
/* 8023ADE8  28 00 00 01 */	cmplwi r0, 1
/* 8023ADEC  40 82 00 10 */	bne lbl_8023ADFC
/* 8023ADF0  C0 02 B1 84 */	lfs f0, lit_4604(r2)
/* 8023ADF4  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8023ADF8  48 00 00 14 */	b lbl_8023AE0C
lbl_8023ADFC:
/* 8023ADFC  28 00 00 02 */	cmplwi r0, 2
/* 8023AE00  40 82 00 0C */	bne lbl_8023AE0C
/* 8023AE04  C0 02 B1 8C */	lfs f0, lit_4606(r2)
/* 8023AE08  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
lbl_8023AE0C:
/* 8023AE0C  3B E0 00 00 */	li r31, 0
lbl_8023AE10:
/* 8023AE10  7F C3 F3 78 */	mr r3, r30
/* 8023AE14  7F E4 FB 78 */	mr r4, r31
/* 8023AE18  48 00 0A 59 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023AE1C  3B FF 00 01 */	addi r31, r31, 1
/* 8023AE20  2C 1F 00 03 */	cmpwi r31, 3
/* 8023AE24  41 80 FF EC */	blt lbl_8023AE10
lbl_8023AE28:
/* 8023AE28  88 1E 01 0F */	lbz r0, 0x10f(r30)
/* 8023AE2C  28 00 00 FF */	cmplwi r0, 0xff
/* 8023AE30  41 82 00 18 */	beq lbl_8023AE48
/* 8023AE34  38 00 00 00 */	li r0, 0
/* 8023AE38  B0 1E 01 0C */	sth r0, 0x10c(r30)
/* 8023AE3C  38 00 00 04 */	li r0, 4
/* 8023AE40  98 1E 01 13 */	stb r0, 0x113(r30)
/* 8023AE44  48 00 00 0C */	b lbl_8023AE50
lbl_8023AE48:
/* 8023AE48  38 00 00 03 */	li r0, 3
/* 8023AE4C  98 1E 01 13 */	stb r0, 0x113(r30)
lbl_8023AE50:
/* 8023AE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023AE54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023AE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023AE5C  7C 08 03 A6 */	mtlr r0
/* 8023AE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8023AE64  4E 80 00 20 */	blr 
