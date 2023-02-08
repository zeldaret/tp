lbl_801C9428:
/* 801C9428  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C942C  7C 08 02 A6 */	mflr r0
/* 801C9430  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C9434  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9438  7C 7F 1B 78 */	mr r31, r3
/* 801C943C  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801C9440  38 03 FF FF */	addi r0, r3, -1
/* 801C9444  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C9448  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C944C  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C9450  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C9454  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C9458  3C 00 43 30 */	lis r0, 0x4330
/* 801C945C  90 01 00 08 */	stw r0, 8(r1)
/* 801C9460  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C9464  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C9468  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C946C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C9470  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 801C9474  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9478  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801C947C  48 00 7F FD */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801C9480  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9484  38 80 00 01 */	li r4, 1
/* 801C9488  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C948C  48 00 E2 89 */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C9490  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9494  2C 00 00 00 */	cmpwi r0, 0
/* 801C9498  41 81 00 2C */	bgt lbl_801C94C4
/* 801C949C  88 1F 03 07 */	lbz r0, 0x307(r31)
/* 801C94A0  28 00 00 01 */	cmplwi r0, 1
/* 801C94A4  40 82 00 14 */	bne lbl_801C94B8
/* 801C94A8  7F E3 FB 78 */	mr r3, r31
/* 801C94AC  38 80 00 08 */	li r4, 8
/* 801C94B0  48 00 22 21 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C94B4  48 00 00 10 */	b lbl_801C94C4
lbl_801C94B8:
/* 801C94B8  7F E3 FB 78 */	mr r3, r31
/* 801C94BC  38 80 00 06 */	li r4, 6
/* 801C94C0  48 00 22 11 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C94C4:
/* 801C94C4  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 801C94C8  2C 00 00 00 */	cmpwi r0, 0
/* 801C94CC  41 80 00 18 */	blt lbl_801C94E4
/* 801C94D0  7F E3 FB 78 */	mr r3, r31
/* 801C94D4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C94D8  38 A0 00 01 */	li r5, 1
/* 801C94DC  48 00 22 05 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C94E0  48 00 00 18 */	b lbl_801C94F8
lbl_801C94E4:
/* 801C94E4  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C94E8  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801C94EC  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801C94F0  38 00 00 00 */	li r0, 0
/* 801C94F4  98 03 00 D8 */	stb r0, 0xd8(r3)
lbl_801C94F8:
/* 801C94F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C94FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C9500  7C 08 03 A6 */	mtlr r0
/* 801C9504  38 21 00 20 */	addi r1, r1, 0x20
/* 801C9508  4E 80 00 20 */	blr 
