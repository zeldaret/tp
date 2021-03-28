lbl_801CA4C0:
/* 801CA4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CA4C4  7C 08 02 A6 */	mflr r0
/* 801CA4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CA4CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801CA4D0  7C 7F 1B 78 */	mr r31, r3
/* 801CA4D4  A8 63 02 14 */	lha r3, 0x214(r3)
/* 801CA4D8  38 03 00 01 */	addi r0, r3, 1
/* 801CA4DC  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801CA4E0  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CA4E4  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801CA4E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CA4EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CA4F0  3C 00 43 30 */	lis r0, 0x4330
/* 801CA4F4  90 01 00 08 */	stw r0, 8(r1)
/* 801CA4F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801CA4FC  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CA500  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801CA504  EC 01 00 24 */	fdivs f0, f1, f0
/* 801CA508  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 801CA50C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CA510  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801CA514  48 00 6F 65 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
/* 801CA518  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801CA51C  2C 00 00 0A */	cmpwi r0, 0xa
/* 801CA520  41 80 00 10 */	blt lbl_801CA530
/* 801CA524  7F E3 FB 78 */	mr r3, r31
/* 801CA528  38 80 00 16 */	li r4, 0x16
/* 801CA52C  48 00 11 A5 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CA530:
/* 801CA530  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801CA534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CA538  7C 08 03 A6 */	mtlr r0
/* 801CA53C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CA540  4E 80 00 20 */	blr 
