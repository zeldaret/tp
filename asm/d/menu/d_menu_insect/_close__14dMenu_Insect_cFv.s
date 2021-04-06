lbl_801D8B2C:
/* 801D8B2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D8B30  7C 08 02 A6 */	mflr r0
/* 801D8B34  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D8B38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801D8B3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801D8B40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8B44  7C 7F 1B 78 */	mr r31, r3
/* 801D8B48  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801D8B4C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801D8B50  A8 A3 0A 16 */	lha r5, 0xa16(r3)
/* 801D8B54  38 60 00 00 */	li r3, 0
/* 801D8B58  B0 7F 00 F0 */	sth r3, 0xf0(r31)
/* 801D8B5C  A8 9F 00 F0 */	lha r4, 0xf0(r31)
/* 801D8B60  7C 80 07 35 */	extsh. r0, r4
/* 801D8B64  41 81 00 64 */	bgt lbl_801D8BC8
/* 801D8B68  B0 7F 00 F0 */	sth r3, 0xf0(r31)
/* 801D8B6C  98 7F 00 F2 */	stb r3, 0xf2(r31)
/* 801D8B70  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8B74  80 63 00 04 */	lwz r3, 4(r3)
/* 801D8B78  C0 02 A8 44 */	lfs f0, lit_3837(r2)
/* 801D8B7C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801D8B80  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801D8B84  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8B88  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8B8C  7D 89 03 A6 */	mtctr r12
/* 801D8B90  4E 80 04 21 */	bctrl 
/* 801D8B94  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8B98  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8B9C  48 07 CC 35 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D8BA0  7F E3 FB 78 */	mr r3, r31
/* 801D8BA4  48 00 16 49 */	bl setCursorPos__14dMenu_Insect_cFv
/* 801D8BA8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8BAC  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8BB0  4B FB C6 F1 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801D8BB4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8BB8  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8BBC  4B FB C6 0D */	bl setScale__16dSelect_cursor_cFf
/* 801D8BC0  38 60 00 01 */	li r3, 1
/* 801D8BC4  48 00 00 88 */	b lbl_801D8C4C
lbl_801D8BC8:
/* 801D8BC8  C8 42 A8 60 */	lfd f2, lit_4020(r2)
/* 801D8BCC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801D8BD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D8BD4  3C 60 43 30 */	lis r3, 0x4330
/* 801D8BD8  90 61 00 08 */	stw r3, 8(r1)
/* 801D8BDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D8BE0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801D8BE4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801D8BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8BEC  90 61 00 10 */	stw r3, 0x10(r1)
/* 801D8BF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801D8BF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 801D8BF8  EF E1 00 24 */	fdivs f31, f1, f0
/* 801D8BFC  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8C00  80 63 00 04 */	lwz r3, 4(r3)
/* 801D8C04  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801D8C08  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801D8C0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D8C10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801D8C14  7D 89 03 A6 */	mtctr r12
/* 801D8C18  4E 80 04 21 */	bctrl 
/* 801D8C1C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801D8C20  FC 20 F8 90 */	fmr f1, f31
/* 801D8C24  48 07 CB AD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801D8C28  7F E3 FB 78 */	mr r3, r31
/* 801D8C2C  48 00 15 C1 */	bl setCursorPos__14dMenu_Insect_cFv
/* 801D8C30  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8C34  FC 20 F8 90 */	fmr f1, f31
/* 801D8C38  4B FB C6 69 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801D8C3C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801D8C40  FC 20 F8 90 */	fmr f1, f31
/* 801D8C44  4B FB C5 85 */	bl setScale__16dSelect_cursor_cFf
/* 801D8C48  38 60 00 00 */	li r3, 0
lbl_801D8C4C:
/* 801D8C4C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801D8C50  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801D8C54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D8C58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D8C5C  7C 08 03 A6 */	mtlr r0
/* 801D8C60  38 21 00 30 */	addi r1, r1, 0x30
/* 801D8C64  4E 80 00 20 */	blr 
