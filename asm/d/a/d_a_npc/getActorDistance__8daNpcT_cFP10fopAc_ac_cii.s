lbl_8014BB00:
/* 8014BB00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8014BB04  7C 08 02 A6 */	mflr r0
/* 8014BB08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014BB0C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8014BB10  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8014BB14  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8014BB18  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8014BB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8014BB20  48 21 66 B9 */	bl _savegpr_28
/* 8014BB24  7C 7C 1B 78 */	mr r28, r3
/* 8014BB28  7C 9D 23 78 */	mr r29, r4
/* 8014BB2C  7C DE 33 78 */	mr r30, r6
/* 8014BB30  3B E0 00 00 */	li r31, 0
/* 8014BB34  7C A3 2B 78 */	mr r3, r5
/* 8014BB38  4B FF F4 D9 */	bl getDistTable__12dAttention_cFi
/* 8014BB3C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8014BB40  7F C3 F3 78 */	mr r3, r30
/* 8014BB44  4B FF F4 CD */	bl getDistTable__12dAttention_cFi
/* 8014BB48  C3 C3 00 00 */	lfs f30, 0(r3)
/* 8014BB4C  7F 83 E3 78 */	mr r3, r28
/* 8014BB50  7F A4 EB 78 */	mr r4, r29
/* 8014BB54  4B EC EE 11 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8014BB58  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8014BB5C  40 80 00 0C */	bge lbl_8014BB68
/* 8014BB60  38 60 00 00 */	li r3, 0
/* 8014BB64  48 00 00 64 */	b lbl_8014BBC8
lbl_8014BB68:
/* 8014BB68  EC 41 F8 28 */	fsubs f2, f1, f31
/* 8014BB6C  EF DE F8 28 */	fsubs f30, f30, f31
/* 8014BB70  C0 02 9A 78 */	lfs f0, lit_7242(r2)
/* 8014BB74  EF DE 00 24 */	fdivs f30, f30, f0
/* 8014BB78  38 80 00 00 */	li r4, 0
/* 8014BB7C  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8014BB80  3C 60 43 30 */	lis r3, 0x4330
/* 8014BB84  38 00 00 05 */	li r0, 5
/* 8014BB88  7C 09 03 A6 */	mtctr r0
lbl_8014BB8C:
/* 8014BB8C  38 04 00 01 */	addi r0, r4, 1
/* 8014BB90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014BB94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014BB98  90 61 00 08 */	stw r3, 8(r1)
/* 8014BB9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8014BBA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014BBA4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8014BBA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8014BBAC  40 80 00 0C */	bge lbl_8014BBB8
/* 8014BBB0  7F E3 FB 78 */	mr r3, r31
/* 8014BBB4  48 00 00 14 */	b lbl_8014BBC8
lbl_8014BBB8:
/* 8014BBB8  38 84 00 01 */	addi r4, r4, 1
/* 8014BBBC  3B FF 00 01 */	addi r31, r31, 1
/* 8014BBC0  42 00 FF CC */	bdnz lbl_8014BB8C
/* 8014BBC4  7F E3 FB 78 */	mr r3, r31
lbl_8014BBC8:
/* 8014BBC8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8014BBCC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8014BBD0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8014BBD4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8014BBD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8014BBDC  48 21 66 49 */	bl _restgpr_28
/* 8014BBE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8014BBE4  7C 08 03 A6 */	mtlr r0
/* 8014BBE8  38 21 00 40 */	addi r1, r1, 0x40
/* 8014BBEC  4E 80 00 20 */	blr 
