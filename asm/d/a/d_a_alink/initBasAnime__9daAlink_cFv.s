lbl_800BF37C:
/* 800BF37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF380  7C 08 02 A6 */	mflr r0
/* 800BF384  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF388  7C 67 1B 78 */	mr r7, r3
/* 800BF38C  80 A3 2D 7C */	lwz r5, 0x2d7c(r3)
/* 800BF390  28 05 00 00 */	cmplwi r5, 0
/* 800BF394  41 82 01 3C */	beq lbl_800BF4D0
/* 800BF398  88 05 00 04 */	lbz r0, 4(r5)
/* 800BF39C  28 00 00 02 */	cmplwi r0, 2
/* 800BF3A0  40 82 00 98 */	bne lbl_800BF438
/* 800BF3A4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 800BF3A8  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 800BF3AC  EC 41 00 28 */	fsubs f2, f1, f0
/* 800BF3B0  A8 05 00 06 */	lha r0, 6(r5)
/* 800BF3B4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800BF3B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800BF3BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BF3C0  3C 60 43 30 */	lis r3, 0x4330
/* 800BF3C4  90 61 00 08 */	stw r3, 8(r1)
/* 800BF3C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800BF3CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800BF3D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BF3D4  4C 40 13 82 */	cror 2, 0, 2
/* 800BF3D8  40 82 00 24 */	bne lbl_800BF3FC
/* 800BF3DC  A8 05 00 08 */	lha r0, 8(r5)
/* 800BF3E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800BF3E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BF3E8  90 61 00 08 */	stw r3, 8(r1)
/* 800BF3EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800BF3F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800BF3F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 800BF3F8  48 00 00 44 */	b lbl_800BF43C
lbl_800BF3FC:
/* 800BF3FC  A8 05 00 08 */	lha r0, 8(r5)
/* 800BF400  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800BF404  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BF408  90 61 00 08 */	stw r3, 8(r1)
/* 800BF40C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800BF410  EC 00 08 28 */	fsubs f0, f0, f1
/* 800BF414  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800BF418  4C 41 13 82 */	cror 2, 1, 2
/* 800BF41C  40 82 00 20 */	bne lbl_800BF43C
/* 800BF420  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BF424  90 61 00 08 */	stw r3, 8(r1)
/* 800BF428  C8 01 00 08 */	lfd f0, 8(r1)
/* 800BF42C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800BF430  EC 42 00 28 */	fsubs f2, f2, f0
/* 800BF434  48 00 00 08 */	b lbl_800BF43C
lbl_800BF438:
/* 800BF438  C0 42 92 C0 */	lfs f2, lit_6108(r2)
lbl_800BF43C:
/* 800BF43C  80 87 2D 80 */	lwz r4, 0x2d80(r7)
/* 800BF440  28 04 00 00 */	cmplwi r4, 0
/* 800BF444  41 82 00 48 */	beq lbl_800BF48C
/* 800BF448  A8 C5 00 0A */	lha r6, 0xa(r5)
/* 800BF44C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 800BF450  38 67 2C A8 */	addi r3, r7, 0x2ca8
/* 800BF454  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BF458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BF45C  4C 41 13 82 */	cror 2, 1, 2
/* 800BF460  7C 00 00 26 */	mfcr r0
/* 800BF464  54 05 1F FE */	rlwinm r5, r0, 3, 0x1f, 0x1f
/* 800BF468  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800BF46C  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800BF470  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BF474  3C 00 43 30 */	lis r0, 0x4330
/* 800BF478  90 01 00 08 */	stw r0, 8(r1)
/* 800BF47C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800BF480  EC 20 08 28 */	fsubs f1, f0, f1
/* 800BF484  48 20 11 A5 */	bl initAnime__10Z2CreatureFPvbff
/* 800BF488  48 00 00 48 */	b lbl_800BF4D0
lbl_800BF48C:
/* 800BF48C  A8 C5 00 0A */	lha r6, 0xa(r5)
/* 800BF490  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 800BF494  38 67 2C A8 */	addi r3, r7, 0x2ca8
/* 800BF498  80 87 2D 78 */	lwz r4, 0x2d78(r7)
/* 800BF49C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BF4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BF4A4  4C 41 13 82 */	cror 2, 1, 2
/* 800BF4A8  7C 00 00 26 */	mfcr r0
/* 800BF4AC  54 05 1F FE */	rlwinm r5, r0, 3, 0x1f, 0x1f
/* 800BF4B0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800BF4B4  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800BF4B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800BF4BC  3C 00 43 30 */	lis r0, 0x4330
/* 800BF4C0  90 01 00 08 */	stw r0, 8(r1)
/* 800BF4C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 800BF4C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 800BF4CC  48 20 11 5D */	bl initAnime__10Z2CreatureFPvbff
lbl_800BF4D0:
/* 800BF4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF4D4  7C 08 03 A6 */	mtlr r0
/* 800BF4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF4DC  4E 80 00 20 */	blr 
