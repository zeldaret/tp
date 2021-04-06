lbl_801DEE6C:
/* 801DEE6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DEE70  7C 08 02 A6 */	mflr r0
/* 801DEE74  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DEE78  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DEE7C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801DEE80  39 61 00 30 */	addi r11, r1, 0x30
/* 801DEE84  48 18 33 51 */	bl _savegpr_27
/* 801DEE88  7C 7F 1B 78 */	mr r31, r3
/* 801DEE8C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DEE90  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DEE94  A8 9D 07 5E */	lha r4, 0x75e(r29)
/* 801DEE98  A8 7F 03 6A */	lha r3, 0x36a(r31)
/* 801DEE9C  38 03 FF FF */	addi r0, r3, -1
/* 801DEEA0  B0 1F 03 6A */	sth r0, 0x36a(r31)
/* 801DEEA4  A8 7F 03 6A */	lha r3, 0x36a(r31)
/* 801DEEA8  7C 60 07 35 */	extsh. r0, r3
/* 801DEEAC  41 81 00 78 */	bgt lbl_801DEF24
/* 801DEEB0  3B C0 00 00 */	li r30, 0
/* 801DEEB4  9B DF 03 6D */	stb r30, 0x36d(r31)
/* 801DEEB8  3B 80 00 00 */	li r28, 0
/* 801DEEBC  C3 E2 A8 E0 */	lfs f31, lit_3827(r2)
lbl_801DEEC0:
/* 801DEEC0  3B BE 02 E0 */	addi r29, r30, 0x2e0
/* 801DEEC4  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801DEEC8  80 63 00 04 */	lwz r3, 4(r3)
/* 801DEECC  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801DEED0  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801DEED4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DEED8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DEEDC  7D 89 03 A6 */	mtctr r12
/* 801DEEE0  4E 80 04 21 */	bctrl 
/* 801DEEE4  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801DEEE8  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DEEEC  48 07 68 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DEEF0  3B 9C 00 01 */	addi r28, r28, 1
/* 801DEEF4  2C 1C 00 02 */	cmpwi r28, 2
/* 801DEEF8  3B DE 00 04 */	addi r30, r30, 4
/* 801DEEFC  41 80 FF C4 */	blt lbl_801DEEC0
/* 801DEF00  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801DEF04  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DEF08  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DEF0C  88 84 07 85 */	lbz r4, 0x785(r4)
/* 801DEF10  81 83 00 00 */	lwz r12, 0(r3)
/* 801DEF14  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DEF18  7D 89 03 A6 */	mtctr r12
/* 801DEF1C  4E 80 04 21 */	bctrl 
/* 801DEF20  48 00 00 D0 */	b lbl_801DEFF0
lbl_801DEF24:
/* 801DEF24  C8 42 A9 10 */	lfd f2, lit_4171(r2)
/* 801DEF28  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801DEF2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DEF30  3C 60 43 30 */	lis r3, 0x4330
/* 801DEF34  90 61 00 08 */	stw r3, 8(r1)
/* 801DEF38  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DEF3C  EC 20 10 28 */	fsubs f1, f0, f2
/* 801DEF40  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801DEF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEF48  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DEF4C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DEF50  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DEF54  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DEF58  3B 60 00 00 */	li r27, 0
/* 801DEF5C  3B C0 00 00 */	li r30, 0
lbl_801DEF60:
/* 801DEF60  C0 1D 07 4C */	lfs f0, 0x74c(r29)
/* 801DEF64  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DEF68  3B 9E 02 E0 */	addi r28, r30, 0x2e0
/* 801DEF6C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DEF70  80 63 00 04 */	lwz r3, 4(r3)
/* 801DEF74  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DEF78  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DEF7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DEF80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DEF84  7D 89 03 A6 */	mtctr r12
/* 801DEF88  4E 80 04 21 */	bctrl 
/* 801DEF8C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801DEF90  FC 20 F8 90 */	fmr f1, f31
/* 801DEF94  48 07 68 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DEF98  3B 7B 00 01 */	addi r27, r27, 1
/* 801DEF9C  2C 1B 00 02 */	cmpwi r27, 2
/* 801DEFA0  3B DE 00 04 */	addi r30, r30, 4
/* 801DEFA4  41 80 FF BC */	blt lbl_801DEF60
/* 801DEFA8  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801DEFAC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801DEFB0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801DEFB4  88 04 07 85 */	lbz r0, 0x785(r4)
/* 801DEFB8  C8 22 A9 08 */	lfd f1, lit_4058(r2)
/* 801DEFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEFC0  3C 00 43 30 */	lis r0, 0x4330
/* 801DEFC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DEFC8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DEFCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801DEFD0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DEFD4  FC 00 00 1E */	fctiwz f0, f0
/* 801DEFD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 801DEFDC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801DEFE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DEFE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DEFE8  7D 89 03 A6 */	mtctr r12
/* 801DEFEC  4E 80 04 21 */	bctrl 
lbl_801DEFF0:
/* 801DEFF0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801DEFF4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DEFF8  39 61 00 30 */	addi r11, r1, 0x30
/* 801DEFFC  48 18 32 25 */	bl _restgpr_27
/* 801DF000  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DF004  7C 08 03 A6 */	mtlr r0
/* 801DF008  38 21 00 40 */	addi r1, r1, 0x40
/* 801DF00C  4E 80 00 20 */	blr 
