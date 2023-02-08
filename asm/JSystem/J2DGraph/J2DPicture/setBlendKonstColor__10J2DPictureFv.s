lbl_802FEAC4:
/* 802FEAC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FEAC8  38 E0 00 00 */	li r7, 0
/* 802FEACC  39 00 00 01 */	li r8, 1
/* 802FEAD0  88 C3 01 08 */	lbz r6, 0x108(r3)
/* 802FEAD4  C0 62 C8 6C */	lfs f3, lit_2017(r2)
/* 802FEAD8  48 00 00 84 */	b lbl_802FEB5C
lbl_802FEADC:
/* 802FEADC  C0 82 C8 6C */	lfs f4, lit_2017(r2)
/* 802FEAE0  39 20 00 00 */	li r9, 0
/* 802FEAE4  55 05 06 3E */	clrlwi r5, r8, 0x18
/* 802FEAE8  48 00 00 18 */	b lbl_802FEB00
lbl_802FEAEC:
/* 802FEAEC  55 24 15 BA */	rlwinm r4, r9, 2, 0x16, 0x1d
/* 802FEAF0  38 04 01 1C */	addi r0, r4, 0x11c
/* 802FEAF4  7C 03 04 2E */	lfsx f0, r3, r0
/* 802FEAF8  EC 84 00 2A */	fadds f4, f4, f0
/* 802FEAFC  39 29 00 01 */	addi r9, r9, 1
lbl_802FEB00:
/* 802FEB00  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802FEB04  7C 00 28 40 */	cmplw r0, r5
/* 802FEB08  41 80 FF E4 */	blt lbl_802FEAEC
/* 802FEB0C  55 04 15 BA */	rlwinm r4, r8, 2, 0x16, 0x1d
/* 802FEB10  38 04 01 1C */	addi r0, r4, 0x11c
/* 802FEB14  7C 03 04 2E */	lfsx f0, r3, r0
/* 802FEB18  EC 04 00 2A */	fadds f0, f4, f0
/* 802FEB1C  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 802FEB20  41 82 00 38 */	beq lbl_802FEB58
/* 802FEB24  C0 42 C8 78 */	lfs f2, lit_2758(r2)
/* 802FEB28  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FEB2C  EC 04 00 24 */	fdivs f0, f4, f0
/* 802FEB30  EC 01 00 28 */	fsubs f0, f1, f0
/* 802FEB34  EC 02 00 32 */	fmuls f0, f2, f0
/* 802FEB38  FC 00 00 1E */	fctiwz f0, f0
/* 802FEB3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802FEB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FEB44  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802FEB48  38 05 FF FF */	addi r0, r5, -1
/* 802FEB4C  54 00 18 38 */	slwi r0, r0, 3
/* 802FEB50  7C 80 00 30 */	slw r0, r4, r0
/* 802FEB54  7C E7 03 78 */	or r7, r7, r0
lbl_802FEB58:
/* 802FEB58  39 08 00 01 */	addi r8, r8, 1
lbl_802FEB5C:
/* 802FEB5C  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 802FEB60  7C 00 30 40 */	cmplw r0, r6
/* 802FEB64  41 80 FF 78 */	blt lbl_802FEADC
/* 802FEB68  90 E1 00 08 */	stw r7, 8(r1)
/* 802FEB6C  88 01 00 08 */	lbz r0, 8(r1)
/* 802FEB70  98 03 01 48 */	stb r0, 0x148(r3)
/* 802FEB74  88 01 00 09 */	lbz r0, 9(r1)
/* 802FEB78  98 03 01 49 */	stb r0, 0x149(r3)
/* 802FEB7C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802FEB80  98 03 01 4A */	stb r0, 0x14a(r3)
/* 802FEB84  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802FEB88  98 03 01 4B */	stb r0, 0x14b(r3)
/* 802FEB8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FEB90  4E 80 00 20 */	blr 
