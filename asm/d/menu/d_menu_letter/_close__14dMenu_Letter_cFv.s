lbl_801DDC98:
/* 801DDC98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DDC9C  7C 08 02 A6 */	mflr r0
/* 801DDCA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DDCA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DDCA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801DDCAC  39 61 00 30 */	addi r11, r1, 0x30
/* 801DDCB0  48 18 45 25 */	bl _savegpr_27
/* 801DDCB4  7C 7F 1B 78 */	mr r31, r3
/* 801DDCB8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DDCBC  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DDCC0  A8 9D 07 5C */	lha r4, 0x75c(r29)
/* 801DDCC4  3B C0 00 00 */	li r30, 0
/* 801DDCC8  B3 DF 03 68 */	sth r30, 0x368(r31)
/* 801DDCCC  A8 7F 03 68 */	lha r3, 0x368(r31)
/* 801DDCD0  7C 60 07 35 */	extsh. r0, r3
/* 801DDCD4  41 81 00 7C */	bgt lbl_801DDD50
/* 801DDCD8  B3 DF 03 68 */	sth r30, 0x368(r31)
/* 801DDCDC  9B DF 03 6C */	stb r30, 0x36c(r31)
/* 801DDCE0  3B 80 00 00 */	li r28, 0
/* 801DDCE4  C3 E2 A8 E0 */	lfs f31, lit_3827(r2)
lbl_801DDCE8:
/* 801DDCE8  3B BE 02 B8 */	addi r29, r30, 0x2b8
/* 801DDCEC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801DDCF0  80 63 00 04 */	lwz r3, 4(r3)
/* 801DDCF4  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801DDCF8  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801DDCFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DDD00  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DDD04  7D 89 03 A6 */	mtctr r12
/* 801DDD08  4E 80 04 21 */	bctrl 
/* 801DDD0C  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801DDD10  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DDD14  48 07 7A BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DDD18  3B 9C 00 01 */	addi r28, r28, 1
/* 801DDD1C  2C 1C 00 03 */	cmpwi r28, 3
/* 801DDD20  3B DE 00 04 */	addi r30, r30, 4
/* 801DDD24  41 80 FF C4 */	blt lbl_801DDCE8
/* 801DDD28  7F E3 FB 78 */	mr r3, r31
/* 801DDD2C  48 00 2D F9 */	bl setCursorPos__14dMenu_Letter_cFv
/* 801DDD30  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDD34  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DDD38  4B FB 75 69 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801DDD3C  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDD40  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DDD44  4B FB 74 85 */	bl setScale__16dSelect_cursor_cFf
/* 801DDD48  38 60 00 01 */	li r3, 1
/* 801DDD4C  48 00 00 AC */	b lbl_801DDDF8
lbl_801DDD50:
/* 801DDD50  C8 42 A9 10 */	lfd f2, lit_4171(r2)
/* 801DDD54  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801DDD58  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DDD5C  3C 60 43 30 */	lis r3, 0x4330
/* 801DDD60  90 61 00 08 */	stw r3, 8(r1)
/* 801DDD64  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DDD68  EC 20 10 28 */	fsubs f1, f0, f2
/* 801DDD6C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801DDD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DDD74  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DDD78  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DDD7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DDD80  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DDD84  3B 60 00 00 */	li r27, 0
/* 801DDD88  3B C0 00 00 */	li r30, 0
lbl_801DDD8C:
/* 801DDD8C  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 801DDD90  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DDD94  3B 9E 02 B8 */	addi r28, r30, 0x2b8
/* 801DDD98  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DDD9C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DDDA0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DDDA4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DDDA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DDDAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DDDB0  7D 89 03 A6 */	mtctr r12
/* 801DDDB4  4E 80 04 21 */	bctrl 
/* 801DDDB8  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DDDBC  FC 20 F8 90 */	fmr f1, f31
/* 801DDDC0  48 07 7A 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DDDC4  3B 7B 00 01 */	addi r27, r27, 1
/* 801DDDC8  2C 1B 00 03 */	cmpwi r27, 3
/* 801DDDCC  3B DE 00 04 */	addi r30, r30, 4
/* 801DDDD0  41 80 FF BC */	blt lbl_801DDD8C
/* 801DDDD4  7F E3 FB 78 */	mr r3, r31
/* 801DDDD8  48 00 2D 4D */	bl setCursorPos__14dMenu_Letter_cFv
/* 801DDDDC  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDDE0  FC 20 F8 90 */	fmr f1, f31
/* 801DDDE4  4B FB 74 BD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801DDDE8  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDDEC  FC 20 F8 90 */	fmr f1, f31
/* 801DDDF0  4B FB 73 D9 */	bl setScale__16dSelect_cursor_cFf
/* 801DDDF4  38 60 00 00 */	li r3, 0
lbl_801DDDF8:
/* 801DDDF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801DDDFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DDE00  39 61 00 30 */	addi r11, r1, 0x30
/* 801DDE04  48 18 44 1D */	bl _restgpr_27
/* 801DDE08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DDE0C  7C 08 03 A6 */	mtlr r0
/* 801DDE10  38 21 00 40 */	addi r1, r1, 0x40
/* 801DDE14  4E 80 00 20 */	blr 
