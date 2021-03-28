lbl_801E3B98:
/* 801E3B98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E3B9C  7C 08 02 A6 */	mflr r0
/* 801E3BA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E3BA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801E3BA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801E3BAC  39 61 00 30 */	addi r11, r1, 0x30
/* 801E3BB0  48 17 E6 29 */	bl _savegpr_28
/* 801E3BB4  7C 7F 1B 78 */	mr r31, r3
/* 801E3BB8  80 03 00 40 */	lwz r0, 0x40(r3)
/* 801E3BBC  28 00 00 00 */	cmplwi r0, 0
/* 801E3BC0  40 82 00 20 */	bne lbl_801E3BE0
/* 801E3BC4  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha
/* 801E3BC8  38 63 75 D8 */	addi r3, r3, d_menu_d_menu_option__stringBase0@l
/* 801E3BCC  38 63 01 49 */	addi r3, r3, 0x149
/* 801E3BD0  38 80 00 00 */	li r4, 0
/* 801E3BD4  38 A0 00 00 */	li r5, 0
/* 801E3BD8  4B E3 22 3D */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801E3BDC  90 7F 00 40 */	stw r3, 0x40(r31)
lbl_801E3BE0:
/* 801E3BE0  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 801E3BE4  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801E3BE8  2C 00 00 00 */	cmpwi r0, 0
/* 801E3BEC  41 82 00 58 */	beq lbl_801E3C44
/* 801E3BF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801E3BF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801E3BF8  80 03 5C C4 */	lwz r0, 0x5cc4(r3)
/* 801E3BFC  28 00 00 00 */	cmplwi r0, 0
/* 801E3C00  40 82 00 4C */	bne lbl_801E3C4C
/* 801E3C04  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801E3C08  90 03 5C C4 */	stw r0, 0x5cc4(r3)
/* 801E3C0C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801E3C10  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801E3C14  28 03 00 00 */	cmplwi r3, 0
/* 801E3C18  41 82 00 18 */	beq lbl_801E3C30
/* 801E3C1C  38 80 00 01 */	li r4, 1
/* 801E3C20  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801E3C24  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E3C28  7D 89 03 A6 */	mtctr r12
/* 801E3C2C  4E 80 04 21 */	bctrl 
lbl_801E3C30:
/* 801E3C30  38 00 00 00 */	li r0, 0
/* 801E3C34  90 1F 00 40 */	stw r0, 0x40(r31)
/* 801E3C38  7F E3 FB 78 */	mr r3, r31
/* 801E3C3C  4B FF E4 21 */	bl _create__14dMenu_Option_cFv
/* 801E3C40  48 00 00 0C */	b lbl_801E3C4C
lbl_801E3C44:
/* 801E3C44  38 60 00 00 */	li r3, 0
/* 801E3C48  48 00 01 78 */	b lbl_801E3DC0
lbl_801E3C4C:
/* 801E3C4C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801E3C50  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801E3C54  AB A3 07 20 */	lha r29, 0x720(r3)
/* 801E3C58  AB C3 07 22 */	lha r30, 0x722(r3)
/* 801E3C5C  B3 BF 03 D8 */	sth r29, 0x3d8(r31)
/* 801E3C60  7F E3 FB 78 */	mr r3, r31
/* 801E3C64  38 80 00 00 */	li r4, 0
/* 801E3C68  48 00 3C 51 */	bl setHIO__14dMenu_Option_cFb
/* 801E3C6C  A8 1F 03 D8 */	lha r0, 0x3d8(r31)
/* 801E3C70  7C 00 E8 00 */	cmpw r0, r29
/* 801E3C74  41 80 00 A4 */	blt lbl_801E3D18
/* 801E3C78  B3 DF 03 D8 */	sth r30, 0x3d8(r31)
/* 801E3C7C  38 00 00 02 */	li r0, 2
/* 801E3C80  98 1F 03 EC */	stb r0, 0x3ec(r31)
/* 801E3C84  38 00 00 00 */	li r0, 0
/* 801E3C88  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E3C8C  7F E3 FB 78 */	mr r3, r31
/* 801E3C90  48 00 02 DD */	bl atten_init__14dMenu_Option_cFv
/* 801E3C94  3B 80 00 00 */	li r28, 0
/* 801E3C98  3B C0 00 00 */	li r30, 0
lbl_801E3C9C:
/* 801E3C9C  C0 1F 03 80 */	lfs f0, 0x380(r31)
/* 801E3CA0  3B BE 00 5C */	addi r29, r30, 0x5c
/* 801E3CA4  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3CA8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E3CAC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E3CB0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E3CB4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3CB8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E3CBC  7D 89 03 A6 */	mtctr r12
/* 801E3CC0  4E 80 04 21 */	bctrl 
/* 801E3CC4  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3CC8  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E3CCC  48 07 1B 05 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E3CD0  3B 9C 00 01 */	addi r28, r28, 1
/* 801E3CD4  2C 1C 00 05 */	cmpwi r28, 5
/* 801E3CD8  3B DE 00 04 */	addi r30, r30, 4
/* 801E3CDC  41 80 FF C0 */	blt lbl_801E3C9C
/* 801E3CE0  7F E3 FB 78 */	mr r3, r31
/* 801E3CE4  48 00 3A 09 */	bl getSelectType__14dMenu_Option_cFv
/* 801E3CE8  7C 64 1B 78 */	mr r4, r3
/* 801E3CEC  7F E3 FB 78 */	mr r3, r31
/* 801E3CF0  48 00 36 25 */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E3CF4  7F E3 FB 78 */	mr r3, r31
/* 801E3CF8  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E3CFC  48 00 40 1D */	bl cursorAnime__14dMenu_Option_cFf
/* 801E3D00  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E3D04  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801E3D08  60 00 00 01 */	ori r0, r0, 1
/* 801E3D0C  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801E3D10  38 60 00 01 */	li r3, 1
/* 801E3D14  48 00 00 AC */	b lbl_801E3DC0
lbl_801E3D18:
/* 801E3D18  C8 42 A9 58 */	lfd f2, lit_4520(r2)
/* 801E3D1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E3D20  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E3D24  3C 60 43 30 */	lis r3, 0x4330
/* 801E3D28  90 61 00 08 */	stw r3, 8(r1)
/* 801E3D2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E3D30  EC 20 10 28 */	fsubs f1, f0, f2
/* 801E3D34  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 801E3D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3D3C  90 61 00 10 */	stw r3, 0x10(r1)
/* 801E3D40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801E3D44  EC 00 10 28 */	fsubs f0, f0, f2
/* 801E3D48  EF E1 00 24 */	fdivs f31, f1, f0
/* 801E3D4C  3B 80 00 00 */	li r28, 0
/* 801E3D50  3B C0 00 00 */	li r30, 0
lbl_801E3D54:
/* 801E3D54  C0 1F 03 80 */	lfs f0, 0x380(r31)
/* 801E3D58  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801E3D5C  3B BE 00 5C */	addi r29, r30, 0x5c
/* 801E3D60  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3D64  80 63 00 04 */	lwz r3, 4(r3)
/* 801E3D68  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E3D6C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E3D70  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3D74  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E3D78  7D 89 03 A6 */	mtctr r12
/* 801E3D7C  4E 80 04 21 */	bctrl 
/* 801E3D80  7C 7F E8 2E */	lwzx r3, r31, r29
/* 801E3D84  FC 20 F8 90 */	fmr f1, f31
/* 801E3D88  48 07 1A 49 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E3D8C  3B 9C 00 01 */	addi r28, r28, 1
/* 801E3D90  2C 1C 00 05 */	cmpwi r28, 5
/* 801E3D94  3B DE 00 04 */	addi r30, r30, 4
/* 801E3D98  41 80 FF BC */	blt lbl_801E3D54
/* 801E3D9C  7F E3 FB 78 */	mr r3, r31
/* 801E3DA0  48 00 39 4D */	bl getSelectType__14dMenu_Option_cFv
/* 801E3DA4  7C 64 1B 78 */	mr r4, r3
/* 801E3DA8  7F E3 FB 78 */	mr r3, r31
/* 801E3DAC  48 00 35 69 */	bl setCursorPos__14dMenu_Option_cFUc
/* 801E3DB0  7F E3 FB 78 */	mr r3, r31
/* 801E3DB4  FC 20 F8 90 */	fmr f1, f31
/* 801E3DB8  48 00 3F 61 */	bl cursorAnime__14dMenu_Option_cFf
/* 801E3DBC  38 60 00 00 */	li r3, 0
lbl_801E3DC0:
/* 801E3DC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801E3DC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801E3DC8  39 61 00 30 */	addi r11, r1, 0x30
/* 801E3DCC  48 17 E4 59 */	bl _restgpr_28
/* 801E3DD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E3DD4  7C 08 03 A6 */	mtlr r0
/* 801E3DD8  38 21 00 40 */	addi r1, r1, 0x40
/* 801E3DDC  4E 80 00 20 */	blr 
