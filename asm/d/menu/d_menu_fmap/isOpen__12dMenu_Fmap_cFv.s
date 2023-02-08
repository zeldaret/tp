lbl_801CADC4:
/* 801CADC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CADC8  7C 08 02 A6 */	mflr r0
/* 801CADCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CADD0  39 61 00 30 */	addi r11, r1, 0x30
/* 801CADD4  48 19 74 09 */	bl _savegpr_29
/* 801CADD8  7C 7D 1B 78 */	mr r29, r3
/* 801CADDC  3B E0 00 00 */	li r31, 0
/* 801CADE0  3B C0 00 00 */	li r30, 0
/* 801CADE4  80 03 00 68 */	lwz r0, 0x68(r3)
/* 801CADE8  28 00 00 00 */	cmplwi r0, 0
/* 801CADEC  40 82 00 A4 */	bne lbl_801CAE90
/* 801CADF0  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 801CADF4  28 00 00 00 */	cmplwi r0, 0
/* 801CADF8  40 82 00 20 */	bne lbl_801CAE18
/* 801CADFC  3C 60 80 39 */	lis r3, d_menu_d_menu_fmap__stringBase0@ha /* 0x803960E8@ha */
/* 801CAE00  38 63 60 E8 */	addi r3, r3, d_menu_d_menu_fmap__stringBase0@l /* 0x803960E8@l */
/* 801CAE04  38 63 00 26 */	addi r3, r3, 0x26
/* 801CAE08  38 80 00 02 */	li r4, 2
/* 801CAE0C  80 BD 00 04 */	lwz r5, 4(r29)
/* 801CAE10  4B E4 B0 05 */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801CAE14  90 7D 00 1C */	stw r3, 0x1c(r29)
lbl_801CAE18:
/* 801CAE18  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801CAE1C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801CAE20  2C 00 00 00 */	cmpwi r0, 0
/* 801CAE24  41 82 00 64 */	beq lbl_801CAE88
/* 801CAE28  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801CAE2C  90 1D 00 68 */	stw r0, 0x68(r29)
/* 801CAE30  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801CAE34  28 03 00 00 */	cmplwi r3, 0
/* 801CAE38  41 82 00 18 */	beq lbl_801CAE50
/* 801CAE3C  38 80 00 01 */	li r4, 1
/* 801CAE40  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801CAE44  81 8C 00 08 */	lwz r12, 8(r12)
/* 801CAE48  7D 89 03 A6 */	mtctr r12
/* 801CAE4C  4E 80 04 21 */	bctrl 
lbl_801CAE50:
/* 801CAE50  38 00 00 00 */	li r0, 0
/* 801CAE54  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 801CAE58  80 7D 00 68 */	lwz r3, 0x68(r29)
/* 801CAE5C  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap__stringBase0@ha /* 0x803960E8@ha */
/* 801CAE60  38 84 60 E8 */	addi r4, r4, d_menu_d_menu_fmap__stringBase0@l /* 0x803960E8@l */
/* 801CAE64  38 84 00 3E */	addi r4, r4, 0x3e
/* 801CAE68  81 83 00 00 */	lwz r12, 0(r3)
/* 801CAE6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CAE70  7D 89 03 A6 */	mtctr r12
/* 801CAE74  4E 80 04 21 */	bctrl 
/* 801CAE78  90 7D 00 BC */	stw r3, 0xbc(r29)
/* 801CAE7C  7F A3 EB 78 */	mr r3, r29
/* 801CAE80  4B FF BE E5 */	bl _create__12dMenu_Fmap_cFv
/* 801CAE84  48 00 00 0C */	b lbl_801CAE90
lbl_801CAE88:
/* 801CAE88  38 60 00 00 */	li r3, 0
/* 801CAE8C  48 00 01 94 */	b lbl_801CB020
lbl_801CAE90:
/* 801CAE90  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801CAE94  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801CAE98  A8 A3 00 94 */	lha r5, 0x94(r3)
/* 801CAE9C  A8 83 00 96 */	lha r4, 0x96(r3)
/* 801CAEA0  A8 1D 02 12 */	lha r0, 0x212(r29)
/* 801CAEA4  2C 00 00 00 */	cmpwi r0, 0
/* 801CAEA8  40 82 00 08 */	bne lbl_801CAEB0
/* 801CAEAC  3B C0 00 01 */	li r30, 1
lbl_801CAEB0:
/* 801CAEB0  A8 7D 02 12 */	lha r3, 0x212(r29)
/* 801CAEB4  38 03 00 01 */	addi r0, r3, 1
/* 801CAEB8  B0 1D 02 12 */	sth r0, 0x212(r29)
/* 801CAEBC  A8 1D 02 12 */	lha r0, 0x212(r29)
/* 801CAEC0  C8 42 A7 40 */	lfd f2, lit_4358(r2)
/* 801CAEC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CAEC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CAECC  3C 60 43 30 */	lis r3, 0x4330
/* 801CAED0  90 61 00 08 */	stw r3, 8(r1)
/* 801CAED4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801CAED8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801CAEDC  7C A0 07 34 */	extsh r0, r5
/* 801CAEE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801CAEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CAEE8  90 61 00 10 */	stw r3, 0x10(r1)
/* 801CAEEC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CAEF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CAEF4  EC 41 00 24 */	fdivs f2, f1, f0
/* 801CAEF8  88 1D 03 04 */	lbz r0, 0x304(r29)
/* 801CAEFC  28 00 00 01 */	cmplwi r0, 1
/* 801CAF00  40 82 00 24 */	bne lbl_801CAF24
/* 801CAF04  C0 22 A7 2C */	lfs f1, lit_4159(r2)
/* 801CAF08  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CAF0C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CAF10  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CAF14  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CAF18  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CAF1C  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CAF20  48 00 00 78 */	b lbl_801CAF98
lbl_801CAF24:
/* 801CAF24  28 00 00 03 */	cmplwi r0, 3
/* 801CAF28  40 82 00 24 */	bne lbl_801CAF4C
/* 801CAF2C  C0 22 A7 30 */	lfs f1, lit_4160(r2)
/* 801CAF30  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CAF34  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CAF38  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CAF3C  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CAF40  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CAF44  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CAF48  48 00 00 50 */	b lbl_801CAF98
lbl_801CAF4C:
/* 801CAF4C  28 00 00 02 */	cmplwi r0, 2
/* 801CAF50  40 82 00 24 */	bne lbl_801CAF74
/* 801CAF54  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CAF58  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CAF5C  C0 22 A7 34 */	lfs f1, lit_4161(r2)
/* 801CAF60  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CAF64  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CAF68  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CAF6C  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CAF70  48 00 00 28 */	b lbl_801CAF98
lbl_801CAF74:
/* 801CAF74  28 00 00 00 */	cmplwi r0, 0
/* 801CAF78  40 82 00 20 */	bne lbl_801CAF98
/* 801CAF7C  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CAF80  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CAF84  C0 22 A7 38 */	lfs f1, lit_4162(r2)
/* 801CAF88  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CAF8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CAF90  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CAF94  D0 1D 01 20 */	stfs f0, 0x120(r29)
lbl_801CAF98:
/* 801CAF98  D0 5D 01 24 */	stfs f2, 0x124(r29)
/* 801CAF9C  A8 7D 02 12 */	lha r3, 0x212(r29)
/* 801CAFA0  7C A0 07 34 */	extsh r0, r5
/* 801CAFA4  7C 03 00 00 */	cmpw r3, r0
/* 801CAFA8  41 80 00 20 */	blt lbl_801CAFC8
/* 801CAFAC  B0 9D 02 12 */	sth r4, 0x212(r29)
/* 801CAFB0  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CAFB4  D0 1D 01 1C */	stfs f0, 0x11c(r29)
/* 801CAFB8  D0 1D 01 20 */	stfs f0, 0x120(r29)
/* 801CAFBC  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801CAFC0  D0 1D 01 24 */	stfs f0, 0x124(r29)
/* 801CAFC4  3B E0 00 01 */	li r31, 1
lbl_801CAFC8:
/* 801CAFC8  C0 3D 01 20 */	lfs f1, 0x120(r29)
/* 801CAFCC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CAFD0  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 801CAFD4  D0 03 0F BC */	stfs f0, 0xfbc(r3)
/* 801CAFD8  D0 23 0F C0 */	stfs f1, 0xfc0(r3)
/* 801CAFDC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CAFE0  C0 3D 01 24 */	lfs f1, 0x124(r29)
/* 801CAFE4  7F C4 F3 78 */	mr r4, r30
/* 801CAFE8  48 00 A3 4D */	bl setAllAlphaRate__18dMenu_Fmap2DBack_cFfb
/* 801CAFEC  C0 3D 01 20 */	lfs f1, 0x120(r29)
/* 801CAFF0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801CAFF4  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 801CAFF8  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 801CAFFC  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 801CB000  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801CB004  C0 3D 01 24 */	lfs f1, 0x124(r29)
/* 801CB008  7F C4 F3 78 */	mr r4, r30
/* 801CB00C  48 00 BC 39 */	bl setAllAlphaRate__17dMenu_Fmap2DTop_cFfb
/* 801CB010  C0 1D 01 A8 */	lfs f0, 0x1a8(r29)
/* 801CB014  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801CB018  D0 03 11 D8 */	stfs f0, 0x11d8(r3)
/* 801CB01C  7F E3 FB 78 */	mr r3, r31
lbl_801CB020:
/* 801CB020  39 61 00 30 */	addi r11, r1, 0x30
/* 801CB024  48 19 72 05 */	bl _restgpr_29
/* 801CB028  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CB02C  7C 08 03 A6 */	mtlr r0
/* 801CB030  38 21 00 30 */	addi r1, r1, 0x30
/* 801CB034  4E 80 00 20 */	blr 
