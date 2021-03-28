lbl_801DED04:
/* 801DED04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DED08  7C 08 02 A6 */	mflr r0
/* 801DED0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DED10  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DED14  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801DED18  39 61 00 30 */	addi r11, r1, 0x30
/* 801DED1C  48 18 34 BD */	bl _savegpr_28
/* 801DED20  7C 7F 1B 78 */	mr r31, r3
/* 801DED24  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DED28  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801DED2C  A8 83 07 5A */	lha r4, 0x75a(r3)
/* 801DED30  A8 7F 03 6A */	lha r3, 0x36a(r31)
/* 801DED34  38 03 00 01 */	addi r0, r3, 1
/* 801DED38  B0 1F 03 6A */	sth r0, 0x36a(r31)
/* 801DED3C  A8 1F 03 6A */	lha r0, 0x36a(r31)
/* 801DED40  7C 00 20 00 */	cmpw r0, r4
/* 801DED44  41 80 00 4C */	blt lbl_801DED90
/* 801DED48  38 00 00 04 */	li r0, 4
/* 801DED4C  98 1F 03 6D */	stb r0, 0x36d(r31)
/* 801DED50  3B 80 00 00 */	li r28, 0
/* 801DED54  3B C0 00 00 */	li r30, 0
lbl_801DED58:
/* 801DED58  7F BF F2 14 */	add r29, r31, r30
/* 801DED5C  80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 801DED60  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DED64  48 07 6A 6D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DED68  80 7D 02 F4 */	lwz r3, 0x2f4(r29)
/* 801DED6C  28 03 00 00 */	cmplwi r3, 0
/* 801DED70  41 82 00 0C */	beq lbl_801DED7C
/* 801DED74  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DED78  48 07 6A 59 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801DED7C:
/* 801DED7C  3B 9C 00 01 */	addi r28, r28, 1
/* 801DED80  2C 1C 00 02 */	cmpwi r28, 2
/* 801DED84  3B DE 00 04 */	addi r30, r30, 4
/* 801DED88  41 80 FF D0 */	blt lbl_801DED58
/* 801DED8C  48 00 00 74 */	b lbl_801DEE00
lbl_801DED90:
/* 801DED90  C8 42 A9 10 */	lfd f2, lit_4171(r2)
/* 801DED94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801DED98  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DED9C  3C 60 43 30 */	lis r3, 0x4330
/* 801DEDA0  90 61 00 08 */	stw r3, 8(r1)
/* 801DEDA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801DEDA8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801DEDAC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801DEDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEDB4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801DEDB8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DEDBC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801DEDC0  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DEDC4  3B 80 00 00 */	li r28, 0
/* 801DEDC8  3B C0 00 00 */	li r30, 0
lbl_801DEDCC:
/* 801DEDCC  7F BF F2 14 */	add r29, r31, r30
/* 801DEDD0  80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 801DEDD4  FC 20 F8 90 */	fmr f1, f31
/* 801DEDD8  48 07 69 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801DEDDC  80 7D 02 F4 */	lwz r3, 0x2f4(r29)
/* 801DEDE0  28 03 00 00 */	cmplwi r3, 0
/* 801DEDE4  41 82 00 0C */	beq lbl_801DEDF0
/* 801DEDE8  FC 20 F8 90 */	fmr f1, f31
/* 801DEDEC  48 07 69 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801DEDF0:
/* 801DEDF0  3B 9C 00 01 */	addi r28, r28, 1
/* 801DEDF4  2C 1C 00 02 */	cmpwi r28, 2
/* 801DEDF8  3B DE 00 04 */	addi r30, r30, 4
/* 801DEDFC  41 80 FF D0 */	blt lbl_801DEDCC
lbl_801DEE00:
/* 801DEE00  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801DEE04  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DEE08  39 61 00 30 */	addi r11, r1, 0x30
/* 801DEE0C  48 18 34 19 */	bl _restgpr_28
/* 801DEE10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DEE14  7C 08 03 A6 */	mtlr r0
/* 801DEE18  38 21 00 40 */	addi r1, r1, 0x40
/* 801DEE1C  4E 80 00 20 */	blr 
