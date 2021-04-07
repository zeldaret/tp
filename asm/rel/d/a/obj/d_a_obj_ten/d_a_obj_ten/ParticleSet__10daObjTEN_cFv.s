lbl_80D0A154:
/* 80D0A154  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D0A158  7C 08 02 A6 */	mflr r0
/* 80D0A15C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D0A160  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D0A164  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D0A168  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D0A16C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D0A170  7C 7F 1B 78 */	mr r31, r3
/* 80D0A174  C0 43 06 18 */	lfs f2, 0x618(r3)
/* 80D0A178  80 03 06 1C */	lwz r0, 0x61c(r3)
/* 80D0A17C  3C 60 80 D1 */	lis r3, lit_4458@ha /* 0x80D0B9B0@ha */
/* 80D0A180  C8 23 B9 B0 */	lfd f1, lit_4458@l(r3)  /* 0x80D0B9B0@l */
/* 80D0A184  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0A188  3C 00 43 30 */	lis r0, 0x4330
/* 80D0A18C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D0A190  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80D0A194  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D0A198  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D0A19C  40 81 00 24 */	ble lbl_80D0A1C0
/* 80D0A1A0  38 7F 06 20 */	addi r3, r31, 0x620
/* 80D0A1A4  3C 80 80 D1 */	lis r4, lit_3939@ha /* 0x80D0B93C@ha */
/* 80D0A1A8  C0 24 B9 3C */	lfs f1, lit_3939@l(r4)  /* 0x80D0B93C@l */
/* 80D0A1AC  3C 80 80 D1 */	lis r4, lit_3775@ha /* 0x80D0B8F0@ha */
/* 80D0A1B0  C0 44 B8 F0 */	lfs f2, lit_3775@l(r4)  /* 0x80D0B8F0@l */
/* 80D0A1B4  FC 60 10 90 */	fmr f3, f2
/* 80D0A1B8  4B 56 58 85 */	bl cLib_addCalc2__FPffff
/* 80D0A1BC  48 00 00 1C */	b lbl_80D0A1D8
lbl_80D0A1C0:
/* 80D0A1C0  38 7F 06 20 */	addi r3, r31, 0x620
/* 80D0A1C4  3C 80 80 D1 */	lis r4, lit_3775@ha /* 0x80D0B8F0@ha */
/* 80D0A1C8  C0 24 B8 F0 */	lfs f1, lit_3775@l(r4)  /* 0x80D0B8F0@l */
/* 80D0A1CC  FC 40 08 90 */	fmr f2, f1
/* 80D0A1D0  FC 60 08 90 */	fmr f3, f1
/* 80D0A1D4  4B 56 58 69 */	bl cLib_addCalc2__FPffff
lbl_80D0A1D8:
/* 80D0A1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0A1DC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0A1E0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D0A1E4  38 00 00 FF */	li r0, 0xff
/* 80D0A1E8  90 01 00 08 */	stw r0, 8(r1)
/* 80D0A1EC  38 80 00 00 */	li r4, 0
/* 80D0A1F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D0A1F4  38 00 FF FF */	li r0, -1
/* 80D0A1F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0A1FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D0A200  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D0A204  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D0A208  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D0A20C  38 A0 00 00 */	li r5, 0
/* 80D0A210  38 C0 0A 1B */	li r6, 0xa1b
/* 80D0A214  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80D0A218  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D0A21C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D0A220  39 40 00 00 */	li r10, 0
/* 80D0A224  3D 60 80 D1 */	lis r11, lit_3775@ha /* 0x80D0B8F0@ha */
/* 80D0A228  C0 2B B8 F0 */	lfs f1, lit_3775@l(r11)  /* 0x80D0B8F0@l */
/* 80D0A22C  4B 34 32 A1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D0A230  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80D0A234  C3 FF 06 20 */	lfs f31, 0x620(r31)
/* 80D0A238  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80D0A23C  38 63 02 10 */	addi r3, r3, 0x210
/* 80D0A240  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D0A244  4B 34 16 D5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80D0A248  28 03 00 00 */	cmplwi r3, 0
/* 80D0A24C  41 82 00 0C */	beq lbl_80D0A258
/* 80D0A250  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80D0A254  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80D0A258:
/* 80D0A258  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D0A25C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D0A260  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D0A264  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D0A268  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D0A26C  7C 08 03 A6 */	mtlr r0
/* 80D0A270  38 21 00 40 */	addi r1, r1, 0x40
/* 80D0A274  4E 80 00 20 */	blr 
