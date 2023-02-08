lbl_801DEA94:
/* 801DEA94  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DEA98  7C 08 02 A6 */	mflr r0
/* 801DEA9C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DEAA0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DEAA4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801DEAA8  39 61 00 30 */	addi r11, r1, 0x30
/* 801DEAAC  48 18 37 2D */	bl _savegpr_28
/* 801DEAB0  7C 7F 1B 78 */	mr r31, r3
/* 801DEAB4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DEAB8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DEABC  A8 83 07 5C */	lha r4, 0x75c(r3)
/* 801DEAC0  A8 7F 03 6A */	lha r3, 0x36a(r31)
/* 801DEAC4  38 03 FF FF */	addi r0, r3, -1
/* 801DEAC8  B0 1F 03 6A */	sth r0, 0x36a(r31)
/* 801DEACC  A8 7F 03 6A */	lha r3, 0x36a(r31)
/* 801DEAD0  7C 60 07 35 */	extsh. r0, r3
/* 801DEAD4  41 81 00 74 */	bgt lbl_801DEB48
/* 801DEAD8  38 00 00 06 */	li r0, 6
/* 801DEADC  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DEAE0  3B 80 00 00 */	li r28, 0
/* 801DEAE4  3B C0 00 00 */	li r30, 0
lbl_801DEAE8:
/* 801DEAE8  7F BF F2 14 */	add r29, r31, r30
/* 801DEAEC  80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 801DEAF0  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DEAF4  48 07 6C DD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DEAF8  80 7D 02 F4 */	lwz r3, 0x2f4(r29)
/* 801DEAFC  28 03 00 00 */	cmplwi r3, 0
/* 801DEB00  41 82 00 0C */	beq lbl_801DEB0C
/* 801DEB04  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DEB08  48 07 6C C9 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801DEB0C:
/* 801DEB0C  3B 9C 00 01 */	addi r28, r28, 1
/* 801DEB10  2C 1C 00 02 */	cmpwi r28, 2
/* 801DEB14  3B DE 00 04 */	addi r30, r30, 4
/* 801DEB18  41 80 FF D0 */	blt lbl_801DEAE8
/* 801DEB1C  88 1F 03 E4 */	lbz r0, 0x3e4(r31)
/* 801DEB20  28 00 00 00 */	cmplwi r0, 0
/* 801DEB24  41 82 00 14 */	beq lbl_801DEB38
/* 801DEB28  88 7F 03 E3 */	lbz r3, 0x3e3(r31)
/* 801DEB2C  38 03 00 01 */	addi r0, r3, 1
/* 801DEB30  98 1F 03 E3 */	stb r0, 0x3e3(r31)
/* 801DEB34  48 00 00 84 */	b lbl_801DEBB8
lbl_801DEB38:
/* 801DEB38  88 7F 03 E3 */	lbz r3, 0x3e3(r31)
/* 801DEB3C  38 03 FF FF */	addi r0, r3, -1
/* 801DEB40  98 1F 03 E3 */	stb r0, 0x3e3(r31)
/* 801DEB44  48 00 00 74 */	b lbl_801DEBB8
lbl_801DEB48:
/* 801DEB48  C8 42 A9 10 */	lfd f2, lit_4171(r2)
/* 801DEB4C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801DEB50  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DEB54  3C 60 43 30 */	lis r3, 0x4330
/* 801DEB58  90 61 00 08 */	stw r3, 8(r1)
/* 801DEB5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DEB60  EC 20 10 28 */	fsubs f1, f0, f2
/* 801DEB64  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801DEB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEB6C  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DEB70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DEB74  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DEB78  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DEB7C  3B 80 00 00 */	li r28, 0
/* 801DEB80  3B C0 00 00 */	li r30, 0
lbl_801DEB84:
/* 801DEB84  7F BF F2 14 */	add r29, r31, r30
/* 801DEB88  80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 801DEB8C  FC 20 F8 90 */	fmr f1, f31
/* 801DEB90  48 07 6C 41 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DEB94  80 7D 02 F4 */	lwz r3, 0x2f4(r29)
/* 801DEB98  28 03 00 00 */	cmplwi r3, 0
/* 801DEB9C  41 82 00 0C */	beq lbl_801DEBA8
/* 801DEBA0  FC 20 F8 90 */	fmr f1, f31
/* 801DEBA4  48 07 6C 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801DEBA8:
/* 801DEBA8  3B 9C 00 01 */	addi r28, r28, 1
/* 801DEBAC  2C 1C 00 02 */	cmpwi r28, 2
/* 801DEBB0  3B DE 00 04 */	addi r30, r30, 4
/* 801DEBB4  41 80 FF D0 */	blt lbl_801DEB84
lbl_801DEBB8:
/* 801DEBB8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801DEBBC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DEBC0  39 61 00 30 */	addi r11, r1, 0x30
/* 801DEBC4  48 18 36 61 */	bl _restgpr_28
/* 801DEBC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DEBCC  7C 08 03 A6 */	mtlr r0
/* 801DEBD0  38 21 00 40 */	addi r1, r1, 0x40
/* 801DEBD4  4E 80 00 20 */	blr 
