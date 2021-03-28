lbl_800EBCE0:
/* 800EBCE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EBCE4  7C 08 02 A6 */	mflr r0
/* 800EBCE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EBCEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EBCF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EBCF4  7C 7F 1B 78 */	mr r31, r3
/* 800EBCF8  38 00 00 04 */	li r0, 4
/* 800EBCFC  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800EBD00  4B FF EB 45 */	bl checkSumouVsActor__9daAlink_cFv
/* 800EBD04  2C 03 00 00 */	cmpwi r3, 0
/* 800EBD08  40 82 00 0C */	bne lbl_800EBD14
/* 800EBD0C  38 60 00 01 */	li r3, 1
/* 800EBD10  48 00 03 D0 */	b lbl_800EC0E0
lbl_800EBD14:
/* 800EBD14  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800EBD18  28 00 00 02 */	cmplwi r0, 2
/* 800EBD1C  40 82 00 18 */	bne lbl_800EBD34
/* 800EBD20  38 00 00 01 */	li r0, 1
/* 800EBD24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EBD28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EBD2C  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800EBD30  48 00 00 1C */	b lbl_800EBD4C
lbl_800EBD34:
/* 800EBD34  28 00 00 03 */	cmplwi r0, 3
/* 800EBD38  40 82 00 14 */	bne lbl_800EBD4C
/* 800EBD3C  38 00 00 04 */	li r0, 4
/* 800EBD40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EBD44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EBD48  98 03 5E 81 */	stb r0, 0x5e81(r3)
lbl_800EBD4C:
/* 800EBD4C  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 800EBD50  38 03 00 01 */	addi r0, r3, 1
/* 800EBD54  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EBD58  88 7F 05 6A */	lbz r3, 0x56a(r31)
/* 800EBD5C  28 03 00 1C */	cmplwi r3, 0x1c
/* 800EBD60  41 82 00 0C */	beq lbl_800EBD6C
/* 800EBD64  28 03 00 1B */	cmplwi r3, 0x1b
/* 800EBD68  40 82 00 1C */	bne lbl_800EBD84
lbl_800EBD6C:
/* 800EBD6C  7F E3 FB 78 */	mr r3, r31
/* 800EBD70  38 80 00 00 */	li r4, 0
/* 800EBD74  38 A0 00 00 */	li r5, 0
/* 800EBD78  38 C0 00 00 */	li r6, 0
/* 800EBD7C  4B FF F8 A9 */	bl procSumouActionInit__9daAlink_cFiii
/* 800EBD80  48 00 03 60 */	b lbl_800EC0E0
lbl_800EBD84:
/* 800EBD84  28 03 00 19 */	cmplwi r3, 0x19
/* 800EBD88  41 82 00 0C */	beq lbl_800EBD94
/* 800EBD8C  28 03 00 1A */	cmplwi r3, 0x1a
/* 800EBD90  40 82 00 94 */	bne lbl_800EBE24
lbl_800EBD94:
/* 800EBD94  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800EBD98  A8 9F 30 10 */	lha r4, 0x3010(r31)
/* 800EBD9C  38 A0 00 02 */	li r5, 2
/* 800EBDA0  38 C0 04 00 */	li r6, 0x400
/* 800EBDA4  38 E0 00 40 */	li r7, 0x40
/* 800EBDA8  48 18 47 99 */	bl cLib_addCalcAngleS__FPsssss
/* 800EBDAC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EBDB0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EBDB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800EBDB8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800EBDBC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800EBDC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EBDC4  7C 64 02 14 */	add r3, r4, r0
/* 800EBDC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800EBDCC  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800EBDD0  C0 9F 34 78 */	lfs f4, 0x3478(r31)
/* 800EBDD4  EC 04 00 32 */	fmuls f0, f4, f0
/* 800EBDD8  EC 61 00 28 */	fsubs f3, f1, f0
/* 800EBDDC  C0 5F 37 CC */	lfs f2, 0x37cc(r31)
/* 800EBDE0  7C 04 04 2E */	lfsx f0, r4, r0
/* 800EBDE4  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800EBDE8  EC 04 00 32 */	fmuls f0, f4, f0
/* 800EBDEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EBDF0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800EBDF4  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
/* 800EBDF8  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 800EBDFC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800EBE00  2C 00 00 1D */	cmpwi r0, 0x1d
/* 800EBE04  40 80 00 14 */	bge lbl_800EBE18
/* 800EBE08  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EBE0C  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800EBE10  7C 03 00 00 */	cmpw r3, r0
/* 800EBE14  40 82 02 AC */	bne lbl_800EC0C0
lbl_800EBE18:
/* 800EBE18  7F E3 FB 78 */	mr r3, r31
/* 800EBE1C  4B FF F3 ED */	bl procSumouSideMoveInit__9daAlink_cFv
/* 800EBE20  48 00 02 A0 */	b lbl_800EC0C0
lbl_800EBE24:
/* 800EBE24  28 03 00 13 */	cmplwi r3, 0x13
/* 800EBE28  40 82 00 38 */	bne lbl_800EBE60
/* 800EBE2C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800EBE30  80 9F 28 58 */	lwz r4, 0x2858(r31)
/* 800EBE34  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 800EBE38  48 18 4D CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800EBE3C  7C 64 1B 78 */	mr r4, r3
/* 800EBE40  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800EBE44  38 A0 00 02 */	li r5, 2
/* 800EBE48  38 C0 20 00 */	li r6, 0x2000
/* 800EBE4C  38 E0 08 00 */	li r7, 0x800
/* 800EBE50  48 18 46 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 800EBE54  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EBE58  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EBE5C  48 00 00 C4 */	b lbl_800EBF20
lbl_800EBE60:
/* 800EBE60  28 03 00 1E */	cmplwi r3, 0x1e
/* 800EBE64  40 82 00 7C */	bne lbl_800EBEE0
/* 800EBE68  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800EBE6C  2C 00 00 00 */	cmpwi r0, 0
/* 800EBE70  41 82 00 70 */	beq lbl_800EBEE0
/* 800EBE74  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800EBE78  A8 9F 30 10 */	lha r4, 0x3010(r31)
/* 800EBE7C  38 A0 00 02 */	li r5, 2
/* 800EBE80  38 C0 04 00 */	li r6, 0x400
/* 800EBE84  38 E0 00 40 */	li r7, 0x40
/* 800EBE88  48 18 46 B9 */	bl cLib_addCalcAngleS__FPsssss
/* 800EBE8C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EBE90  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EBE94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800EBE98  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800EBE9C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800EBEA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EBEA4  7C 64 02 14 */	add r3, r4, r0
/* 800EBEA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800EBEAC  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800EBEB0  C0 9F 34 78 */	lfs f4, 0x3478(r31)
/* 800EBEB4  EC 04 00 32 */	fmuls f0, f4, f0
/* 800EBEB8  EC 61 00 28 */	fsubs f3, f1, f0
/* 800EBEBC  C0 5F 37 CC */	lfs f2, 0x37cc(r31)
/* 800EBEC0  7C 04 04 2E */	lfsx f0, r4, r0
/* 800EBEC4  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800EBEC8  EC 04 00 32 */	fmuls f0, f4, f0
/* 800EBECC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EBED0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800EBED4  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
/* 800EBED8  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 800EBEDC  48 00 00 44 */	b lbl_800EBF20
lbl_800EBEE0:
/* 800EBEE0  28 03 00 1E */	cmplwi r3, 0x1e
/* 800EBEE4  41 82 00 0C */	beq lbl_800EBEF0
/* 800EBEE8  28 03 00 1D */	cmplwi r3, 0x1d
/* 800EBEEC  40 82 00 34 */	bne lbl_800EBF20
lbl_800EBEF0:
/* 800EBEF0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800EBEF4  80 9F 28 58 */	lwz r4, 0x2858(r31)
/* 800EBEF8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 800EBEFC  48 18 4D 09 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800EBF00  7C 64 1B 78 */	mr r4, r3
/* 800EBF04  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800EBF08  38 A0 00 02 */	li r5, 2
/* 800EBF0C  38 C0 06 00 */	li r6, 0x600
/* 800EBF10  38 E0 00 40 */	li r7, 0x40
/* 800EBF14  48 18 46 2D */	bl cLib_addCalcAngleS__FPsssss
/* 800EBF18  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EBF1C  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800EBF20:
/* 800EBF20  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800EBF24  2C 00 00 15 */	cmpwi r0, 0x15
/* 800EBF28  40 82 00 14 */	bne lbl_800EBF3C
/* 800EBF2C  7F E3 FB 78 */	mr r3, r31
/* 800EBF30  38 80 00 15 */	li r4, 0x15
/* 800EBF34  4B FC 73 35 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800EBF38  48 00 00 14 */	b lbl_800EBF4C
lbl_800EBF3C:
/* 800EBF3C  2C 00 00 44 */	cmpwi r0, 0x44
/* 800EBF40  40 82 00 0C */	bne lbl_800EBF4C
/* 800EBF44  7F E3 FB 78 */	mr r3, r31
/* 800EBF48  4B FF E9 E5 */	bl setSumouPunchStatus__9daAlink_cFv
lbl_800EBF4C:
/* 800EBF4C  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800EBF50  7F C3 F3 78 */	mr r3, r30
/* 800EBF54  48 07 25 79 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EBF58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EBF5C  41 82 00 6C */	beq lbl_800EBFC8
/* 800EBF60  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EBF64  28 00 00 1E */	cmplwi r0, 0x1e
/* 800EBF68  40 82 00 10 */	bne lbl_800EBF78
/* 800EBF6C  7F E3 FB 78 */	mr r3, r31
/* 800EBF70  48 00 01 89 */	bl procSumouStaggerInit__9daAlink_cFv
/* 800EBF74  48 00 01 4C */	b lbl_800EC0C0
lbl_800EBF78:
/* 800EBF78  28 00 00 12 */	cmplwi r0, 0x12
/* 800EBF7C  41 82 00 34 */	beq lbl_800EBFB0
/* 800EBF80  28 00 00 22 */	cmplwi r0, 0x22
/* 800EBF84  41 82 00 2C */	beq lbl_800EBFB0
/* 800EBF88  28 00 00 13 */	cmplwi r0, 0x13
/* 800EBF8C  41 82 00 24 */	beq lbl_800EBFB0
/* 800EBF90  28 00 00 1A */	cmplwi r0, 0x1a
/* 800EBF94  41 82 00 1C */	beq lbl_800EBFB0
/* 800EBF98  28 00 00 19 */	cmplwi r0, 0x19
/* 800EBF9C  41 82 00 14 */	beq lbl_800EBFB0
/* 800EBFA0  28 00 00 11 */	cmplwi r0, 0x11
/* 800EBFA4  41 82 00 0C */	beq lbl_800EBFB0
/* 800EBFA8  28 00 00 15 */	cmplwi r0, 0x15
/* 800EBFAC  40 82 00 10 */	bne lbl_800EBFBC
lbl_800EBFB0:
/* 800EBFB0  7F E3 FB 78 */	mr r3, r31
/* 800EBFB4  4B FF F2 55 */	bl procSumouSideMoveInit__9daAlink_cFv
/* 800EBFB8  48 00 01 08 */	b lbl_800EC0C0
lbl_800EBFBC:
/* 800EBFBC  7F E3 FB 78 */	mr r3, r31
/* 800EBFC0  4B FF EC 8D */	bl procSumouMoveInit__9daAlink_cFv
/* 800EBFC4  48 00 00 FC */	b lbl_800EC0C0
lbl_800EBFC8:
/* 800EBFC8  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800EBFCC  2C 00 00 00 */	cmpwi r0, 0
/* 800EBFD0  41 82 00 90 */	beq lbl_800EC060
/* 800EBFD4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800EBFD8  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800EBFDC  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 800EBFE0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 800EBFE4  3C 00 43 30 */	lis r0, 0x4330
/* 800EBFE8  90 01 00 08 */	stw r0, 8(r1)
/* 800EBFEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800EBFF0  EC 20 10 28 */	fsubs f1, f0, f2
/* 800EBFF4  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800EBFF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EBFFC  40 81 00 C4 */	ble lbl_800EC0C0
/* 800EC000  7F E3 FB 78 */	mr r3, r31
/* 800EC004  38 80 01 52 */	li r4, 0x152
/* 800EC008  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800EC00C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 800EC010  90 01 00 08 */	stw r0, 8(r1)
/* 800EC014  C8 01 00 08 */	lfd f0, 8(r1)
/* 800EC018  EC 40 10 28 */	fsubs f2, f0, f2
/* 800EC01C  38 A0 FF FF */	li r5, -1
/* 800EC020  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800EC024  4B FC 0F E9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800EC028  38 00 00 0C */	li r0, 0xc
/* 800EC02C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EC030  38 00 00 00 */	li r0, 0
/* 800EC034  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800EC038  7F E3 FB 78 */	mr r3, r31
/* 800EC03C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010049@ha */
/* 800EC040  38 84 00 49 */	addi r4, r4, 0x0049 /* 0x00010049@l */
/* 800EC044  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800EC048  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EC04C  7D 89 03 A6 */	mtctr r12
/* 800EC050  4E 80 04 21 */	bctrl 
/* 800EC054  38 00 01 52 */	li r0, 0x152
/* 800EC058  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800EC05C  48 00 00 64 */	b lbl_800EC0C0
lbl_800EC060:
/* 800EC060  7F C3 F3 78 */	mr r3, r30
/* 800EC064  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 800EC068  48 23 C3 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC06C  2C 03 00 00 */	cmpwi r3, 0
/* 800EC070  41 82 00 20 */	beq lbl_800EC090
/* 800EC074  7F E3 FB 78 */	mr r3, r31
/* 800EC078  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 800EC07C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800EC080  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EC084  7D 89 03 A6 */	mtctr r12
/* 800EC088  4E 80 04 21 */	bctrl 
/* 800EC08C  48 00 00 34 */	b lbl_800EC0C0
lbl_800EC090:
/* 800EC090  7F C3 F3 78 */	mr r3, r30
/* 800EC094  C0 3F 34 80 */	lfs f1, 0x3480(r31)
/* 800EC098  48 23 C3 95 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC09C  2C 03 00 00 */	cmpwi r3, 0
/* 800EC0A0  41 82 00 20 */	beq lbl_800EC0C0
/* 800EC0A4  7F E3 FB 78 */	mr r3, r31
/* 800EC0A8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001004B@ha */
/* 800EC0AC  38 84 00 4B */	addi r4, r4, 0x004B /* 0x0001004B@l */
/* 800EC0B0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800EC0B4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EC0B8  7D 89 03 A6 */	mtctr r12
/* 800EC0BC  4E 80 04 21 */	bctrl 
lbl_800EC0C0:
/* 800EC0C0  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800EC0C4  2C 00 01 42 */	cmpwi r0, 0x142
/* 800EC0C8  41 82 00 0C */	beq lbl_800EC0D4
/* 800EC0CC  2C 00 01 43 */	cmpwi r0, 0x143
/* 800EC0D0  40 82 00 0C */	bne lbl_800EC0DC
lbl_800EC0D4:
/* 800EC0D4  38 00 00 60 */	li r0, 0x60
/* 800EC0D8  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_800EC0DC:
/* 800EC0DC  38 60 00 01 */	li r3, 1
lbl_800EC0E0:
/* 800EC0E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EC0E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EC0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EC0EC  7C 08 03 A6 */	mtlr r0
/* 800EC0F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800EC0F4  4E 80 00 20 */	blr 
