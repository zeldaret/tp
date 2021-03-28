lbl_801BA974:
/* 801BA974  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BA978  7C 08 02 A6 */	mflr r0
/* 801BA97C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BA980  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801BA984  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801BA988  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BA98C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801BA990  7C 7E 1B 78 */	mr r30, r3
/* 801BA994  88 A3 0D D7 */	lbz r5, 0xdd7(r3)
/* 801BA998  3C 80 80 43 */	lis r4, g_fmapHIO@ha
/* 801BA99C  3B E4 FC 60 */	addi r31, r4, g_fmapHIO@l
/* 801BA9A0  A8 1F 00 94 */	lha r0, 0x94(r31)
/* 801BA9A4  7C 05 00 00 */	cmpw r5, r0
/* 801BA9A8  41 80 00 14 */	blt lbl_801BA9BC
/* 801BA9AC  C3 E2 A5 EC */	lfs f31, lit_3963(r2)
/* 801BA9B0  38 80 00 01 */	li r4, 1
/* 801BA9B4  4B FF FD 4D */	bl setGoldAnimation__14dMenu_DmapBg_cFb
/* 801BA9B8  48 00 00 68 */	b lbl_801BAA20
lbl_801BA9BC:
/* 801BA9BC  38 05 00 01 */	addi r0, r5, 1
/* 801BA9C0  98 1E 0D D7 */	stb r0, 0xdd7(r30)
/* 801BA9C4  88 9E 0D D7 */	lbz r4, 0xdd7(r30)
/* 801BA9C8  A8 1F 00 94 */	lha r0, 0x94(r31)
/* 801BA9CC  7C 04 00 00 */	cmpw r4, r0
/* 801BA9D0  40 82 00 0C */	bne lbl_801BA9DC
/* 801BA9D4  38 80 00 01 */	li r4, 1
/* 801BA9D8  4B FF FD 29 */	bl setGoldAnimation__14dMenu_DmapBg_cFb
lbl_801BA9DC:
/* 801BA9DC  88 1E 0D D7 */	lbz r0, 0xdd7(r30)
/* 801BA9E0  7C 00 01 D6 */	mullw r0, r0, r0
/* 801BA9E4  C8 42 A5 F8 */	lfd f2, lit_4108(r2)
/* 801BA9E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BA9EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BA9F0  3C 60 43 30 */	lis r3, 0x4330
/* 801BA9F4  90 61 00 08 */	stw r3, 8(r1)
/* 801BA9F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801BA9FC  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BAA00  A8 1F 00 94 */	lha r0, 0x94(r31)
/* 801BAA04  7C 00 01 D6 */	mullw r0, r0, r0
/* 801BAA08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BAA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BAA10  90 61 00 10 */	stw r3, 0x10(r1)
/* 801BAA14  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801BAA18  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BAA1C  EF E1 00 24 */	fdivs f31, f1, f0
lbl_801BAA20:
/* 801BAA20  7F C3 F3 78 */	mr r3, r30
/* 801BAA24  FC 20 F8 90 */	fmr f1, f31
/* 801BAA28  4B FF FD C9 */	bl setGoldFrameAlphaRate__14dMenu_DmapBg_cFf
/* 801BAA2C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801BAA30  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801BAA34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BAA38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801BAA3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BAA40  7C 08 03 A6 */	mtlr r0
/* 801BAA44  38 21 00 30 */	addi r1, r1, 0x30
/* 801BAA48  4E 80 00 20 */	blr 
