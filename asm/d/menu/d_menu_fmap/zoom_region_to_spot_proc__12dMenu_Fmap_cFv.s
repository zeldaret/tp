lbl_801C9304:
/* 801C9304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C9308  7C 08 02 A6 */	mflr r0
/* 801C930C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C9310  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9314  7C 7F 1B 78 */	mr r31, r3
/* 801C9318  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801C931C  38 03 00 01 */	addi r0, r3, 1
/* 801C9320  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C9324  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9328  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C932C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C9330  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C9334  3C 00 43 30 */	lis r0, 0x4330
/* 801C9338  90 01 00 08 */	stw r0, 8(r1)
/* 801C933C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C9340  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C9344  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C9348  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C934C  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 801C9350  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9354  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801C9358  48 00 81 21 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801C935C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9360  38 80 00 01 */	li r4, 1
/* 801C9364  C0 22 A7 28 */	lfs f1, lit_4158(r2)
/* 801C9368  48 00 E3 AD */	bl setArrowAlphaRatio__17dMenu_Fmap2DTop_cFUcf
/* 801C936C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9370  2C 00 00 0A */	cmpwi r0, 0xa
/* 801C9374  41 80 00 10 */	blt lbl_801C9384
/* 801C9378  7F E3 FB 78 */	mr r3, r31
/* 801C937C  38 80 00 0D */	li r4, 0xd
/* 801C9380  48 00 23 51 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C9384:
/* 801C9384  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 801C9388  2C 00 00 00 */	cmpwi r0, 0
/* 801C938C  41 80 00 18 */	blt lbl_801C93A4
/* 801C9390  7F E3 FB 78 */	mr r3, r31
/* 801C9394  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C9398  38 A0 00 01 */	li r5, 1
/* 801C939C  48 00 23 45 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C93A0  48 00 00 18 */	b lbl_801C93B8
lbl_801C93A4:
/* 801C93A4  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C93A8  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801C93AC  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801C93B0  38 00 00 00 */	li r0, 0
/* 801C93B4  98 03 00 D8 */	stb r0, 0xd8(r3)
lbl_801C93B8:
/* 801C93B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C93BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C93C0  7C 08 03 A6 */	mtlr r0
/* 801C93C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801C93C8  4E 80 00 20 */	blr 
