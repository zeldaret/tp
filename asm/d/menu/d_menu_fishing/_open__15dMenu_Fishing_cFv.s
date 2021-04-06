lbl_801C52E4:
/* 801C52E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C52E8  7C 08 02 A6 */	mflr r0
/* 801C52EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C52F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801C52F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801C52F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C52FC  7C 7F 1B 78 */	mr r31, r3
/* 801C5300  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801C5304  28 00 00 00 */	cmplwi r0, 0
/* 801C5308  40 82 00 1C */	bne lbl_801C5324
/* 801C530C  3C 60 80 39 */	lis r3, d_menu_d_menu_fishing__stringBase0@ha /* 0x80396068@ha */
/* 801C5310  38 63 60 68 */	addi r3, r3, d_menu_d_menu_fishing__stringBase0@l /* 0x80396068@l */
/* 801C5314  38 80 00 00 */	li r4, 0
/* 801C5318  38 A0 00 00 */	li r5, 0
/* 801C531C  4B E5 0A F9 */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801C5320  90 7F 00 14 */	stw r3, 0x14(r31)
lbl_801C5324:
/* 801C5324  80 7F 00 08 */	lwz r3, 8(r31)
/* 801C5328  28 03 00 00 */	cmplwi r3, 0
/* 801C532C  40 82 00 60 */	bne lbl_801C538C
/* 801C5330  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801C5334  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801C5338  2C 00 00 00 */	cmpwi r0, 0
/* 801C533C  41 82 00 48 */	beq lbl_801C5384
/* 801C5340  28 03 00 00 */	cmplwi r3, 0
/* 801C5344  40 82 00 48 */	bne lbl_801C538C
/* 801C5348  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801C534C  90 1F 00 08 */	stw r0, 8(r31)
/* 801C5350  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C5354  28 03 00 00 */	cmplwi r3, 0
/* 801C5358  41 82 00 18 */	beq lbl_801C5370
/* 801C535C  38 80 00 01 */	li r4, 1
/* 801C5360  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801C5364  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C5368  7D 89 03 A6 */	mtctr r12
/* 801C536C  4E 80 04 21 */	bctrl 
lbl_801C5370:
/* 801C5370  38 00 00 00 */	li r0, 0
/* 801C5374  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801C5378  7F E3 FB 78 */	mr r3, r31
/* 801C537C  4B FF FC D1 */	bl _create__15dMenu_Fishing_cFv
/* 801C5380  48 00 00 0C */	b lbl_801C538C
lbl_801C5384:
/* 801C5384  38 60 00 00 */	li r3, 0
/* 801C5388  48 00 00 CC */	b lbl_801C5454
lbl_801C538C:
/* 801C538C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801C5390  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801C5394  A8 83 09 A4 */	lha r4, 0x9a4(r3)
/* 801C5398  A8 63 09 A6 */	lha r3, 0x9a6(r3)
/* 801C539C  B0 9F 01 F8 */	sth r4, 0x1f8(r31)
/* 801C53A0  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 801C53A4  7C 00 20 00 */	cmpw r0, r4
/* 801C53A8  41 80 00 48 */	blt lbl_801C53F0
/* 801C53AC  B0 7F 01 F8 */	sth r3, 0x1f8(r31)
/* 801C53B0  38 00 00 02 */	li r0, 2
/* 801C53B4  98 1F 01 FA */	stb r0, 0x1fa(r31)
/* 801C53B8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C53BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801C53C0  C0 02 A7 14 */	lfs f0, lit_4010(r2)
/* 801C53C4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C53C8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C53CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C53D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C53D4  7D 89 03 A6 */	mtctr r12
/* 801C53D8  4E 80 04 21 */	bctrl 
/* 801C53DC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C53E0  C0 22 A7 14 */	lfs f1, lit_4010(r2)
/* 801C53E4  48 09 03 ED */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801C53E8  38 60 00 01 */	li r3, 1
/* 801C53EC  48 00 00 68 */	b lbl_801C5454
lbl_801C53F0:
/* 801C53F0  C8 42 A7 18 */	lfd f2, lit_4012(r2)
/* 801C53F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C53F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C53FC  3C 60 43 30 */	lis r3, 0x4330
/* 801C5400  90 61 00 08 */	stw r3, 8(r1)
/* 801C5404  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C5408  EC 20 10 28 */	fsubs f1, f0, f2
/* 801C540C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801C5410  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5414  90 61 00 10 */	stw r3, 0x10(r1)
/* 801C5418  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C541C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C5420  EF E1 00 24 */	fdivs f31, f1, f0
/* 801C5424  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C5428  80 63 00 04 */	lwz r3, 4(r3)
/* 801C542C  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801C5430  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801C5434  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5438  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C543C  7D 89 03 A6 */	mtctr r12
/* 801C5440  4E 80 04 21 */	bctrl 
/* 801C5444  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 801C5448  FC 20 F8 90 */	fmr f1, f31
/* 801C544C  48 09 03 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801C5450  38 60 00 00 */	li r3, 0
lbl_801C5454:
/* 801C5454  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801C5458  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801C545C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C5460  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C5464  7C 08 03 A6 */	mtlr r0
/* 801C5468  38 21 00 30 */	addi r1, r1, 0x30
/* 801C546C  4E 80 00 20 */	blr 
