lbl_80D1A524:
/* 80D1A524  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1A528  7C 08 02 A6 */	mflr r0
/* 80D1A52C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1A530  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D1A534  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D1A538  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D1A53C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D1A540  7C 7F 1B 78 */	mr r31, r3
/* 80D1A544  C0 43 07 50 */	lfs f2, 0x750(r3)
/* 80D1A548  80 03 07 54 */	lwz r0, 0x754(r3)
/* 80D1A54C  3C 60 80 D2 */	lis r3, lit_4347@ha
/* 80D1A550  C8 23 B7 B8 */	lfd f1, lit_4347@l(r3)
/* 80D1A554  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1A558  3C 00 43 30 */	lis r0, 0x4330
/* 80D1A55C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D1A560  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80D1A564  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1A568  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D1A56C  40 81 00 24 */	ble lbl_80D1A590
/* 80D1A570  38 7F 07 58 */	addi r3, r31, 0x758
/* 80D1A574  3C 80 80 D2 */	lis r4, lit_3942@ha
/* 80D1A578  C0 24 B7 30 */	lfs f1, lit_3942@l(r4)
/* 80D1A57C  3C 80 80 D2 */	lis r4, lit_3776@ha
/* 80D1A580  C0 44 B6 DC */	lfs f2, lit_3776@l(r4)
/* 80D1A584  FC 60 10 90 */	fmr f3, f2
/* 80D1A588  4B 55 54 B4 */	b cLib_addCalc2__FPffff
/* 80D1A58C  48 00 00 1C */	b lbl_80D1A5A8
lbl_80D1A590:
/* 80D1A590  38 7F 07 58 */	addi r3, r31, 0x758
/* 80D1A594  3C 80 80 D2 */	lis r4, lit_3776@ha
/* 80D1A598  C0 24 B6 DC */	lfs f1, lit_3776@l(r4)
/* 80D1A59C  FC 40 08 90 */	fmr f2, f1
/* 80D1A5A0  FC 60 08 90 */	fmr f3, f1
/* 80D1A5A4  4B 55 54 98 */	b cLib_addCalc2__FPffff
lbl_80D1A5A8:
/* 80D1A5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1A5AC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D1A5B0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D1A5B4  38 00 00 FF */	li r0, 0xff
/* 80D1A5B8  90 01 00 08 */	stw r0, 8(r1)
/* 80D1A5BC  38 80 00 00 */	li r4, 0
/* 80D1A5C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D1A5C4  38 00 FF FF */	li r0, -1
/* 80D1A5C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D1A5CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D1A5D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1A5D4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D1A5D8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D1A5DC  38 A0 00 00 */	li r5, 0
/* 80D1A5E0  38 C0 0A 1B */	li r6, 0xa1b
/* 80D1A5E4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80D1A5E8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D1A5EC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D1A5F0  39 40 00 00 */	li r10, 0
/* 80D1A5F4  3D 60 80 D2 */	lis r11, lit_3776@ha
/* 80D1A5F8  C0 2B B6 DC */	lfs f1, lit_3776@l(r11)
/* 80D1A5FC  4B 33 2E D0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D1A600  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80D1A604  C3 FF 07 58 */	lfs f31, 0x758(r31)
/* 80D1A608  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D1A60C  38 63 02 10 */	addi r3, r3, 0x210
/* 80D1A610  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D1A614  4B 33 13 04 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80D1A618  28 03 00 00 */	cmplwi r3, 0
/* 80D1A61C  41 82 00 0C */	beq lbl_80D1A628
/* 80D1A620  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80D1A624  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80D1A628:
/* 80D1A628  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D1A62C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D1A630  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D1A634  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D1A638  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1A63C  7C 08 03 A6 */	mtlr r0
/* 80D1A640  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1A644  4E 80 00 20 */	blr 
