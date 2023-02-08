lbl_801DDA74:
/* 801DDA74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DDA78  7C 08 02 A6 */	mflr r0
/* 801DDA7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DDA80  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DDA84  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801DDA88  39 61 00 30 */	addi r11, r1, 0x30
/* 801DDA8C  48 18 47 49 */	bl _savegpr_27
/* 801DDA90  7C 7F 1B 78 */	mr r31, r3
/* 801DDA94  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801DDA98  28 00 00 00 */	cmplwi r0, 0
/* 801DDA9C  40 82 00 1C */	bne lbl_801DDAB8
/* 801DDAA0  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801DDAA4  38 63 6D C0 */	addi r3, r3, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801DDAA8  38 80 00 00 */	li r4, 0
/* 801DDAAC  38 A0 00 00 */	li r5, 0
/* 801DDAB0  4B E3 83 65 */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801DDAB4  90 7F 00 14 */	stw r3, 0x14(r31)
lbl_801DDAB8:
/* 801DDAB8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DDABC  28 03 00 00 */	cmplwi r3, 0
/* 801DDAC0  40 82 00 60 */	bne lbl_801DDB20
/* 801DDAC4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801DDAC8  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801DDACC  2C 00 00 00 */	cmpwi r0, 0
/* 801DDAD0  41 82 00 48 */	beq lbl_801DDB18
/* 801DDAD4  28 03 00 00 */	cmplwi r3, 0
/* 801DDAD8  40 82 00 48 */	bne lbl_801DDB20
/* 801DDADC  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801DDAE0  90 1F 00 08 */	stw r0, 8(r31)
/* 801DDAE4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801DDAE8  28 03 00 00 */	cmplwi r3, 0
/* 801DDAEC  41 82 00 18 */	beq lbl_801DDB04
/* 801DDAF0  38 80 00 01 */	li r4, 1
/* 801DDAF4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801DDAF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DDAFC  7D 89 03 A6 */	mtctr r12
/* 801DDB00  4E 80 04 21 */	bctrl 
lbl_801DDB04:
/* 801DDB04  38 00 00 00 */	li r0, 0
/* 801DDB08  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801DDB0C  7F E3 FB 78 */	mr r3, r31
/* 801DDB10  4B FF F8 5D */	bl _create__14dMenu_Letter_cFv
/* 801DDB14  48 00 00 0C */	b lbl_801DDB20
lbl_801DDB18:
/* 801DDB18  38 60 00 00 */	li r3, 0
/* 801DDB1C  48 00 01 5C */	b lbl_801DDC78
lbl_801DDB20:
/* 801DDB20  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DDB24  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DDB28  A8 9D 07 58 */	lha r4, 0x758(r29)
/* 801DDB2C  A8 7D 07 5C */	lha r3, 0x75c(r29)
/* 801DDB30  B0 9F 03 68 */	sth r4, 0x368(r31)
/* 801DDB34  A8 1F 03 68 */	lha r0, 0x368(r31)
/* 801DDB38  7C 00 20 00 */	cmpw r0, r4
/* 801DDB3C  41 80 00 94 */	blt lbl_801DDBD0
/* 801DDB40  B0 7F 03 68 */	sth r3, 0x368(r31)
/* 801DDB44  38 00 00 02 */	li r0, 2
/* 801DDB48  98 1F 03 6C */	stb r0, 0x36c(r31)
/* 801DDB4C  3B 60 00 00 */	li r27, 0
/* 801DDB50  3B C0 00 00 */	li r30, 0
lbl_801DDB54:
/* 801DDB54  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 801DDB58  3B 9E 02 B8 */	addi r28, r30, 0x2b8
/* 801DDB5C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DDB60  80 63 00 04 */	lwz r3, 4(r3)
/* 801DDB64  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DDB68  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DDB6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DDB70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DDB74  7D 89 03 A6 */	mtctr r12
/* 801DDB78  4E 80 04 21 */	bctrl 
/* 801DDB7C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DDB80  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DDB84  48 07 7C 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DDB88  3B 7B 00 01 */	addi r27, r27, 1
/* 801DDB8C  2C 1B 00 03 */	cmpwi r27, 3
/* 801DDB90  3B DE 00 04 */	addi r30, r30, 4
/* 801DDB94  41 80 FF C0 */	blt lbl_801DDB54
/* 801DDB98  7F E3 FB 78 */	mr r3, r31
/* 801DDB9C  48 00 2F 89 */	bl setCursorPos__14dMenu_Letter_cFv
/* 801DDBA0  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDBA4  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DDBA8  4B FB 76 F9 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801DDBAC  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDBB0  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DDBB4  4B FB 76 15 */	bl setScale__16dSelect_cursor_cFf
/* 801DDBB8  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDBBC  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801DDBC0  60 00 00 01 */	ori r0, r0, 1
/* 801DDBC4  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801DDBC8  38 60 00 01 */	li r3, 1
/* 801DDBCC  48 00 00 AC */	b lbl_801DDC78
lbl_801DDBD0:
/* 801DDBD0  C8 42 A9 10 */	lfd f2, lit_4171(r2)
/* 801DDBD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801DDBD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DDBDC  3C 60 43 30 */	lis r3, 0x4330
/* 801DDBE0  90 61 00 08 */	stw r3, 8(r1)
/* 801DDBE4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DDBE8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801DDBEC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801DDBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DDBF4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DDBF8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DDBFC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DDC00  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DDC04  3B 60 00 00 */	li r27, 0
/* 801DDC08  3B C0 00 00 */	li r30, 0
lbl_801DDC0C:
/* 801DDC0C  C0 1D 07 40 */	lfs f0, 0x740(r29)
/* 801DDC10  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DDC14  3B 9E 02 B8 */	addi r28, r30, 0x2b8
/* 801DDC18  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DDC1C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DDC20  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DDC24  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DDC28  81 83 00 00 */	lwz r12, 0(r3)
/* 801DDC2C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DDC30  7D 89 03 A6 */	mtctr r12
/* 801DDC34  4E 80 04 21 */	bctrl 
/* 801DDC38  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DDC3C  FC 20 F8 90 */	fmr f1, f31
/* 801DDC40  48 07 7B 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DDC44  3B 7B 00 01 */	addi r27, r27, 1
/* 801DDC48  2C 1B 00 03 */	cmpwi r27, 3
/* 801DDC4C  3B DE 00 04 */	addi r30, r30, 4
/* 801DDC50  41 80 FF BC */	blt lbl_801DDC0C
/* 801DDC54  7F E3 FB 78 */	mr r3, r31
/* 801DDC58  48 00 2E CD */	bl setCursorPos__14dMenu_Letter_cFv
/* 801DDC5C  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDC60  FC 20 F8 90 */	fmr f1, f31
/* 801DDC64  4B FB 76 3D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801DDC68  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DDC6C  FC 20 F8 90 */	fmr f1, f31
/* 801DDC70  4B FB 75 59 */	bl setScale__16dSelect_cursor_cFf
/* 801DDC74  38 60 00 00 */	li r3, 0
lbl_801DDC78:
/* 801DDC78  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801DDC7C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DDC80  39 61 00 30 */	addi r11, r1, 0x30
/* 801DDC84  48 18 45 9D */	bl _restgpr_27
/* 801DDC88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DDC8C  7C 08 03 A6 */	mtlr r0
/* 801DDC90  38 21 00 40 */	addi r1, r1, 0x40
/* 801DDC94  4E 80 00 20 */	blr 
