lbl_801C8438:
/* 801C8438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C843C  7C 08 02 A6 */	mflr r0
/* 801C8440  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C8444  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C8448  7C 7F 1B 78 */	mr r31, r3
/* 801C844C  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801C8450  38 03 FF FF */	addi r0, r3, -1
/* 801C8454  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C8458  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C845C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C8460  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C8464  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C8468  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C846C  3C 00 43 30 */	lis r0, 0x4330
/* 801C8470  90 01 00 08 */	stw r0, 8(r1)
/* 801C8474  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C8478  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C847C  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C8480  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C8484  48 00 8C C5 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C8488  88 1F 03 07 */	lbz r0, 0x307(r31)
/* 801C848C  28 00 00 01 */	cmplwi r0, 1
/* 801C8490  40 82 00 28 */	bne lbl_801C84B8
/* 801C8494  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C8498  38 80 00 01 */	li r4, 1
/* 801C849C  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C84A0  48 00 F2 75 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C84A4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C84A8  38 80 00 02 */	li r4, 2
/* 801C84AC  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C84B0  48 00 F2 65 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C84B4  48 00 00 14 */	b lbl_801C84C8
lbl_801C84B8:
/* 801C84B8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C84BC  38 80 00 02 */	li r4, 2
/* 801C84C0  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C84C4  48 00 F2 51 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
lbl_801C84C8:
/* 801C84C8  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C84CC  2C 00 00 00 */	cmpwi r0, 0
/* 801C84D0  41 81 00 34 */	bgt lbl_801C8504
/* 801C84D4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C84D8  88 03 12 2F */	lbz r0, 0x122f(r3)
/* 801C84DC  28 00 00 00 */	cmplwi r0, 0
/* 801C84E0  41 82 00 18 */	beq lbl_801C84F8
/* 801C84E4  7F E3 FB 78 */	mr r3, r31
/* 801C84E8  48 00 41 35 */	bl removeAreaData__12dMenu_Fmap_cFv
/* 801C84EC  7F E3 FB 78 */	mr r3, r31
/* 801C84F0  38 80 00 FF */	li r4, 0xff
/* 801C84F4  48 00 32 7D */	bl readWorldData__12dMenu_Fmap_cFUc
lbl_801C84F8:
/* 801C84F8  7F E3 FB 78 */	mr r3, r31
/* 801C84FC  38 80 00 00 */	li r4, 0
/* 801C8500  48 00 31 D1 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C8504:
/* 801C8504  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C8508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C850C  7C 08 03 A6 */	mtlr r0
/* 801C8510  38 21 00 20 */	addi r1, r1, 0x20
/* 801C8514  4E 80 00 20 */	blr 
