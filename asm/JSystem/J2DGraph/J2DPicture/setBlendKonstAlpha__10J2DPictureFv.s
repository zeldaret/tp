lbl_802FEB94:
/* 802FEB94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FEB98  38 E0 00 00 */	li r7, 0
/* 802FEB9C  39 00 00 01 */	li r8, 1
/* 802FEBA0  88 C3 01 08 */	lbz r6, 0x108(r3)
/* 802FEBA4  C0 62 C8 6C */	lfs f3, lit_2017(r2)
/* 802FEBA8  48 00 00 84 */	b lbl_802FEC2C
lbl_802FEBAC:
/* 802FEBAC  C0 82 C8 6C */	lfs f4, lit_2017(r2)
/* 802FEBB0  39 20 00 00 */	li r9, 0
/* 802FEBB4  55 05 06 3E */	clrlwi r5, r8, 0x18
/* 802FEBB8  48 00 00 18 */	b lbl_802FEBD0
lbl_802FEBBC:
/* 802FEBBC  55 24 15 BA */	rlwinm r4, r9, 2, 0x16, 0x1d
/* 802FEBC0  38 04 01 24 */	addi r0, r4, 0x124
/* 802FEBC4  7C 03 04 2E */	lfsx f0, r3, r0
/* 802FEBC8  EC 84 00 2A */	fadds f4, f4, f0
/* 802FEBCC  39 29 00 01 */	addi r9, r9, 1
lbl_802FEBD0:
/* 802FEBD0  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802FEBD4  7C 00 28 40 */	cmplw r0, r5
/* 802FEBD8  41 80 FF E4 */	blt lbl_802FEBBC
/* 802FEBDC  55 04 15 BA */	rlwinm r4, r8, 2, 0x16, 0x1d
/* 802FEBE0  38 04 01 24 */	addi r0, r4, 0x124
/* 802FEBE4  7C 03 04 2E */	lfsx f0, r3, r0
/* 802FEBE8  EC 04 00 2A */	fadds f0, f4, f0
/* 802FEBEC  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 802FEBF0  41 82 00 38 */	beq lbl_802FEC28
/* 802FEBF4  C0 42 C8 78 */	lfs f2, lit_2758(r2)
/* 802FEBF8  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FEBFC  EC 04 00 24 */	fdivs f0, f4, f0
/* 802FEC00  EC 01 00 28 */	fsubs f0, f1, f0
/* 802FEC04  EC 02 00 32 */	fmuls f0, f2, f0
/* 802FEC08  FC 00 00 1E */	fctiwz f0, f0
/* 802FEC0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802FEC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FEC14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802FEC18  38 05 FF FF */	addi r0, r5, -1
/* 802FEC1C  54 00 18 38 */	slwi r0, r0, 3
/* 802FEC20  7C 80 00 30 */	slw r0, r4, r0
/* 802FEC24  7C E7 03 78 */	or r7, r7, r0
lbl_802FEC28:
/* 802FEC28  39 08 00 01 */	addi r8, r8, 1
lbl_802FEC2C:
/* 802FEC2C  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 802FEC30  7C 00 30 40 */	cmplw r0, r6
/* 802FEC34  41 80 FF 78 */	blt lbl_802FEBAC
/* 802FEC38  90 E1 00 08 */	stw r7, 8(r1)
/* 802FEC3C  88 01 00 08 */	lbz r0, 8(r1)
/* 802FEC40  98 03 01 4C */	stb r0, 0x14c(r3)
/* 802FEC44  88 01 00 09 */	lbz r0, 9(r1)
/* 802FEC48  98 03 01 4D */	stb r0, 0x14d(r3)
/* 802FEC4C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802FEC50  98 03 01 4E */	stb r0, 0x14e(r3)
/* 802FEC54  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802FEC58  98 03 01 4F */	stb r0, 0x14f(r3)
/* 802FEC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FEC60  4E 80 00 20 */	blr 
