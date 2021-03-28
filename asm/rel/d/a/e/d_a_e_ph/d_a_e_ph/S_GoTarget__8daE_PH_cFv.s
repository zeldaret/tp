lbl_8073EE68:
/* 8073EE68  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8073EE6C  7C 08 02 A6 */	mflr r0
/* 8073EE70  90 01 00 74 */	stw r0, 0x74(r1)
/* 8073EE74  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8073EE78  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8073EE7C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8073EE80  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8073EE84  7C 7E 1B 78 */	mr r30, r3
/* 8073EE88  3C 60 80 74 */	lis r3, lit_3767@ha
/* 8073EE8C  3B E3 1B F4 */	addi r31, r3, lit_3767@l
/* 8073EE90  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073EE94  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073EE98  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073EE9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8073EEA0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8073EEA4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8073EEA8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8073EEAC  C0 5E 07 F8 */	lfs f2, 0x7f8(r30)
/* 8073EEB0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8073EEB4  41 82 00 1C */	beq lbl_8073EED0
/* 8073EEB8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8073EEBC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8073EEC0  EC 00 10 2A */	fadds f0, f0, f2
/* 8073EEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073EEC8  40 80 00 08 */	bge lbl_8073EED0
/* 8073EECC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_8073EED0:
/* 8073EED0  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073EED4  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073EED8  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073EEDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8073EEE0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8073EEE4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8073EEE8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8073EEEC  C0 3E 06 38 */	lfs f1, 0x638(r30)
/* 8073EEF0  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 8073EEF4  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8073EEF8  4B B3 0B 44 */	b cLib_addCalc2__FPffff
/* 8073EEFC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8073EF00  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8073EF04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073EF08  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073EF0C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8073EF10  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8073EF14  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8073EF18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073EF1C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8073EF20  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8073EF24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8073EF28  38 61 00 10 */	addi r3, r1, 0x10
/* 8073EF2C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8073EF30  4B C0 84 6C */	b PSVECSquareDistance
/* 8073EF34  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073EF38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073EF3C  40 81 00 58 */	ble lbl_8073EF94
/* 8073EF40  FC 00 08 34 */	frsqrte f0, f1
/* 8073EF44  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073EF48  FC 44 00 32 */	fmul f2, f4, f0
/* 8073EF4C  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073EF50  FC 00 00 32 */	fmul f0, f0, f0
/* 8073EF54  FC 01 00 32 */	fmul f0, f1, f0
/* 8073EF58  FC 03 00 28 */	fsub f0, f3, f0
/* 8073EF5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8073EF60  FC 44 00 32 */	fmul f2, f4, f0
/* 8073EF64  FC 00 00 32 */	fmul f0, f0, f0
/* 8073EF68  FC 01 00 32 */	fmul f0, f1, f0
/* 8073EF6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8073EF70  FC 02 00 32 */	fmul f0, f2, f0
/* 8073EF74  FC 44 00 32 */	fmul f2, f4, f0
/* 8073EF78  FC 00 00 32 */	fmul f0, f0, f0
/* 8073EF7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073EF80  FC 03 00 28 */	fsub f0, f3, f0
/* 8073EF84  FC 02 00 32 */	fmul f0, f2, f0
/* 8073EF88  FC 21 00 32 */	fmul f1, f1, f0
/* 8073EF8C  FC 20 08 18 */	frsp f1, f1
/* 8073EF90  48 00 00 88 */	b lbl_8073F018
lbl_8073EF94:
/* 8073EF94  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073EF98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073EF9C  40 80 00 10 */	bge lbl_8073EFAC
/* 8073EFA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073EFA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8073EFA8  48 00 00 70 */	b lbl_8073F018
lbl_8073EFAC:
/* 8073EFAC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073EFB0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8073EFB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073EFB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073EFBC  7C 03 00 00 */	cmpw r3, r0
/* 8073EFC0  41 82 00 14 */	beq lbl_8073EFD4
/* 8073EFC4  40 80 00 40 */	bge lbl_8073F004
/* 8073EFC8  2C 03 00 00 */	cmpwi r3, 0
/* 8073EFCC  41 82 00 20 */	beq lbl_8073EFEC
/* 8073EFD0  48 00 00 34 */	b lbl_8073F004
lbl_8073EFD4:
/* 8073EFD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073EFD8  41 82 00 0C */	beq lbl_8073EFE4
/* 8073EFDC  38 00 00 01 */	li r0, 1
/* 8073EFE0  48 00 00 28 */	b lbl_8073F008
lbl_8073EFE4:
/* 8073EFE4  38 00 00 02 */	li r0, 2
/* 8073EFE8  48 00 00 20 */	b lbl_8073F008
lbl_8073EFEC:
/* 8073EFEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073EFF0  41 82 00 0C */	beq lbl_8073EFFC
/* 8073EFF4  38 00 00 05 */	li r0, 5
/* 8073EFF8  48 00 00 10 */	b lbl_8073F008
lbl_8073EFFC:
/* 8073EFFC  38 00 00 03 */	li r0, 3
/* 8073F000  48 00 00 08 */	b lbl_8073F008
lbl_8073F004:
/* 8073F004  38 00 00 04 */	li r0, 4
lbl_8073F008:
/* 8073F008  2C 00 00 01 */	cmpwi r0, 1
/* 8073F00C  40 82 00 0C */	bne lbl_8073F018
/* 8073F010  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073F014  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8073F018:
/* 8073F018  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8073F01C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8073F020  FC 00 00 1E */	fctiwz f0, f0
/* 8073F024  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8073F028  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073F02C  2C 00 00 00 */	cmpwi r0, 0
/* 8073F030  40 82 00 08 */	bne lbl_8073F038
/* 8073F034  38 00 00 01 */	li r0, 1
lbl_8073F038:
/* 8073F038  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8073F03C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073F040  EC 41 00 28 */	fsubs f2, f1, f0
/* 8073F044  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8073F048  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073F04C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8073F050  3C 00 43 30 */	lis r0, 0x4330
/* 8073F054  90 01 00 48 */	stw r0, 0x48(r1)
/* 8073F058  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8073F05C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073F060  EC 02 00 24 */	fdivs f0, f2, f0
/* 8073F064  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 8073F068  C0 3E 06 54 */	lfs f1, 0x654(r30)
/* 8073F06C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8073F070  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073F074  40 82 01 48 */	bne lbl_8073F1BC
/* 8073F078  C0 3E 06 5C */	lfs f1, 0x65c(r30)
/* 8073F07C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8073F080  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8073F084  40 82 01 38 */	bne lbl_8073F1BC
/* 8073F088  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8073F08C  38 81 00 28 */	addi r4, r1, 0x28
/* 8073F090  4B C0 83 0C */	b PSVECSquareDistance
/* 8073F094  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F09C  40 81 00 58 */	ble lbl_8073F0F4
/* 8073F0A0  FC 00 08 34 */	frsqrte f0, f1
/* 8073F0A4  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073F0A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F0AC  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073F0B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F0B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F0B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F0BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F0C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F0C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F0C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F0CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F0D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F0D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F0DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F0E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F0E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F0E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8073F0EC  FC 20 08 18 */	frsp f1, f1
/* 8073F0F0  48 00 00 88 */	b lbl_8073F178
lbl_8073F0F4:
/* 8073F0F4  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073F0F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F0FC  40 80 00 10 */	bge lbl_8073F10C
/* 8073F100  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073F104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8073F108  48 00 00 70 */	b lbl_8073F178
lbl_8073F10C:
/* 8073F10C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073F110  80 81 00 08 */	lwz r4, 8(r1)
/* 8073F114  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073F118  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073F11C  7C 03 00 00 */	cmpw r3, r0
/* 8073F120  41 82 00 14 */	beq lbl_8073F134
/* 8073F124  40 80 00 40 */	bge lbl_8073F164
/* 8073F128  2C 03 00 00 */	cmpwi r3, 0
/* 8073F12C  41 82 00 20 */	beq lbl_8073F14C
/* 8073F130  48 00 00 34 */	b lbl_8073F164
lbl_8073F134:
/* 8073F134  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F138  41 82 00 0C */	beq lbl_8073F144
/* 8073F13C  38 00 00 01 */	li r0, 1
/* 8073F140  48 00 00 28 */	b lbl_8073F168
lbl_8073F144:
/* 8073F144  38 00 00 02 */	li r0, 2
/* 8073F148  48 00 00 20 */	b lbl_8073F168
lbl_8073F14C:
/* 8073F14C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F150  41 82 00 0C */	beq lbl_8073F15C
/* 8073F154  38 00 00 05 */	li r0, 5
/* 8073F158  48 00 00 10 */	b lbl_8073F168
lbl_8073F15C:
/* 8073F15C  38 00 00 03 */	li r0, 3
/* 8073F160  48 00 00 08 */	b lbl_8073F168
lbl_8073F164:
/* 8073F164  38 00 00 04 */	li r0, 4
lbl_8073F168:
/* 8073F168  2C 00 00 01 */	cmpwi r0, 1
/* 8073F16C  40 82 00 0C */	bne lbl_8073F178
/* 8073F170  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8073F174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8073F178:
/* 8073F178  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8073F17C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8073F180  FC 00 00 1E */	fctiwz f0, f0
/* 8073F184  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8073F188  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8073F18C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8073F190  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073F194  EC 41 00 28 */	fsubs f2, f1, f0
/* 8073F198  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8073F19C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073F1A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073F1A4  3C 00 43 30 */	lis r0, 0x4330
/* 8073F1A8  90 01 00 40 */	stw r0, 0x40(r1)
/* 8073F1AC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8073F1B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073F1B4  EC 02 00 24 */	fdivs f0, f2, f0
/* 8073F1B8  D0 1E 06 34 */	stfs f0, 0x634(r30)
lbl_8073F1BC:
/* 8073F1BC  C3 FE 04 D4 */	lfs f31, 0x4d4(r30)
/* 8073F1C0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8073F1C4  38 81 00 28 */	addi r4, r1, 0x28
/* 8073F1C8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8073F1CC  4B B3 15 E0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 8073F1D0  D3 FE 04 D4 */	stfs f31, 0x4d4(r30)
/* 8073F1D4  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8073F1D8  C0 3E 06 34 */	lfs f1, 0x634(r30)
/* 8073F1DC  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8073F1E0  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 8073F1E4  4B B3 08 58 */	b cLib_addCalc2__FPffff
/* 8073F1E8  38 7E 06 12 */	addi r3, r30, 0x612
/* 8073F1EC  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 8073F1F0  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8073F1F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073F1F8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8073F1FC  3C 00 43 30 */	lis r0, 0x4330
/* 8073F200  90 01 00 48 */	stw r0, 0x48(r1)
/* 8073F204  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8073F208  EC 20 08 28 */	fsubs f1, f0, f1
/* 8073F20C  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 8073F210  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073F214  FC 00 00 1E */	fctiwz f0, f0
/* 8073F218  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8073F21C  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8073F220  38 A0 00 10 */	li r5, 0x10
/* 8073F224  4B B3 19 6C */	b cLib_chaseAngleS__FPsss
/* 8073F228  7F C3 F3 78 */	mr r3, r30
/* 8073F22C  4B FF FB 75 */	bl S_SetPlaySpeed__8daE_PH_cFv
/* 8073F230  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8073F234  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8073F238  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8073F23C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8073F240  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8073F244  7C 08 03 A6 */	mtlr r0
/* 8073F248  38 21 00 70 */	addi r1, r1, 0x70
/* 8073F24C  4E 80 00 20 */	blr 
