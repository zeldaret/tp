lbl_8003E04C:
/* 8003E04C  3C 80 80 45 */	lis r4, __float_max@ha
/* 8003E050  C0 04 0A E8 */	lfs f0, __float_max@l(r4)
/* 8003E054  FC 60 00 90 */	fmr f3, f0
/* 8003E058  FC 80 00 90 */	fmr f4, f0
/* 8003E05C  FC 00 00 50 */	fneg f0, f0
/* 8003E060  FC A0 00 90 */	fmr f5, f0
/* 8003E064  FC C0 00 90 */	fmr f6, f0
/* 8003E068  80 83 00 00 */	lwz r4, 0(r3)
/* 8003E06C  38 A0 00 00 */	li r5, 0
/* 8003E070  48 00 00 64 */	b lbl_8003E0D4
lbl_8003E074:
/* 8003E074  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8003E078  C0 24 00 08 */	lfs f1, 8(r4)
/* 8003E07C  EC E0 08 2A */	fadds f7, f0, f1
/* 8003E080  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8003E084  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8003E088  ED 00 10 2A */	fadds f8, f0, f2
/* 8003E08C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8003E090  EC 20 08 2A */	fadds f1, f0, f1
/* 8003E094  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8003E098  EC 00 10 2A */	fadds f0, f0, f2
/* 8003E09C  FC 07 18 40 */	fcmpo cr0, f7, f3
/* 8003E0A0  40 80 00 08 */	bge lbl_8003E0A8
/* 8003E0A4  FC 60 38 90 */	fmr f3, f7
lbl_8003E0A8:
/* 8003E0A8  FC 08 20 40 */	fcmpo cr0, f8, f4
/* 8003E0AC  40 80 00 08 */	bge lbl_8003E0B4
/* 8003E0B0  FC 80 40 90 */	fmr f4, f8
lbl_8003E0B4:
/* 8003E0B4  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 8003E0B8  40 81 00 08 */	ble lbl_8003E0C0
/* 8003E0BC  FC A0 08 90 */	fmr f5, f1
lbl_8003E0C0:
/* 8003E0C0  FC 00 30 40 */	fcmpo cr0, f0, f6
/* 8003E0C4  40 81 00 08 */	ble lbl_8003E0CC
/* 8003E0C8  FC C0 00 90 */	fmr f6, f0
lbl_8003E0CC:
/* 8003E0CC  80 84 00 04 */	lwz r4, 4(r4)
/* 8003E0D0  38 A5 00 01 */	addi r5, r5, 1
lbl_8003E0D4:
/* 8003E0D4  28 04 00 00 */	cmplwi r4, 0
/* 8003E0D8  40 82 FF 9C */	bne lbl_8003E074
/* 8003E0DC  2C 05 00 00 */	cmpwi r5, 0
/* 8003E0E0  40 81 00 18 */	ble lbl_8003E0F8
/* 8003E0E4  D0 63 00 04 */	stfs f3, 4(r3)
/* 8003E0E8  D0 83 00 08 */	stfs f4, 8(r3)
/* 8003E0EC  D0 A3 00 0C */	stfs f5, 0xc(r3)
/* 8003E0F0  D0 C3 00 10 */	stfs f6, 0x10(r3)
/* 8003E0F4  48 00 00 18 */	b lbl_8003E10C
lbl_8003E0F8:
/* 8003E0F8  C0 02 84 20 */	lfs f0, lit_3894(r2)
/* 8003E0FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8003E100  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8003E104  D0 03 00 08 */	stfs f0, 8(r3)
/* 8003E108  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_8003E10C:
/* 8003E10C  7C A3 2B 78 */	mr r3, r5
/* 8003E110  4E 80 00 20 */	blr 
