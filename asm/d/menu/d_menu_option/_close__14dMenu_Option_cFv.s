lbl_801E3DE0:
/* 801E3DE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E3DE4  7C 08 02 A6 */	mflr r0
/* 801E3DE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E3DEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801E3DF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801E3DF4  39 61 00 30 */	addi r11, r1, 0x30
/* 801E3DF8  48 17 E3 E1 */	bl _savegpr_28
/* 801E3DFC  7C 7F 1B 78 */	mr r31, r3
/* 801E3E00  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E3E04  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E3E08  AB A4 07 22 */	lha r29, 0x722(r4)
/* 801E3E0C  38 00 00 00 */	li r0, 0
/* 801E3E10  B0 03 03 D8 */	sth r0, 0x3d8(r3)
/* 801E3E14  38 80 00 00 */	li r4, 0
/* 801E3E18  48 00 3A A1 */	bl setHIO__14dMenu_Option_cFb
/* 801E3E1C  A8 7F 03 D8 */	lha r3, 0x3d8(r31)
/* 801E3E20  7C 60 07 35 */	extsh. r0, r3
/* 801E3E24  41 81 00 80 */	bgt lbl_801E3EA4
/* 801E3E28  3B C0 00 00 */	li r30, 0
/* 801E3E2C  B3 DF 03 D8 */	sth r30, 0x3d8(r31)
/* 801E3E30  9B DF 03 EC */	stb r30, 0x3ec(r31)
/* 801E3E34  3B 80 00 00 */	li r28, 0
/* 801E3E38  C3 E2 A9 2C */	lfs f31, lit_4068(r2)
lbl_801E3E3C:
/* 801E3E3C  3B BE 00 5C */	addi r29, r30, 0x5c
/* 801E3E40  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3E44  80 63 00 04 */	lwz r3, 4(r3)
/* 801E3E48  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801E3E4C  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801E3E50  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3E54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E3E58  7D 89 03 A6 */	mtctr r12
/* 801E3E5C  4E 80 04 21 */	bctrl 
/* 801E3E60  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3E64  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E3E68  48 07 19 69 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E3E6C  3B 9C 00 01 */	addi r28, r28, 1
/* 801E3E70  2C 1C 00 05 */	cmpwi r28, 5
/* 801E3E74  3B DE 00 04 */	addi r30, r30, 4
/* 801E3E78  41 80 FF C4 */	blt lbl_801E3E3C
/* 801E3E7C  7F E3 FB 78 */	mr r3, r31
/* 801E3E80  48 00 38 6D */	bl getSelectType__14dMenu_Option_cFv
/* 801E3E84  7C 64 1B 78 */	mr r4, r3
/* 801E3E88  7F E3 FB 78 */	mr r3, r31
/* 801E3E8C  48 00 34 89 */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E3E90  7F E3 FB 78 */	mr r3, r31
/* 801E3E94  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E3E98  48 00 3E 81 */	bl cursorAnime__14dMenu_Option_cFf
/* 801E3E9C  38 60 00 01 */	li r3, 1
/* 801E3EA0  48 00 00 AC */	b lbl_801E3F4C
lbl_801E3EA4:
/* 801E3EA4  C8 42 A9 58 */	lfd f2, lit_4520(r2)
/* 801E3EA8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801E3EAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E3EB0  3C 60 43 30 */	lis r3, 0x4330
/* 801E3EB4  90 61 00 08 */	stw r3, 8(r1)
/* 801E3EB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E3EBC  EC 20 10 28 */	fsubs f1, f0, f2
/* 801E3EC0  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 801E3EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3EC8  90 61 00 10 */	stw r3, 0x10(r1)
/* 801E3ECC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801E3ED0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801E3ED4  EF E1 00 24 */	fdivs f31, f1, f0
/* 801E3ED8  3B 80 00 00 */	li r28, 0
/* 801E3EDC  3B C0 00 00 */	li r30, 0
lbl_801E3EE0:
/* 801E3EE0  C0 1F 03 80 */	lfs f0, 0x380(r31)
/* 801E3EE4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801E3EE8  3B BE 00 5C */	addi r29, r30, 0x5c
/* 801E3EEC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3EF0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E3EF4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E3EF8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E3EFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3F00  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E3F04  7D 89 03 A6 */	mtctr r12
/* 801E3F08  4E 80 04 21 */	bctrl 
/* 801E3F0C  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3F10  FC 20 F8 90 */	fmr f1, f31
/* 801E3F14  48 07 18 BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E3F18  3B 9C 00 01 */	addi r28, r28, 1
/* 801E3F1C  2C 1C 00 05 */	cmpwi r28, 5
/* 801E3F20  3B DE 00 04 */	addi r30, r30, 4
/* 801E3F24  41 80 FF BC */	blt lbl_801E3EE0
/* 801E3F28  7F E3 FB 78 */	mr r3, r31
/* 801E3F2C  48 00 37 C1 */	bl getSelectType__14dMenu_Option_cFv
/* 801E3F30  7C 64 1B 78 */	mr r4, r3
/* 801E3F34  7F E3 FB 78 */	mr r3, r31
/* 801E3F38  48 00 33 DD */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E3F3C  7F E3 FB 78 */	mr r3, r31
/* 801E3F40  FC 20 F8 90 */	fmr f1, f31
/* 801E3F44  48 00 3D D5 */	bl cursorAnime__14dMenu_Option_cFf
/* 801E3F48  38 60 00 00 */	li r3, 0
lbl_801E3F4C:
/* 801E3F4C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801E3F50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801E3F54  39 61 00 30 */	addi r11, r1, 0x30
/* 801E3F58  48 17 E2 CD */	bl _restgpr_28
/* 801E3F5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E3F60  7C 08 03 A6 */	mtlr r0
/* 801E3F64  38 21 00 40 */	addi r1, r1, 0x40
/* 801E3F68  4E 80 00 20 */	blr 
