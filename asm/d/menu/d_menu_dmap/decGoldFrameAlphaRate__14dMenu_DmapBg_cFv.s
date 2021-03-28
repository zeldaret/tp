lbl_801BAA4C:
/* 801BAA4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BAA50  7C 08 02 A6 */	mflr r0
/* 801BAA54  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BAA58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BAA5C  7C 7F 1B 78 */	mr r31, r3
/* 801BAA60  38 80 00 00 */	li r4, 0
/* 801BAA64  4B FF FC 9D */	bl setGoldAnimation__14dMenu_DmapBg_cFb
/* 801BAA68  88 1F 0D D7 */	lbz r0, 0xdd7(r31)
/* 801BAA6C  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801BAA70  38 83 FC 60 */	addi r4, r3, g_fmapHIO@l
/* 801BAA74  A8 64 00 96 */	lha r3, 0x96(r4)
/* 801BAA78  7C 00 18 00 */	cmpw r0, r3
/* 801BAA7C  41 80 00 10 */	blt lbl_801BAA8C
/* 801BAA80  7C 60 0E 70 */	srawi r0, r3, 1
/* 801BAA84  7C 00 01 94 */	addze r0, r0
/* 801BAA88  98 1F 0D D7 */	stb r0, 0xdd7(r31)
lbl_801BAA8C:
/* 801BAA8C  38 00 00 00 */	li r0, 0
/* 801BAA90  98 1F 0D D7 */	stb r0, 0xdd7(r31)
/* 801BAA94  88 7F 0D D7 */	lbz r3, 0xdd7(r31)
/* 801BAA98  28 03 00 00 */	cmplwi r3, 0
/* 801BAA9C  40 82 00 0C */	bne lbl_801BAAA8
/* 801BAAA0  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BAAA4  48 00 00 50 */	b lbl_801BAAF4
lbl_801BAAA8:
/* 801BAAA8  38 03 FF FF */	addi r0, r3, -1
/* 801BAAAC  98 1F 0D D7 */	stb r0, 0xdd7(r31)
/* 801BAAB0  88 1F 0D D7 */	lbz r0, 0xdd7(r31)
/* 801BAAB4  7C 00 01 D6 */	mullw r0, r0, r0
/* 801BAAB8  C8 42 A5 F8 */	lfd f2, lit_4108(r2)
/* 801BAABC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BAAC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BAAC4  3C 60 43 30 */	lis r3, 0x4330
/* 801BAAC8  90 61 00 08 */	stw r3, 8(r1)
/* 801BAACC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801BAAD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BAAD4  A8 04 00 96 */	lha r0, 0x96(r4)
/* 801BAAD8  7C 00 01 D6 */	mullw r0, r0, r0
/* 801BAADC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BAAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BAAE4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801BAAE8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801BAAEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BAAF0  EC 21 00 24 */	fdivs f1, f1, f0
lbl_801BAAF4:
/* 801BAAF4  7F E3 FB 78 */	mr r3, r31
/* 801BAAF8  4B FF FC F9 */	bl setGoldFrameAlphaRate__14dMenu_DmapBg_cFf
/* 801BAAFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BAB00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BAB04  7C 08 03 A6 */	mtlr r0
/* 801BAB08  38 21 00 20 */	addi r1, r1, 0x20
/* 801BAB0C  4E 80 00 20 */	blr 
