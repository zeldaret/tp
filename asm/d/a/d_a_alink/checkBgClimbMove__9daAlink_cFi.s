lbl_800FEEC0:
/* 800FEEC0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800FEEC4  7C 08 02 A6 */	mflr r0
/* 800FEEC8  90 01 00 84 */	stw r0, 0x84(r1)
/* 800FEECC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800FEED0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800FEED4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 800FEED8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 800FEEDC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 800FEEE0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 800FEEE4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 800FEEE8  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 800FEEEC  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 800FEEF0  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 800FEEF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800FEEF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800FEEFC  7C 7E 1B 78 */	mr r30, r3
/* 800FEF00  7C 9F 23 78 */	mr r31, r4
/* 800FEF04  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FEF08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FEF0C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 800FEF10  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 800FEF14  7F E4 04 2E */	lfsx f31, r4, r0
/* 800FEF18  7C 84 02 14 */	add r4, r4, r0
/* 800FEF1C  C3 C4 00 04 */	lfs f30, 4(r4)
/* 800FEF20  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800FEF24  EF 80 07 B2 */	fmuls f28, f0, f30
/* 800FEF28  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800FEF2C  EF A0 07 F2 */	fmuls f29, f0, f31
/* 800FEF30  EF 60 07 B2 */	fmuls f27, f0, f30
/* 800FEF34  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800FEF38  EC 40 E0 28 */	fsubs f2, f0, f28
/* 800FEF3C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 800FEF40  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800FEF44  EC 00 E8 2A */	fadds f0, f0, f29
/* 800FEF48  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FEF4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800FEF50  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800FEF54  2C 1F 00 03 */	cmpwi r31, 3
/* 800FEF58  41 82 00 3C */	beq lbl_800FEF94
/* 800FEF5C  EC 00 E0 2A */	fadds f0, f0, f28
/* 800FEF60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FEF64  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800FEF68  EC 02 E8 2A */	fadds f0, f2, f29
/* 800FEF6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FEF70  38 81 00 08 */	addi r4, r1, 8
/* 800FEF74  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FEF78  4B FF FC 19 */	bl checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz
/* 800FEF7C  2C 03 00 00 */	cmpwi r3, 0
/* 800FEF80  41 82 00 14 */	beq lbl_800FEF94
/* 800FEF84  2C 1F 00 02 */	cmpwi r31, 2
/* 800FEF88  40 82 00 0C */	bne lbl_800FEF94
/* 800FEF8C  38 60 00 01 */	li r3, 1
/* 800FEF90  48 00 02 BC */	b lbl_800FF24C
lbl_800FEF94:
/* 800FEF94  2C 1F 00 02 */	cmpwi r31, 2
/* 800FEF98  41 82 00 4C */	beq lbl_800FEFE4
/* 800FEF9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FEFA0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 800FEFA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FEFA8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FEFAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FEFB0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FEFB4  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800FEFB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FEFBC  7F C3 F3 78 */	mr r3, r30
/* 800FEFC0  38 81 00 08 */	addi r4, r1, 8
/* 800FEFC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FEFC8  4B FF FB C9 */	bl checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz
/* 800FEFCC  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFD0  41 82 00 14 */	beq lbl_800FEFE4
/* 800FEFD4  2C 1F 00 03 */	cmpwi r31, 3
/* 800FEFD8  40 82 00 0C */	bne lbl_800FEFE4
/* 800FEFDC  38 60 00 01 */	li r3, 1
/* 800FEFE0  48 00 02 6C */	b lbl_800FF24C
lbl_800FEFE4:
/* 800FEFE4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800FEFE8  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 800FEFEC  EC 21 00 2A */	fadds f1, f1, f0
/* 800FEFF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800FEFF4  2C 1F 00 03 */	cmpwi r31, 3
/* 800FEFF8  41 82 00 48 */	beq lbl_800FF040
/* 800FEFFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FF000  EC 00 E0 2A */	fadds f0, f0, f28
/* 800FF004  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FF008  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800FF00C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FF010  EC 00 E8 2A */	fadds f0, f0, f29
/* 800FF014  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FF018  7F C3 F3 78 */	mr r3, r30
/* 800FF01C  38 81 00 08 */	addi r4, r1, 8
/* 800FF020  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FF024  4B FF FB 6D */	bl checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz
/* 800FF028  2C 03 00 00 */	cmpwi r3, 0
/* 800FF02C  41 82 00 14 */	beq lbl_800FF040
/* 800FF030  2C 1F 00 02 */	cmpwi r31, 2
/* 800FF034  40 82 00 0C */	bne lbl_800FF040
/* 800FF038  38 60 00 01 */	li r3, 1
/* 800FF03C  48 00 02 10 */	b lbl_800FF24C
lbl_800FF040:
/* 800FF040  2C 1F 00 02 */	cmpwi r31, 2
/* 800FF044  41 82 00 4C */	beq lbl_800FF090
/* 800FF048  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FF04C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 800FF050  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FF054  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FF058  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FF05C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FF060  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800FF064  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FF068  7F C3 F3 78 */	mr r3, r30
/* 800FF06C  38 81 00 08 */	addi r4, r1, 8
/* 800FF070  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FF074  4B FF FB 1D */	bl checkBgCorrectClimbMove__9daAlink_cFP4cXyzP4cXyz
/* 800FF078  2C 03 00 00 */	cmpwi r3, 0
/* 800FF07C  41 82 00 14 */	beq lbl_800FF090
/* 800FF080  2C 1F 00 03 */	cmpwi r31, 3
/* 800FF084  40 82 00 0C */	bne lbl_800FF090
/* 800FF088  38 60 00 01 */	li r3, 1
/* 800FF08C  48 00 01 C0 */	b lbl_800FF24C
lbl_800FF090:
/* 800FF090  2C 1F 00 04 */	cmpwi r31, 4
/* 800FF094  41 82 00 0C */	beq lbl_800FF0A0
/* 800FF098  38 60 00 00 */	li r3, 0
/* 800FF09C  48 00 01 B0 */	b lbl_800FF24C
lbl_800FF0A0:
/* 800FF0A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800FF0A4  EC 00 E8 2A */	fadds f0, f0, f29
/* 800FF0A8  EC 5B 00 2A */	fadds f2, f27, f0
/* 800FF0AC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FF0B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800FF0B4  EC 00 E0 2A */	fadds f0, f0, f28
/* 800FF0B8  EC 1D 00 2A */	fadds f0, f29, f0
/* 800FF0BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FF0C0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800FF0C4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800FF0C8  D0 1E 1D 98 */	stfs f0, 0x1d98(r30)
/* 800FF0CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FF0D0  D0 1E 1D 9C */	stfs f0, 0x1d9c(r30)
/* 800FF0D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800FF0D8  D0 1E 1D A0 */	stfs f0, 0x1da0(r30)
/* 800FF0DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FF0E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FF0E4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800FF0E8  7F E3 FB 78 */	mr r3, r31
/* 800FF0EC  38 9E 1D 5C */	addi r4, r30, 0x1d5c
/* 800FF0F0  4B F7 63 AD */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 800FF0F4  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 800FF0F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800FF0FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FF100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FF104  40 80 00 08 */	bge lbl_800FF10C
/* 800FF108  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
lbl_800FF10C:
/* 800FF10C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800FF110  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800FF114  EC 5B 00 2A */	fadds f2, f27, f0
/* 800FF118  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FF11C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800FF120  EC 00 E0 28 */	fsubs f0, f0, f28
/* 800FF124  EC 1D 00 2A */	fadds f0, f29, f0
/* 800FF128  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FF12C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800FF130  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800FF134  D0 1E 1D 98 */	stfs f0, 0x1d98(r30)
/* 800FF138  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FF13C  D0 1E 1D 9C */	stfs f0, 0x1d9c(r30)
/* 800FF140  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800FF144  D0 1E 1D A0 */	stfs f0, 0x1da0(r30)
/* 800FF148  7F E3 FB 78 */	mr r3, r31
/* 800FF14C  38 9E 1D 5C */	addi r4, r30, 0x1d5c
/* 800FF150  4B F7 63 4D */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 800FF154  C0 1E 05 98 */	lfs f0, 0x598(r30)
/* 800FF158  EC 21 00 28 */	fsubs f1, f1, f0
/* 800FF15C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FF160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FF164  40 80 00 08 */	bge lbl_800FF16C
/* 800FF168  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
lbl_800FF16C:
/* 800FF16C  C0 21 00 08 */	lfs f1, 8(r1)
/* 800FF170  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800FF174  EC 02 07 F2 */	fmuls f0, f2, f31
/* 800FF178  EC 01 00 2A */	fadds f0, f1, f0
/* 800FF17C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FF180  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FF184  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FF188  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800FF18C  EC 02 07 B2 */	fmuls f0, f2, f30
/* 800FF190  EC 01 00 2A */	fadds f0, f1, f0
/* 800FF194  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FF198  7F C3 F3 78 */	mr r3, r30
/* 800FF19C  38 81 00 08 */	addi r4, r1, 8
/* 800FF1A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FF1A4  4B FA 2F F5 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FF1A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FF1AC  40 82 00 9C */	bne lbl_800FF248
/* 800FF1B0  7F C3 F3 78 */	mr r3, r30
/* 800FF1B4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800FF1B8  4B FF FA B9 */	bl checkClimbRoof__9daAlink_cFf
/* 800FF1BC  2C 03 00 00 */	cmpwi r3, 0
/* 800FF1C0  41 82 00 10 */	beq lbl_800FF1D0
/* 800FF1C4  7F C3 F3 78 */	mr r3, r30
/* 800FF1C8  48 00 12 1D */	bl procClimbToRoofInit__9daAlink_cFv
/* 800FF1CC  48 00 00 80 */	b lbl_800FF24C
lbl_800FF1D0:
/* 800FF1D0  7F C3 F3 78 */	mr r3, r30
/* 800FF1D4  38 81 00 14 */	addi r4, r1, 0x14
/* 800FF1D8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800FF1DC  4B FF FB 75 */	bl checkClimbGround__9daAlink_cFP4cXyzf
/* 800FF1E0  2C 03 00 00 */	cmpwi r3, 0
/* 800FF1E4  41 82 00 40 */	beq lbl_800FF224
/* 800FF1E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800FF1EC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800FF1F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FF1F4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800FF1F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800FF1FC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800FF200  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800FF204  64 00 00 04 */	oris r0, r0, 4
/* 800FF208  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800FF20C  7F C3 F3 78 */	mr r3, r30
/* 800FF210  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FF214  38 84 E1 64 */	addi r4, r4, m__23daAlinkHIO_wallCatch_c0@l
/* 800FF218  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800FF21C  4B FF C9 AD */	bl procHangClimbInit__9daAlink_cFf
/* 800FF220  48 00 00 2C */	b lbl_800FF24C
lbl_800FF224:
/* 800FF224  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FF228  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800FF22C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FF230  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800FF234  7F C3 F3 78 */	mr r3, r30
/* 800FF238  38 80 00 01 */	li r4, 1
/* 800FF23C  38 A0 00 01 */	li r5, 1
/* 800FF240  48 00 0E B9 */	bl procClimbWaitInit__9daAlink_cFii
/* 800FF244  48 00 00 08 */	b lbl_800FF24C
lbl_800FF248:
/* 800FF248  38 60 00 00 */	li r3, 0
lbl_800FF24C:
/* 800FF24C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800FF250  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800FF254  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 800FF258  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 800FF25C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 800FF260  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 800FF264  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 800FF268  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 800FF26C  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 800FF270  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 800FF274  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800FF278  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800FF27C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800FF280  7C 08 03 A6 */	mtlr r0
/* 800FF284  38 21 00 80 */	addi r1, r1, 0x80
/* 800FF288  4E 80 00 20 */	blr 
