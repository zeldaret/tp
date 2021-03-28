lbl_801D894C:
/* 801D894C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D8950  7C 08 02 A6 */	mflr r0
/* 801D8954  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D8958  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801D895C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801D8960  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8964  7C 7F 1B 78 */	mr r31, r3
/* 801D8968  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801D896C  28 00 00 00 */	cmplwi r0, 0
/* 801D8970  40 82 00 20 */	bne lbl_801D8990
/* 801D8974  3C 60 80 39 */	lis r3, d_menu_d_menu_insect__stringBase0@ha
/* 801D8978  38 63 68 C0 */	addi r3, r3, d_menu_d_menu_insect__stringBase0@l
/* 801D897C  38 63 00 10 */	addi r3, r3, 0x10
/* 801D8980  38 80 00 00 */	li r4, 0
/* 801D8984  38 A0 00 00 */	li r5, 0
/* 801D8988  4B E3 D4 8D */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801D898C  90 7F 00 14 */	stw r3, 0x14(r31)
lbl_801D8990:
/* 801D8990  80 7F 00 08 */	lwz r3, 8(r31)
/* 801D8994  28 03 00 00 */	cmplwi r3, 0
/* 801D8998  40 82 00 60 */	bne lbl_801D89F8
/* 801D899C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801D89A0  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801D89A4  2C 00 00 00 */	cmpwi r0, 0
/* 801D89A8  41 82 00 48 */	beq lbl_801D89F0
/* 801D89AC  28 03 00 00 */	cmplwi r3, 0
/* 801D89B0  40 82 00 48 */	bne lbl_801D89F8
/* 801D89B4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801D89B8  90 1F 00 08 */	stw r0, 8(r31)
/* 801D89BC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801D89C0  28 03 00 00 */	cmplwi r3, 0
/* 801D89C4  41 82 00 18 */	beq lbl_801D89DC
/* 801D89C8  38 80 00 01 */	li r4, 1
/* 801D89CC  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801D89D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D89D4  7D 89 03 A6 */	mtctr r12
/* 801D89D8  4E 80 04 21 */	bctrl 
lbl_801D89DC:
/* 801D89DC  38 00 00 00 */	li r0, 0
/* 801D89E0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801D89E4  7F E3 FB 78 */	mr r3, r31
/* 801D89E8  4B FF FC 71 */	bl _create__14dMenu_Insect_cFv
/* 801D89EC  48 00 00 0C */	b lbl_801D89F8
lbl_801D89F0:
/* 801D89F0  38 60 00 00 */	li r3, 0
/* 801D89F4  48 00 01 1C */	b lbl_801D8B10
lbl_801D89F8:
/* 801D89F8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801D89FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801D8A00  A8 83 0A 14 */	lha r4, 0xa14(r3)
/* 801D8A04  A8 63 0A 16 */	lha r3, 0xa16(r3)
/* 801D8A08  B0 9F 00 F0 */	sth r4, 0xf0(r31)
/* 801D8A0C  A8 1F 00 F0 */	lha r0, 0xf0(r31)
/* 801D8A10  7C 00 20 00 */	cmpw r0, r4
/* 801D8A14  41 80 00 78 */	blt lbl_801D8A8C
/* 801D8A18  B0 7F 00 F0 */	sth r3, 0xf0(r31)
/* 801D8A1C  38 00 00 02 */	li r0, 2
/* 801D8A20  98 1F 00 F2 */	stb r0, 0xf2(r31)
/* 801D8A24  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8A28  80 63 00 04 */	lwz r3, 4(r3)
/* 801D8A2C  C0 02 A8 38 */	lfs f0, lit_3834(r2)
/* 801D8A30  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D8A34  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D8A38  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8A3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8A40  7D 89 03 A6 */	mtctr r12
/* 801D8A44  4E 80 04 21 */	bctrl 
/* 801D8A48  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8A4C  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D8A50  48 07 CD 81 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D8A54  7F E3 FB 78 */	mr r3, r31
/* 801D8A58  48 00 17 95 */	bl setCursorPos__14dMenu_Insect_cFv
/* 801D8A5C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8A60  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D8A64  4B FB C8 3D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801D8A68  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8A6C  C0 22 A8 38 */	lfs f1, lit_3834(r2)
/* 801D8A70  4B FB C7 59 */	bl setScale__16dSelect_cursor_cFf
/* 801D8A74  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8A78  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801D8A7C  60 00 00 01 */	ori r0, r0, 1
/* 801D8A80  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801D8A84  38 60 00 01 */	li r3, 1
/* 801D8A88  48 00 00 88 */	b lbl_801D8B10
lbl_801D8A8C:
/* 801D8A8C  C8 42 A8 60 */	lfd f2, lit_4020(r2)
/* 801D8A90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D8A94  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D8A98  3C 60 43 30 */	lis r3, 0x4330
/* 801D8A9C  90 61 00 08 */	stw r3, 8(r1)
/* 801D8AA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D8AA4  EC 20 10 28 */	fsubs f1, f0, f2
/* 801D8AA8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801D8AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8AB0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801D8AB4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801D8AB8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801D8ABC  EF E1 00 24 */	fdivs f31, f1, f0
/* 801D8AC0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8AC4  80 63 00 04 */	lwz r3, 4(r3)
/* 801D8AC8  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801D8ACC  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801D8AD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8AD4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8AD8  7D 89 03 A6 */	mtctr r12
/* 801D8ADC  4E 80 04 21 */	bctrl 
/* 801D8AE0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8AE4  FC 20 F8 90 */	fmr f1, f31
/* 801D8AE8  48 07 CC E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D8AEC  7F E3 FB 78 */	mr r3, r31
/* 801D8AF0  48 00 16 FD */	bl setCursorPos__14dMenu_Insect_cFv
/* 801D8AF4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8AF8  FC 20 F8 90 */	fmr f1, f31
/* 801D8AFC  4B FB C7 A5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801D8B00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8B04  FC 20 F8 90 */	fmr f1, f31
/* 801D8B08  4B FB C6 C1 */	bl setScale__16dSelect_cursor_cFf
/* 801D8B0C  38 60 00 00 */	li r3, 0
lbl_801D8B10:
/* 801D8B10  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801D8B14  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801D8B18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D8B1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D8B20  7C 08 03 A6 */	mtlr r0
/* 801D8B24  38 21 00 30 */	addi r1, r1, 0x30
/* 801D8B28  4E 80 00 20 */	blr 
