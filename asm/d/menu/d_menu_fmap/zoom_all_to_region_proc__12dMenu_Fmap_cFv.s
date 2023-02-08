lbl_801C8308:
/* 801C8308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C830C  7C 08 02 A6 */	mflr r0
/* 801C8310  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C8314  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C8318  7C 7F 1B 78 */	mr r31, r3
/* 801C831C  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801C8320  38 03 00 01 */	addi r0, r3, 1
/* 801C8324  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C8328  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C832C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C8330  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C8334  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C8338  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C833C  3C 00 43 30 */	lis r0, 0x4330
/* 801C8340  90 01 00 08 */	stw r0, 8(r1)
/* 801C8344  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C8348  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C834C  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C8350  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C8354  48 00 8D F5 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C8358  88 1F 03 07 */	lbz r0, 0x307(r31)
/* 801C835C  28 00 00 01 */	cmplwi r0, 1
/* 801C8360  40 82 00 28 */	bne lbl_801C8388
/* 801C8364  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8368  38 80 00 01 */	li r4, 1
/* 801C836C  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C8370  48 00 F3 A5 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C8374  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8378  38 80 00 02 */	li r4, 2
/* 801C837C  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C8380  48 00 F3 95 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C8384  48 00 00 14 */	b lbl_801C8398
lbl_801C8388:
/* 801C8388  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C838C  38 80 00 02 */	li r4, 2
/* 801C8390  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C8394  48 00 F3 81 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
lbl_801C8398:
/* 801C8398  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C839C  2C 00 00 0A */	cmpwi r0, 0xa
/* 801C83A0  41 80 00 2C */	blt lbl_801C83CC
/* 801C83A4  88 1F 03 07 */	lbz r0, 0x307(r31)
/* 801C83A8  28 00 00 01 */	cmplwi r0, 1
/* 801C83AC  40 82 00 14 */	bne lbl_801C83C0
/* 801C83B0  7F E3 FB 78 */	mr r3, r31
/* 801C83B4  38 80 00 08 */	li r4, 8
/* 801C83B8  48 00 33 19 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C83BC  48 00 00 10 */	b lbl_801C83CC
lbl_801C83C0:
/* 801C83C0  7F E3 FB 78 */	mr r3, r31
/* 801C83C4  38 80 00 06 */	li r4, 6
/* 801C83C8  48 00 33 09 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C83CC:
/* 801C83CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C83D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C83D4  7C 08 03 A6 */	mtlr r0
/* 801C83D8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C83DC  4E 80 00 20 */	blr 
